; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_mhz2ieee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_mhz2ieee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_CHAN_GSM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mhz2ieee(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IEEE80211_CHAN_GSM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @mapgsm(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %111

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2484
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 14, i32* %3, align 4
  br label %111

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 2484
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 2407
  %29 = sdiv i32 %28, 5
  store i32 %29, i32* %3, align 4
  br label %111

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 2512
  %33 = sdiv i32 %32, 20
  %34 = add nsw i32 15, %33
  store i32 %34, i32* %3, align 4
  br label %111

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %41, 5000
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 4940
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 4990
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mappsb(i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %111

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 4000
  %56 = sdiv i32 %55, 5
  store i32 %56, i32* %3, align 4
  br label %111

57:                                               ; preds = %40
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 5000
  %60 = sdiv i32 %59, 5
  store i32 %60, i32* %3, align 4
  br label %111

61:                                               ; preds = %35
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 2484
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 14, i32* %3, align 4
  br label %111

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 2484
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp sle i32 907, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = icmp sle i32 %72, 922
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @mapgsm(i32 %75, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %111

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 2407
  %81 = sdiv i32 %80, 5
  store i32 %81, i32* %3, align 4
  br label %111

82:                                               ; preds = %65
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 5000
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 4940
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 4990
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @mappsb(i32 %92, i32 %93)
  store i32 %94, i32* %3, align 4
  br label %111

95:                                               ; preds = %88, %85
  %96 = load i32, i32* %4, align 4
  %97 = icmp sgt i32 %96, 4900
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 4000
  %101 = sdiv i32 %100, 5
  store i32 %101, i32* %3, align 4
  br label %111

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 2512
  %105 = sdiv i32 %104, 20
  %106 = add nsw i32 15, %105
  store i32 %106, i32* %3, align 4
  br label %111

107:                                              ; preds = %82
  %108 = load i32, i32* %4, align 4
  %109 = sub nsw i32 %108, 5000
  %110 = sdiv i32 %109, 5
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %102, %98, %91, %78, %74, %64, %57, %53, %49, %30, %26, %22, %10
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @mapgsm(i32, i32) #1

declare dso_local i32 @mappsb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
