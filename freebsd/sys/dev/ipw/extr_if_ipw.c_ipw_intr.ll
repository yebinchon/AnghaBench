; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32 }

@IPW_CSR_INTR = common dso_local global i32 0, align 4
@IPW_CSR_INTR_MASK = common dso_local global i32 0, align 4
@IPW_INTR_FATAL_ERROR = common dso_local global i32 0, align 4
@IPW_INTR_PARITY_ERROR = common dso_local global i32 0, align 4
@IPW_INTR_FW_INIT_DONE = common dso_local global i32 0, align 4
@IPW_INTR_RX_TRANSFER = common dso_local global i32 0, align 4
@IPW_INTR_TX_TRANSFER = common dso_local global i32 0, align 4
@IPW_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipw_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ipw_softc*
  store %struct.ipw_softc* %6, %struct.ipw_softc** %3, align 8
  %7 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %8 = call i32 @IPW_LOCK(%struct.ipw_softc* %7)
  %9 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %10 = load i32, i32* @IPW_CSR_INTR, align 4
  %11 = call i32 @CSR_READ_4(%struct.ipw_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %1
  br label %64

18:                                               ; preds = %14
  %19 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %20 = load i32, i32* @IPW_CSR_INTR_MASK, align 4
  %21 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %19, i32 %20, i32 0)
  %22 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %23 = load i32, i32* @IPW_CSR_INTR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IPW_INTR_FATAL_ERROR, align 4
  %28 = load i32, i32* @IPW_INTR_PARITY_ERROR, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %34 = call i32 @ipw_fatal_error_intr(%struct.ipw_softc* %33)
  br label %64

35:                                               ; preds = %18
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IPW_INTR_FW_INIT_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %42 = call i32 @wakeup(%struct.ipw_softc* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IPW_INTR_RX_TRANSFER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %50 = call i32 @ipw_rx_intr(%struct.ipw_softc* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IPW_INTR_TX_TRANSFER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %58 = call i32 @ipw_tx_intr(%struct.ipw_softc* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %61 = load i32, i32* @IPW_CSR_INTR_MASK, align 4
  %62 = load i32, i32* @IPW_INTR_MASK, align 4
  %63 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %32, %17
  %65 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %66 = call i32 @IPW_UNLOCK(%struct.ipw_softc* %65)
  ret void
}

declare dso_local i32 @IPW_LOCK(%struct.ipw_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.ipw_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @ipw_fatal_error_intr(%struct.ipw_softc*) #1

declare dso_local i32 @wakeup(%struct.ipw_softc*) #1

declare dso_local i32 @ipw_rx_intr(%struct.ipw_softc*) #1

declare dso_local i32 @ipw_tx_intr(%struct.ipw_softc*) #1

declare dso_local i32 @IPW_UNLOCK(%struct.ipw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
