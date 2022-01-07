; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_rate2media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_rate2media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ratemedia = type { i32, i32 }
%struct.ieee80211com = type { i32 }

@ieee80211_rate2media.rates = internal constant [30 x %struct.ratemedia] [%struct.ratemedia { i32 142, i32 141 }, %struct.ratemedia { i32 142, i32 140 }, %struct.ratemedia { i32 151, i32 147 }, %struct.ratemedia { i32 149, i32 145 }, %struct.ratemedia { i32 159, i32 143 }, %struct.ratemedia { i32 151, i32 146 }, %struct.ratemedia { i32 189, i32 144 }, %struct.ratemedia { i32 158, i32 129 }, %struct.ratemedia { i32 150, i32 128 }, %struct.ratemedia { i32 158, i32 138 }, %struct.ratemedia { i32 182, i32 137 }, %struct.ratemedia { i32 182, i32 136 }, %struct.ratemedia { i32 222, i32 133 }, %struct.ratemedia { i32 246, i32 131 }, %struct.ratemedia { i32 254, i32 130 }, %struct.ratemedia { i32 150, i32 147 }, %struct.ratemedia { i32 148, i32 145 }, %struct.ratemedia { i32 159, i32 143 }, %struct.ratemedia { i32 150, i32 146 }, %struct.ratemedia { i32 156, i32 129 }, %struct.ratemedia { i32 150, i32 128 }, %struct.ratemedia { i32 156, i32 138 }, %struct.ratemedia { i32 180, i32 137 }, %struct.ratemedia { i32 180, i32 136 }, %struct.ratemedia { i32 220, i32 133 }, %struct.ratemedia { i32 244, i32 131 }, %struct.ratemedia { i32 252, i32 130 }, %struct.ratemedia { i32 150, i32 134 }, %struct.ratemedia { i32 159, i32 132 }, %struct.ratemedia { i32 182, i32 135 }], align 16
@ieee80211_rate2media.htrates = internal constant [77 x %struct.ratemedia] [%struct.ratemedia { i32 0, i32 139 }, %struct.ratemedia { i32 1, i32 139 }, %struct.ratemedia { i32 2, i32 139 }, %struct.ratemedia { i32 3, i32 139 }, %struct.ratemedia { i32 4, i32 139 }, %struct.ratemedia { i32 5, i32 139 }, %struct.ratemedia { i32 6, i32 139 }, %struct.ratemedia { i32 7, i32 139 }, %struct.ratemedia { i32 8, i32 139 }, %struct.ratemedia { i32 9, i32 139 }, %struct.ratemedia { i32 10, i32 139 }, %struct.ratemedia { i32 11, i32 139 }, %struct.ratemedia { i32 12, i32 139 }, %struct.ratemedia { i32 13, i32 139 }, %struct.ratemedia { i32 14, i32 139 }, %struct.ratemedia { i32 15, i32 139 }, %struct.ratemedia { i32 16, i32 139 }, %struct.ratemedia { i32 17, i32 139 }, %struct.ratemedia { i32 18, i32 139 }, %struct.ratemedia { i32 19, i32 139 }, %struct.ratemedia { i32 20, i32 139 }, %struct.ratemedia { i32 21, i32 139 }, %struct.ratemedia { i32 22, i32 139 }, %struct.ratemedia { i32 23, i32 139 }, %struct.ratemedia { i32 24, i32 139 }, %struct.ratemedia { i32 25, i32 139 }, %struct.ratemedia { i32 26, i32 139 }, %struct.ratemedia { i32 27, i32 139 }, %struct.ratemedia { i32 28, i32 139 }, %struct.ratemedia { i32 29, i32 139 }, %struct.ratemedia { i32 30, i32 139 }, %struct.ratemedia { i32 31, i32 139 }, %struct.ratemedia { i32 32, i32 139 }, %struct.ratemedia { i32 33, i32 139 }, %struct.ratemedia { i32 34, i32 139 }, %struct.ratemedia { i32 35, i32 139 }, %struct.ratemedia { i32 36, i32 139 }, %struct.ratemedia { i32 37, i32 139 }, %struct.ratemedia { i32 38, i32 139 }, %struct.ratemedia { i32 39, i32 139 }, %struct.ratemedia { i32 40, i32 139 }, %struct.ratemedia { i32 41, i32 139 }, %struct.ratemedia { i32 42, i32 139 }, %struct.ratemedia { i32 43, i32 139 }, %struct.ratemedia { i32 44, i32 139 }, %struct.ratemedia { i32 45, i32 139 }, %struct.ratemedia { i32 46, i32 139 }, %struct.ratemedia { i32 47, i32 139 }, %struct.ratemedia { i32 48, i32 139 }, %struct.ratemedia { i32 49, i32 139 }, %struct.ratemedia { i32 50, i32 139 }, %struct.ratemedia { i32 51, i32 139 }, %struct.ratemedia { i32 52, i32 139 }, %struct.ratemedia { i32 53, i32 139 }, %struct.ratemedia { i32 54, i32 139 }, %struct.ratemedia { i32 55, i32 139 }, %struct.ratemedia { i32 56, i32 139 }, %struct.ratemedia { i32 57, i32 139 }, %struct.ratemedia { i32 58, i32 139 }, %struct.ratemedia { i32 59, i32 139 }, %struct.ratemedia { i32 60, i32 139 }, %struct.ratemedia { i32 61, i32 139 }, %struct.ratemedia { i32 62, i32 139 }, %struct.ratemedia { i32 63, i32 139 }, %struct.ratemedia { i32 64, i32 139 }, %struct.ratemedia { i32 65, i32 139 }, %struct.ratemedia { i32 66, i32 139 }, %struct.ratemedia { i32 67, i32 139 }, %struct.ratemedia { i32 68, i32 139 }, %struct.ratemedia { i32 69, i32 139 }, %struct.ratemedia { i32 70, i32 139 }, %struct.ratemedia { i32 71, i32 139 }, %struct.ratemedia { i32 72, i32 139 }, %struct.ratemedia { i32 73, i32 139 }, %struct.ratemedia { i32 74, i32 139 }, %struct.ratemedia { i32 75, i32 139 }, %struct.ratemedia { i32 76, i32 139 }], align 16
@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_IEEE80211_11NA = common dso_local global i32 0, align 4
@IFM_IEEE80211_11NG = common dso_local global i32 0, align 4
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@IEEE80211_T_FH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_rate2media(%struct.ieee80211com* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 161
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = call i32 @nitems(%struct.ratemedia* getelementptr inbounds ([77 x %struct.ratemedia], [77 x %struct.ratemedia]* @ieee80211_rate2media.htrates, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @findmedia(%struct.ratemedia* getelementptr inbounds ([77 x %struct.ratemedia], [77 x %struct.ratemedia]* @ieee80211_rate2media.htrates, i64 0, i64 0), i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @IFM_AUTO, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IFM_IEEE80211_11NA, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %4, align 4
  br label %103

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %11
  br label %59

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 160
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = call i32 @nitems(%struct.ratemedia* getelementptr inbounds ([77 x %struct.ratemedia], [77 x %struct.ratemedia]* @ieee80211_rate2media.htrates, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @findmedia(%struct.ratemedia* getelementptr inbounds ([77 x %struct.ratemedia], [77 x %struct.ratemedia]* @ieee80211_rate2media.htrates, i64 0, i64 0), i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @IFM_AUTO, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @IFM_IEEE80211_11NG, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %4, align 4
  br label %103

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %33
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %101 [
    i32 164, label %64
    i32 157, label %64
    i32 156, label %64
    i32 161, label %64
    i32 154, label %64
    i32 155, label %64
    i32 163, label %69
    i32 158, label %74
    i32 159, label %79
    i32 162, label %94
    i32 160, label %94
    i32 153, label %94
    i32 152, label %99
    i32 151, label %99
  ]

64:                                               ; preds = %59, %59, %59, %59, %59, %59
  %65 = call i32 @nitems(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, 150
  %68 = call i32 @findmedia(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0), i32 %65, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %103

69:                                               ; preds = %59
  %70 = call i32 @nitems(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0))
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, 149
  %73 = call i32 @findmedia(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0), i32 %70, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %103

74:                                               ; preds = %59
  %75 = call i32 @nitems(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, 142
  %78 = call i32 @findmedia(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0), i32 %75, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %103

79:                                               ; preds = %59
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %81 = icmp ne %struct.ieee80211com* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IEEE80211_T_FH, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = call i32 @nitems(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0))
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, 142
  %92 = call i32 @findmedia(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0), i32 %89, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %103

93:                                               ; preds = %82, %79
  br label %94

94:                                               ; preds = %59, %59, %59, %93
  %95 = call i32 @nitems(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0))
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 148
  %98 = call i32 @findmedia(%struct.ratemedia* getelementptr inbounds ([30 x %struct.ratemedia], [30 x %struct.ratemedia]* @ieee80211_rate2media.rates, i64 0, i64 0), i32 %95, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %103

99:                                               ; preds = %59, %59
  %100 = load i32, i32* @IFM_AUTO, align 4
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %59
  %102 = load i32, i32* @IFM_AUTO, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %99, %94, %88, %74, %69, %64, %52, %27
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @findmedia(%struct.ratemedia*, i32, i32) #1

declare dso_local i32 @nitems(%struct.ratemedia*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
