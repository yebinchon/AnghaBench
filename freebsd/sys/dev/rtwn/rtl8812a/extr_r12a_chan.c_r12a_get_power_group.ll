; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_get_power_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_get_power_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong 2GHz channel %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"wrong 5GHz channel %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"wrong channel band (flags %08X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, %struct.ieee80211_channel*)* @r12a_get_power_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r12a_get_power_group(%struct.rtwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %9 = call i32 @rtwn_chan2centieee(%struct.ieee80211_channel* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %42

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 2, i32* %7, align 4
  br label %40

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 11
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* %7, align 4
  br label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 14
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4, i32* %7, align 4
  br label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @KASSERT(i32 0, i8* %36)
  store i32 -1, i32* %3, align 4
  br label %136

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %16
  br label %134

43:                                               ; preds = %2
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %45 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %126

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 36
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %136

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 %52, 42
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %125

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 48
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %124

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 58
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 2, i32* %7, align 4
  br label %123

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 64
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 3, i32* %7, align 4
  br label %122

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %68, 106
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 4, i32* %7, align 4
  br label %121

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 %72, 114
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 5, i32* %7, align 4
  br label %120

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 122
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 6, i32* %7, align 4
  br label %119

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %80, 130
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 7, i32* %7, align 4
  br label %118

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = icmp sle i32 %84, 138
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 8, i32* %7, align 4
  br label %117

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = icmp sle i32 %88, 144
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 9, i32* %7, align 4
  br label %116

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = icmp sle i32 %92, 155
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 10, i32* %7, align 4
  br label %115

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = icmp sle i32 %96, 161
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 11, i32* %7, align 4
  br label %114

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = icmp sle i32 %100, 171
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 12, i32* %7, align 4
  br label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = icmp sle i32 %104, 177
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 13, i32* %7, align 4
  br label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @KASSERT(i32 0, i8* %110)
  store i32 -1, i32* %3, align 4
  br label %136

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %82
  br label %119

119:                                              ; preds = %118, %78
  br label %120

120:                                              ; preds = %119, %74
  br label %121

121:                                              ; preds = %120, %70
  br label %122

122:                                              ; preds = %121, %66
  br label %123

123:                                              ; preds = %122, %62
  br label %124

124:                                              ; preds = %123, %58
  br label %125

125:                                              ; preds = %124, %54
  br label %133

126:                                              ; preds = %43
  %127 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @KASSERT(i32 0, i8* %131)
  store i32 -1, i32* %3, align 4
  br label %136

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %42
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %126, %107, %50, %33
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @rtwn_chan2centieee(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
