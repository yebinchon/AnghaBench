; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, i32, i32, i32, %struct.mwl_hal* }
%struct.mwl_hal = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unable to reset hardware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to start recv logic\0A\00", align 1
@MACREG_A2HRIC_BIT_RX_RDY = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_TX_DONE = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_OPC_DONE = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_ICV_ERROR = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_RADAR_DETECT = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_CHAN_SWITCH = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_BA_WATCHDOG = common dso_local global i32 0, align 4
@MACREQ_A2HRIC_BIT_TX_ACK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@mwl_watchdog = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_MAC_EVENT = common dso_local global i32 0, align 4
@MACREG_A2HRIC_BIT_QUEUE_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*)* @mwl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_init(%struct.mwl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwl_softc*, align 8
  %4 = alloca %struct.mwl_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.mwl_softc* %0, %struct.mwl_softc** %3, align 8
  %6 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %6, i32 0, i32 4
  %8 = load %struct.mwl_hal*, %struct.mwl_hal** %7, align 8
  store %struct.mwl_hal* %8, %struct.mwl_hal** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %10 = call i32 @MWL_LOCK_ASSERT(%struct.mwl_softc* %9)
  %11 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %12 = call i32 @mwl_stop(%struct.mwl_softc* %11)
  %13 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %14 = call i32 @mwl_hal_reset(%struct.mwl_softc* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %24 = call i32 @mwl_startrecv(%struct.mwl_softc* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load i32, i32* @MACREG_A2HRIC_BIT_RX_RDY, align 4
  %35 = load i32, i32* @MACREG_A2HRIC_BIT_TX_DONE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MACREG_A2HRIC_BIT_OPC_DONE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MACREG_A2HRIC_BIT_ICV_ERROR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MACREG_A2HRIC_BIT_RADAR_DETECT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MACREG_A2HRIC_BIT_CHAN_SWITCH, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MACREG_A2HRIC_BIT_BA_WATCHDOG, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MACREQ_A2HRIC_BIT_TX_ACK, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.mwl_hal*, %struct.mwl_hal** %4, align 8
  %54 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mwl_hal_intrset(%struct.mwl_hal* %53, i32 %56)
  %58 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %58, i32 0, i32 2
  %60 = load i32, i32* @hz, align 4
  %61 = load i32, i32* @mwl_watchdog, align 4
  %62 = load %struct.mwl_softc*, %struct.mwl_softc** %3, align 8
  %63 = call i32 @callout_reset(i32* %59, i32 %60, i32 %61, %struct.mwl_softc* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %33, %27, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @MWL_LOCK_ASSERT(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_stop(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_hal_reset(%struct.mwl_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mwl_startrecv(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_hal_intrset(%struct.mwl_hal*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.mwl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
