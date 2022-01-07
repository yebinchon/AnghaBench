; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_getWirelessModes.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_getWirelessModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@Amode = common dso_local global i64 0, align 8
@HAL_MODE_11A = common dso_local global i32 0, align 4
@turbo5Disable = common dso_local global i32 0, align 4
@HAL_MODE_TURBO = common dso_local global i32 0, align 4
@Bmode = common dso_local global i64 0, align 8
@HAL_MODE_11B = common dso_local global i32 0, align 4
@Gmode = common dso_local global i64 0, align 8
@HAL_MODE_11G = common dso_local global i32 0, align 4
@turbo2Disable = common dso_local global i32 0, align 4
@HAL_MODE_108G = common dso_local global i32 0, align 4
@HT20mode = common dso_local global i64 0, align 8
@HAL_MODE_11NG_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT20 = common dso_local global i32 0, align 4
@HT40mode = common dso_local global i64 0, align 8
@HAL_MODE_11NG_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT40MINUS = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*)* @getWirelessModes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getWirelessModes(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @Amode, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* @HAL_MODE_11A, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @turbo5Disable, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @HAL_MODE_TURBO, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i64, i64* @Bmode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @HAL_MODE_11B, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* @Gmode, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* @HAL_MODE_11G, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @turbo2Disable, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @HAL_MODE_108G, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i64, i64* @HT20mode, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @HAL_MODE_11NG_HT20, align 4
  %41 = load i32, i32* @HAL_MODE_11NA_HT20, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i64, i64* @HT40mode, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* @HAL_MODE_11NG_HT40PLUS, align 4
  %50 = load i32, i32* @HAL_MODE_11NA_HT40PLUS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @HAL_MODE_11NG_HT40MINUS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @HAL_MODE_11NA_HT40MINUS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
