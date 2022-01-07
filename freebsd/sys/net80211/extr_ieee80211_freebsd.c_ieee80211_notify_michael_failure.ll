; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_michael_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_michael_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.ieee80211_frame = type { i32, i32 }
%struct.ieee80211_michael_event = type { i32, i32, i32, i32 }

@IEEE80211_MSG_CRYPTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"michael MIC verification failed <keyix %u>\00", align 1
@IEEE80211_CIPHER_TKIP = common dso_local global i32 0, align 4
@RTM_IEEE80211_MICHAEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_notify_michael_failure(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ieee80211_michael_event, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %7, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %13 = load i32, i32* @IEEE80211_MSG_CRYPTO, align 4
  %14 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %25 = icmp ne %struct.ifnet* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ieee80211_michael_event, %struct.ieee80211_michael_event* %8, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IEEE80211_ADDR_COPY(i32 %28, i32 %31)
  %33 = getelementptr inbounds %struct.ieee80211_michael_event, %struct.ieee80211_michael_event* %8, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IEEE80211_ADDR_COPY(i32 %34, i32 %37)
  %39 = load i32, i32* @IEEE80211_CIPHER_TKIP, align 4
  %40 = getelementptr inbounds %struct.ieee80211_michael_event, %struct.ieee80211_michael_event* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.ieee80211_michael_event, %struct.ieee80211_michael_event* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CURVNET_SET(i32 %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %48 = load i32, i32* @RTM_IEEE80211_MICHAEL, align 4
  %49 = call i32 @rt_ieee80211msg(%struct.ifnet* %47, i32 %48, %struct.ieee80211_michael_event* %8, i32 16)
  %50 = call i32 (...) @CURVNET_RESTORE()
  br label %51

51:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap*, i32, i32, i8*, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @rt_ieee80211msg(%struct.ifnet*, i32, %struct.ieee80211_michael_event*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
