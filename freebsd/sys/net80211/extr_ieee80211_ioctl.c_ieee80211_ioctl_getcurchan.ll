; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getcurchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_getcurchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.TYPE_2__*, %struct.ieee80211com* }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211com = type { %struct.ieee80211_channel* }
%struct.ieee80211req = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IEEE80211_S_SLEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_getcurchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_getcurchan(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 2
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %6, align 8
  %11 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IEEE80211_S_RUN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IEEE80211_S_SLEEP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %18
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %34, align 8
  store %struct.ieee80211_channel* %35, %struct.ieee80211_channel** %7, align 8
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %38, align 8
  store %struct.ieee80211_channel* %39, %struct.ieee80211_channel** %7, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %42 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @copyout(%struct.ieee80211_channel* %41, i32 %44, i32 4)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @copyout(%struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
