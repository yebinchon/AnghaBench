; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_phy.c_ieee80211_rate2plcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_phy.c_ieee80211_rate2plcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_rate2plcp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %20 [
    i32 12, label %7
    i32 18, label %8
    i32 24, label %9
    i32 36, label %10
    i32 48, label %11
    i32 72, label %12
    i32 96, label %13
    i32 108, label %14
    i32 2, label %15
    i32 4, label %16
    i32 11, label %17
    i32 22, label %18
    i32 44, label %19
  ]

7:                                                ; preds = %2
  store i32 11, i32* %3, align 4
  br label %21

8:                                                ; preds = %2
  store i32 15, i32* %3, align 4
  br label %21

9:                                                ; preds = %2
  store i32 10, i32* %3, align 4
  br label %21

10:                                               ; preds = %2
  store i32 14, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  store i32 9, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  store i32 13, i32* %3, align 4
  br label %21

13:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  store i32 12, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  store i32 10, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  store i32 20, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  store i32 55, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  store i32 110, i32* %3, align 4
  br label %21

19:                                               ; preds = %2
  store i32 220, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
