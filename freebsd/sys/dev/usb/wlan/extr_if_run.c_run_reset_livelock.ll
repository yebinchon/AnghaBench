; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_reset_livelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_reset_livelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RT2860_DEBUG = common dso_local global i32 0, align 4
@RUN_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"debug reg %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CTS-to-self livelock detected\0A\00", align 1
@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_MAC_SRST = common dso_local global i32 0, align 4
@RT2860_MAC_RX_EN = common dso_local global i32 0, align 4
@RT2860_MAC_TX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_reset_livelock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_reset_livelock(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %4 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %4, i32 %5)
  %7 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %8 = load i32, i32* @RT2860_DEBUG, align 4
  %9 = call i32 @run_read(%struct.run_softc* %7, i32 %8, i32* %3)
  %10 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %11 = load i32, i32* @RUN_DEBUG_RESET, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %10, i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 536870912
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 160
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %23 = load i32, i32* @RUN_DEBUG_RESET, align 4
  %24 = call i32 (%struct.run_softc*, i32, i8*, ...) @RUN_DPRINTF(%struct.run_softc* %22, i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %26 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %27 = load i32, i32* @RT2860_MAC_SRST, align 4
  %28 = call i32 @run_write(%struct.run_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %30 = call i32 @run_delay(%struct.run_softc* %29, i32 1)
  %31 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %32 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %33 = load i32, i32* @RT2860_MAC_RX_EN, align 4
  %34 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @run_write(%struct.run_softc* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %21, %17, %1
  ret void
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, ...) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
