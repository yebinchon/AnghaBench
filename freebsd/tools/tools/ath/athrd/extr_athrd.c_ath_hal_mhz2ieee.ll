; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_ath_hal_mhz2ieee.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_ath_hal_mhz2ieee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_mhz2ieee(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 2484
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 14, i32* %4, align 4
  br label %95

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 2484
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 2407
  %22 = sdiv i32 %21, 5
  store i32 %22, i32* %4, align 4
  br label %95

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 2512
  %26 = sdiv i32 %25, 20
  %27 = add nsw i32 15, %26
  store i32 %27, i32* %4, align 4
  br label %95

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @IS_CHAN_IN_PUBLIC_SAFETY_BAND(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mappsb(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %95

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 5000
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 4000
  %52 = sdiv i32 %51, 5
  store i32 %52, i32* %4, align 4
  br label %95

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 5000
  %56 = sdiv i32 %55, 5
  store i32 %56, i32* %4, align 4
  br label %95

57:                                               ; preds = %28
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 2484
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 14, i32* %4, align 4
  br label %95

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 2484
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 2407
  %67 = sdiv i32 %66, 5
  store i32 %67, i32* %4, align 4
  br label %95

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 5000
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @IS_CHAN_IN_PUBLIC_SAFETY_BAND(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @mappsb(i32 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %95

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp sgt i32 %80, 4900
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 4000
  %85 = sdiv i32 %84, 5
  store i32 %85, i32* %4, align 4
  br label %95

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 2512
  %89 = sdiv i32 %88, 20
  %90 = add nsw i32 15, %89
  store i32 %90, i32* %4, align 4
  br label %95

91:                                               ; preds = %68
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 5000
  %94 = sdiv i32 %93, 5
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %86, %82, %75, %64, %60, %53, %49, %37, %23, %19, %15
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @IS_CHAN_IN_PUBLIC_SAFETY_BAND(i32) #1

declare dso_local i32 @mappsb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
