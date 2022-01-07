; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_ieee2mhz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_ieee2mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_CHAN_GSM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HALF = common dso_local global i32 0, align 4
@IEEE80211_CHAN_QUARTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ieee2mhz(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IEEE80211_CHAN_GSM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = sdiv i32 %11, 10
  %13 = mul nsw i32 5, %12
  %14 = add nsw i32 907, %13
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 14
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 2484, i32* %3, align 4
  br label %87

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 14
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 5
  %30 = add nsw i32 2407, %29
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 15
  %34 = mul nsw i32 %33, 20
  %35 = add nsw i32 2512, %34
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %15
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %44 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %49, 37
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = mul nsw i32 %51, 5
  %53 = add nsw i32 4940, %52
  %54 = load i32, i32* %4, align 4
  %55 = srem i32 %54, 5
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 0
  %59 = add nsw i32 %53, %58
  store i32 %59, i32* %3, align 4
  br label %87

60:                                               ; preds = %41
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %61, 5
  %63 = add nsw i32 5000, %62
  store i32 %63, i32* %3, align 4
  br label %87

64:                                               ; preds = %36
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 14
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 2484, i32* %3, align 4
  br label %87

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 14
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = mul nsw i32 %72, 5
  %74 = add nsw i32 2407, %73
  store i32 %74, i32* %3, align 4
  br label %87

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 27
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 15
  %81 = mul nsw i32 %80, 20
  %82 = add nsw i32 2512, %81
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = mul nsw i32 %84, 5
  %86 = add nsw i32 5000, %85
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %78, %71, %67, %60, %48, %31, %27, %23, %10
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
