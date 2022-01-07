; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_get_htrate_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_get_htrate_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_htrateset = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_htrateset*)* @get_htrate_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_htrate_bitmap(%struct.ieee80211_htrateset* %0) #0 {
  %2 = alloca %struct.ieee80211_htrateset*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ieee80211_htrateset* %0, %struct.ieee80211_htrateset** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %5

35:                                               ; preds = %5
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
