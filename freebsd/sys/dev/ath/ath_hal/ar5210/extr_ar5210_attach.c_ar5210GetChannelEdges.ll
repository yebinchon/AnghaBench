; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_attach.c_ar5210GetChannelEdges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_attach.c_ar5210GetChannelEdges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32, i32*, i32*)* @ar5210GetChannelEdges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5210GetChannelEdges(%struct.ath_hal* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  store i32 5120, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 5430, i32* %16, align 4
  %17 = load i32, i32* @AH_TRUE, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @AH_FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
