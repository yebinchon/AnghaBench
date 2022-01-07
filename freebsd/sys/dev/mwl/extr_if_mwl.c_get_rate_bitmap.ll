; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_get_rate_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_get_rate_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rateset = type { i32, i32* }

@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rateset*)* @get_rate_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rate_bitmap(%struct.ieee80211_rateset* %0) #0 {
  %2 = alloca %struct.ieee80211_rateset*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ieee80211_rateset* %0, %struct.ieee80211_rateset** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %5
  %12 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %60 [
    i32 2, label %21
    i32 4, label %24
    i32 11, label %27
    i32 22, label %30
    i32 44, label %33
    i32 12, label %36
    i32 18, label %39
    i32 24, label %42
    i32 36, label %45
    i32 48, label %48
    i32 72, label %51
    i32 96, label %54
    i32 108, label %57
  ]

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 2
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, 4
  store i32 %29, i32* %3, align 4
  br label %60

30:                                               ; preds = %11
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 8
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %11
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, 16
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %11
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, 32
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %11
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, 64
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %11
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, 128
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %11
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, 256
  store i32 %47, i32* %3, align 4
  br label %60

48:                                               ; preds = %11
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, 512
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %11
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, 1024
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %11
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, 2048
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %11
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, 4096
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %11, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %5

64:                                               ; preds = %5
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
