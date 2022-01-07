; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_validate_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_validate_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32, i32 }

@IEEE80211_HTC_HT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_HTC_TXMCS32 = common dso_local global i32 0, align 4
@IEEE80211_HTC_TXUNEQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, i32)* @ieee80211_validate_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_validate_rate(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 0
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @IEEE80211_IS_HT_RATE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %85

13:                                               ; preds = %2
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_HTC_HT, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %95

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @IEEE80211_RV(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 31
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 8
  %33 = sub nsw i32 %32, 1
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %95

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %95

38:                                               ; preds = %22
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEEE80211_HTC_TXMCS32, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %95

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %95

51:                                               ; preds = %38
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_HTC_TXUNEQUAL, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %95

60:                                               ; preds = %51
  %61 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %79 [
    i32 0, label %64
    i32 1, label %64
    i32 2, label %66
    i32 3, label %72
    i32 4, label %78
  ]

64:                                               ; preds = %60, %60
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %95

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 38
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %95

71:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %95

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 52
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %3, align 4
  br label %95

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %95

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %60, %78
  %80 = load i32, i32* %5, align 4
  %81 = icmp sgt i32 %80, 76
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %3, align 4
  br label %95

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %95

85:                                               ; preds = %2
  %86 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ieee80211_isratevalid(i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %3, align 4
  br label %95

94:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %92, %84, %82, %77, %75, %71, %69, %64, %58, %50, %48, %37, %35, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @IEEE80211_IS_HT_RATE(i32) #1

declare dso_local i32 @IEEE80211_RV(i32) #1

declare dso_local i32 @ieee80211_isratevalid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
