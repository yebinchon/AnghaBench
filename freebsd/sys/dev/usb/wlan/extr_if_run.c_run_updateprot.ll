; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_updateprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_updateprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.run_softc* }
%struct.run_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ieee80211com*, i32 }

@RUN_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmdq_store=%d\0A\00", align 1
@run_updateprot_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @run_updateprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_updateprot(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 0
  %7 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  store %struct.run_softc* %7, %struct.run_softc** %3, align 8
  %8 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %9 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %8, i32 0, i32 2
  %10 = call i64 @RUN_CMDQ_GET(i32* %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %12 = load i32, i32* @RUN_DEBUG_BEACON, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @RUN_DPRINTF(%struct.run_softc* %11, i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @run_updateprot_cb, align 4
  %16 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %17 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %15, i32* %21, align 8
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %23 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %24 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.ieee80211com* %22, %struct.ieee80211com** %28, align 8
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %30 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %31 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %30, i32 0, i32 0
  %32 = call i32 @ieee80211_runtask(%struct.ieee80211com* %29, i32* %31)
  ret void
}

declare dso_local i64 @RUN_CMDQ_GET(i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i64) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
