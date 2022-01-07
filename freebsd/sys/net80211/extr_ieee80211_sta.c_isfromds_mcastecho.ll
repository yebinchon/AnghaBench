; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_isfromds_mcastecho.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_isfromds_mcastecho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32 }
%struct.ieee80211_frame = type { i32, i32 }

@IEEE80211_M_STA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"wrong mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_frame*)* @isfromds_mcastecho to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isfromds_mcastecho(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IEEE80211_M_STA, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IEEE80211_IS_MULTICAST(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IEEE80211_ADDR_EQ(i32 %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_IS_MULTICAST(i32) #1

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
