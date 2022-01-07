; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i64, i64, i64, i64, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"firmware stuck in state %d, resetting\0A\00", align 1
@IWI_FW_SCANNING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"firmware command timeout, resetting\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iwi_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.iwi_softc*
  store %struct.iwi_softc* %6, %struct.iwi_softc** %3, align 8
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %7, i32 0, i32 7
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %10 = call i32 @IWI_LOCK_ASSERT(%struct.iwi_softc* %9)
  %11 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @counter_u64_add(i32 %28, i32 1)
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %31 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %31, i32 0, i32 5
  %33 = call i32 @ieee80211_runtask(%struct.ieee80211com* %30, i32* %32)
  br label %34

34:                                               ; preds = %21, %15
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %51 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IWI_FW_SCANNING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 0
  %62 = call i32 @TAILQ_FIRST(i32* %61)
  %63 = call i32 @ieee80211_cancel_scan(i32 %62)
  br label %64

64:                                               ; preds = %59, %46
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %66 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %66, i32 0, i32 5
  %68 = call i32 @ieee80211_runtask(%struct.ieee80211com* %65, i32* %67)
  %69 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %70 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %69, i32 0, i32 1
  store i64 3, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %40
  br label %72

72:                                               ; preds = %71, %35
  %73 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %79 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %85 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %89 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %90 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %89, i32 0, i32 5
  %91 = call i32 @ieee80211_runtask(%struct.ieee80211com* %88, i32* %90)
  br label %92

92:                                               ; preds = %83, %77
  br label %93

93:                                               ; preds = %92, %72
  %94 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %95 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %94, i32 0, i32 4
  %96 = load i32, i32* @hz, align 4
  %97 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %98 = call i32 @callout_reset(i32* %95, i32 %96, void (i8*)* @iwi_watchdog, %struct.iwi_softc* %97)
  ret void
}

declare dso_local i32 @IWI_LOCK_ASSERT(%struct.iwi_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ieee80211_cancel_scan(i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
