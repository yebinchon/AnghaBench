; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32 }

@RT2560_CSR8 = common dso_local global i32 0, align 4
@RT2560_F_RUNNING = common dso_local global i32 0, align 4
@RT2560_CSR7 = common dso_local global i32 0, align 4
@RT2560_BEACON_EXPIRE = common dso_local global i32 0, align 4
@RT2560_WAKEUP_EXPIRE = common dso_local global i32 0, align 4
@RT2560_ENCRYPTION_DONE = common dso_local global i32 0, align 4
@RT2560_TX_DONE = common dso_local global i32 0, align 4
@RT2560_PRIO_DONE = common dso_local global i32 0, align 4
@RT2560_DECRYPTION_DONE = common dso_local global i32 0, align 4
@RT2560_RX_DONE = common dso_local global i32 0, align 4
@RT2560_INTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2560_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rt2560_softc*
  store %struct.rt2560_softc* %6, %struct.rt2560_softc** %3, align 8
  %7 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %8 = call i32 @RAL_LOCK(%struct.rt2560_softc* %7)
  %9 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %10 = load i32, i32* @RT2560_CSR8, align 4
  %11 = call i32 @RAL_WRITE(%struct.rt2560_softc* %9, i32 %10, i32 -1)
  %12 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RT2560_F_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %20 = call i32 @RAL_UNLOCK(%struct.rt2560_softc* %19)
  br label %93

21:                                               ; preds = %1
  %22 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %23 = load i32, i32* @RT2560_CSR7, align 4
  %24 = call i32 @RAL_READ(%struct.rt2560_softc* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %26 = load i32, i32* @RT2560_CSR7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @RAL_WRITE(%struct.rt2560_softc* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @RT2560_BEACON_EXPIRE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %35 = call i32 @rt2560_beacon_expire(%struct.rt2560_softc* %34)
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RT2560_WAKEUP_EXPIRE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %43 = call i32 @rt2560_wakeup_expire(%struct.rt2560_softc* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @RT2560_ENCRYPTION_DONE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %51 = call i32 @rt2560_encryption_intr(%struct.rt2560_softc* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @RT2560_TX_DONE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %59 = call i32 @rt2560_tx_intr(%struct.rt2560_softc* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @RT2560_PRIO_DONE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %67 = call i32 @rt2560_prio_intr(%struct.rt2560_softc* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @RT2560_DECRYPTION_DONE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %75 = call i32 @rt2560_decryption_intr(%struct.rt2560_softc* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @RT2560_RX_DONE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %83 = call i32 @rt2560_rx_intr(%struct.rt2560_softc* %82)
  %84 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %85 = call i32 @rt2560_encryption_intr(%struct.rt2560_softc* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %88 = load i32, i32* @RT2560_CSR8, align 4
  %89 = load i32, i32* @RT2560_INTR_MASK, align 4
  %90 = call i32 @RAL_WRITE(%struct.rt2560_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %92 = call i32 @RAL_UNLOCK(%struct.rt2560_softc* %91)
  br label %93

93:                                               ; preds = %86, %18
  ret void
}

declare dso_local i32 @RAL_LOCK(%struct.rt2560_softc*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2560_softc*) #1

declare dso_local i32 @RAL_READ(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @rt2560_beacon_expire(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_wakeup_expire(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_encryption_intr(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_tx_intr(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_prio_intr(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_decryption_intr(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_rx_intr(%struct.rt2560_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
