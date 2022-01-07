; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_ioctl_set80211.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_ioctl_set80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211_hwmp_state* }
%struct.ieee80211_hwmp_state = type { i32, i32 }
%struct.ieee80211req = type { i32, i32 }

@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @hwmp_ioctl_set80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmp_ioctl_set80211(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
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
  br label %64

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %19 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %60 [
    i32 128, label %22
    i32 129, label %42
  ]

22:                                               ; preds = %18
  %23 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %27
  %35 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %41 = call i32 @hwmp_rootmode_setup(%struct.ieee80211vap* %40)
  br label %62

42:                                               ; preds = %18
  %43 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 255
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %47
  %55 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %62

60:                                               ; preds = %18
  %61 = load i32, i32* @ENOSYS, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %54, %34
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %52, %32, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @hwmp_rootmode_setup(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
