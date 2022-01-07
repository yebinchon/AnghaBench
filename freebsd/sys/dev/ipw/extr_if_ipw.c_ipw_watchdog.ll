; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i64, i64, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@taskqueue_swi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Scan timeout\0A\00", align 1
@IPW_FLAG_SCANNING = common dso_local global i32 0, align 4
@IPW_FLAG_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipw_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ipw_softc*
  store %struct.ipw_softc* %6, %struct.ipw_softc** %3, align 8
  %7 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %7, i32 0, i32 6
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %10 = call i32 @IPW_LOCK_ASSERT(%struct.ipw_softc* %9)
  %11 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @counter_u64_add(i32 %28, i32 1)
  %30 = load i32, i32* @taskqueue_swi, align 4
  %31 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %31, i32 0, i32 4
  %33 = call i32 @taskqueue_enqueue(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %21, %15
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IPW_FLAG_SCANNING, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %56 = call i32 @IPW_UNLOCK(%struct.ipw_softc* %55)
  %57 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %57, i32 0, i32 0
  %59 = call i32 @TAILQ_FIRST(i32* %58)
  %60 = call i32 @ieee80211_scan_done(i32 %59)
  %61 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %62 = call i32 @IPW_LOCK(%struct.ipw_softc* %61)
  %63 = load i32, i32* @IPW_FLAG_SCANNING, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %54, %46
  br label %70

70:                                               ; preds = %69, %40
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IPW_FLAG_RUNNING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %79, i32 0, i32 3
  %81 = load i32, i32* @hz, align 4
  %82 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %83 = call i32 @callout_reset(i32* %80, i32 %81, void (i8*)* @ipw_watchdog, %struct.ipw_softc* %82)
  br label %84

84:                                               ; preds = %78, %71
  ret void
}

declare dso_local i32 @IPW_LOCK_ASSERT(%struct.ipw_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @IPW_UNLOCK(%struct.ipw_softc*) #1

declare dso_local i32 @ieee80211_scan_done(i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @IPW_LOCK(%struct.ipw_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ipw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
