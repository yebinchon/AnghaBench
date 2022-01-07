; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_key_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_key_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.run_softc* }
%struct.run_softc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_key*, %struct.ieee80211vap*, i32*, i32 }
%struct.ieee80211_key = type { i32 }

@RUN_DEBUG_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cmdq_store=%d\0A\00", align 1
@run_key_set_cb = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@RUN_CMDQ_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_key*)* @run_key_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_key_set(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_key*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.run_softc*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %4, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 1
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %5, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load %struct.run_softc*, %struct.run_softc** %12, align 8
  store %struct.run_softc* %13, %struct.run_softc** %6, align 8
  %14 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %15 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %14, i32 0, i32 3
  %16 = call i64 @RUN_CMDQ_GET(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %18 = load i32, i32* @RUN_DEBUG_KEY, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @RUN_DPRINTF(%struct.run_softc* %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @run_key_set_cb, align 4
  %22 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %23 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %21, i32* %27, align 8
  %28 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %29 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %35 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %36 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store %struct.ieee80211vap* %34, %struct.ieee80211vap** %40, align 8
  %41 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %42 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %43 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.ieee80211_key* %41, %struct.ieee80211_key** %47, align 8
  %48 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %49 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IEEE80211_ADDR_COPY(i32 %54, i32 %57)
  %59 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %60 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %61 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %60, i32 0, i32 1
  %62 = call i32 @ieee80211_runtask(%struct.ieee80211com* %59, i32* %61)
  %63 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %2
  %69 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %70 = call i32 @RUN_LOCK(%struct.run_softc* %69)
  %71 = load i32, i32* @RUN_CMDQ_GO, align 4
  %72 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %73 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.run_softc*, %struct.run_softc** %6, align 8
  %75 = call i32 @RUN_UNLOCK(%struct.run_softc* %74)
  br label %76

76:                                               ; preds = %68, %2
  ret i32 1
}

declare dso_local i64 @RUN_CMDQ_GET(i32*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*, i64) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
