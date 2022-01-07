; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_shutdown_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_shutdown_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i64 }

@on = common dso_local global i32 0, align 4
@wd_in_shutdown = common dso_local global i32 0, align 4
@wd_shutdown_countdown = common dso_local global i64 0, align 8
@IPMI_SET_WD_ACTION_POWER_CYCLE = common dso_local global i32 0, align 4
@wd_timer_actions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @ipmi_shutdown_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_shutdown_event(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ipmi_softc*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ipmi_softc*
  store %struct.ipmi_softc* %9, %struct.ipmi_softc** %7, align 8
  %10 = load i32, i32* @on, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %35

13:                                               ; preds = %3
  store i32 1, i32* @wd_in_shutdown, align 4
  %14 = load i64, i64* @wd_shutdown_countdown, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %18 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %17, i64 0)
  %19 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %35

21:                                               ; preds = %13
  %22 = load i64, i64* @wd_shutdown_countdown, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* @IPMI_SET_WD_ACTION_POWER_CYCLE, align 4
  store i32 %25, i32* @wd_timer_actions, align 4
  %26 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %27 = load i64, i64* @wd_shutdown_countdown, align 8
  %28 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %26, i64 %27)
  %29 = load i64, i64* @wd_shutdown_countdown, align 8
  %30 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %31 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %33 = call i32 @ipmi_reset_watchdog(%struct.ipmi_softc* %32)
  br label %34

34:                                               ; preds = %24, %21
  br label %35

35:                                               ; preds = %12, %34, %16
  ret void
}

declare dso_local i32 @ipmi_set_watchdog(%struct.ipmi_softc*, i64) #1

declare dso_local i32 @ipmi_reset_watchdog(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
