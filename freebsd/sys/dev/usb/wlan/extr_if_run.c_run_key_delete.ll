; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_key_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.run_softc* }
%struct.run_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ieee80211_key, %struct.run_softc*, i32*, i32 }
%struct.ieee80211_key = type { i32, i32, i32 }

@RUN_DEBUG_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmdq_store=%d\0A\00", align 1
@run_key_delete_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_key*)* @run_key_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_key_delete(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_key*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.run_softc*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %4, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 0
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %5, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load %struct.run_softc*, %struct.run_softc** %13, align 8
  store %struct.run_softc* %14, %struct.run_softc** %6, align 8
  %15 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %16 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %15, i32 0, i32 2
  %17 = call i64 @RUN_CMDQ_GET(i32* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %19 = load i32, i32* @RUN_DEBUG_KEY, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @RUN_DPRINTF(%struct.run_softc* %18, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @run_key_delete_cb, align 4
  %23 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %24 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %22, i32* %28, align 8
  %29 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %30 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %36 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %37 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store %struct.run_softc* %35, %struct.run_softc** %41, align 8
  %42 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %43 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.ieee80211_key* %47, %struct.ieee80211_key** %7, align 8
  %48 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %64 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %65 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %64, i32 0, i32 0
  %66 = call i32 @ieee80211_runtask(%struct.ieee80211com* %63, i32* %65)
  ret i32 1
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
