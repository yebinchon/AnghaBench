; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_ioctl_get80211.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_ioctl_get80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211_hwmp_state* }
%struct.ieee80211_hwmp_state = type { i32, i32 }
%struct.ieee80211req = type { i32, i32 }

@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @hwmp_ioctl_get80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmp_ioctl_get80211(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211_hwmp_state*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %9, align 8
  store %struct.ieee80211_hwmp_state* %10, %struct.ieee80211_hwmp_state** %6, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOSYS, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %19 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %34 [
    i32 128, label %22
    i32 129, label %28
  ]

22:                                               ; preds = %18
  %23 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOSYS, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
