; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32, i32, i64 }

@WI_FLAGS_RUNNING = common dso_local global i32 0, align 4
@WI_INT_EN = common dso_local global i32 0, align 4
@WI_EVENT_ACK = common dso_local global i32 0, align 4
@WI_EVENT_STAT = common dso_local global i32 0, align 4
@WI_EV_RX = common dso_local global i32 0, align 4
@WI_EV_ALLOC = common dso_local global i32 0, align 4
@WI_EV_TX_EXC = common dso_local global i32 0, align 4
@WI_EV_INFO = common dso_local global i32 0, align 4
@WI_INTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.wi_softc*
  store %struct.wi_softc* %6, %struct.wi_softc** %3, align 8
  %7 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %8 = call i32 @WI_LOCK(%struct.wi_softc* %7)
  %9 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WI_FLAGS_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18, %13, %1
  %26 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %27 = load i32, i32* @WI_INT_EN, align 4
  %28 = call i32 @CSR_WRITE_2(%struct.wi_softc* %26, i32 %27, i32 0)
  %29 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %30 = load i32, i32* @WI_EVENT_ACK, align 4
  %31 = call i32 @CSR_WRITE_2(%struct.wi_softc* %29, i32 %30, i32 65535)
  %32 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %33 = call i32 @WI_UNLOCK(%struct.wi_softc* %32)
  br label %87

34:                                               ; preds = %18
  %35 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %36 = load i32, i32* @WI_INT_EN, align 4
  %37 = call i32 @CSR_WRITE_2(%struct.wi_softc* %35, i32 %36, i32 0)
  %38 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %39 = load i32, i32* @WI_EVENT_STAT, align 4
  %40 = call i32 @CSR_READ_2(%struct.wi_softc* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @WI_EV_RX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %47 = call i32 @wi_rx_intr(%struct.wi_softc* %46)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @WI_EV_ALLOC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %55 = call i32 @wi_tx_intr(%struct.wi_softc* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @WI_EV_TX_EXC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %63 = call i32 @wi_tx_ex_intr(%struct.wi_softc* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @WI_EV_INFO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %71 = call i32 @wi_info_intr(%struct.wi_softc* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %73, i32 0, i32 1
  %75 = call i32* @mbufq_first(i32* %74)
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %79 = call i32 @wi_start(%struct.wi_softc* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %82 = load i32, i32* @WI_INT_EN, align 4
  %83 = load i32, i32* @WI_INTRS, align 4
  %84 = call i32 @CSR_WRITE_2(%struct.wi_softc* %81, i32 %82, i32 %83)
  %85 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %86 = call i32 @WI_UNLOCK(%struct.wi_softc* %85)
  br label %87

87:                                               ; preds = %80, %25
  ret void
}

declare dso_local i32 @WI_LOCK(%struct.wi_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.wi_softc*, i32, i32) #1

declare dso_local i32 @WI_UNLOCK(%struct.wi_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.wi_softc*, i32) #1

declare dso_local i32 @wi_rx_intr(%struct.wi_softc*) #1

declare dso_local i32 @wi_tx_intr(%struct.wi_softc*) #1

declare dso_local i32 @wi_tx_ex_intr(%struct.wi_softc*) #1

declare dso_local i32 @wi_info_intr(%struct.wi_softc*) #1

declare dso_local i32* @mbufq_first(i32*) #1

declare dso_local i32 @wi_start(%struct.wi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
