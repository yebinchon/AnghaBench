; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_checktable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_checktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scanlist = type { i64*, i32 }
%struct.ieee80211_channel = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scanlist*, %struct.ieee80211_channel*)* @checktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checktable(%struct.scanlist* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scanlist*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.scanlist* %0, %struct.scanlist** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.scanlist*, %struct.scanlist** %4, align 8
  %9 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.scanlist*, %struct.scanlist** %4, align 8
  %16 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.scanlist*, %struct.scanlist** %4, align 8
  %21 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %41

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %13

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.scanlist*, %struct.scanlist** %4, align 8
  %39 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %38, i32 1
  store %struct.scanlist* %39, %struct.scanlist** %4, align 8
  br label %7

40:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
