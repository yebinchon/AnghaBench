; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_announce_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_announce_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Chan  Freq  CW  RegPwr  MinPwr  MaxPwr\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%4d  %4d%c %2d%c %6d  %4d.%d  %4d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_announce_channels(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %132, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %135

14:                                               ; preds = %8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 1
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i64 %19
  store %struct.ieee80211_channel* %20, %struct.ieee80211_channel** %3, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %22 = call i64 @IEEE80211_IS_CHAN_ST(%struct.ieee80211_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i8 83, i8* %4, align 1
  br label %62

25:                                               ; preds = %14
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %27 = call i64 @IEEE80211_IS_CHAN_108A(%struct.ieee80211_channel* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8 84, i8* %4, align 1
  br label %61

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %32 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8 71, i8* %4, align 1
  br label %60

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %37 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8 110, i8* %4, align 1
  br label %59

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %42 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8 97, i8* %4, align 1
  br label %58

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %47 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8 103, i8* %4, align 1
  br label %57

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %52 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i8 98, i8* %4, align 1
  br label %56

55:                                               ; preds = %50
  store i8 102, i8* %4, align 1
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %60, %29
  br label %62

62:                                               ; preds = %61, %24
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %64 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %68 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  store i32 40, i32* %6, align 4
  br label %84

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %73 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 10, i32* %6, align 4
  br label %83

76:                                               ; preds = %71
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %78 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 5, i32* %6, align 4
  br label %82

81:                                               ; preds = %76
  store i32 20, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %75
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8, i8* %4, align 1
  %92 = sext i8 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %95 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %104

98:                                               ; preds = %84
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %100 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %99)
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 45, i32 32
  br label %104

104:                                              ; preds = %98, %97
  %105 = phi i32 [ 43, %97 ], [ %103, %98 ]
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %107 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %110 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 2
  %113 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 5, i32 0
  %120 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %121 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 2
  %124 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %125 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 1
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 5, i32 0
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i32 %92, i32 %93, i32 %105, i32 %108, i32 %112, i32 %119, i32 %123, i32 %130)
  br label %132

132:                                              ; preds = %104
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %8

135:                                              ; preds = %8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ST(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
