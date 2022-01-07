; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_dumpchannels.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_dumpchannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }

@showchannels = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s%3d\00", align 1
@sep = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@dopassive = common dso_local global i64 0, align 8
@isdfs = common dso_local global i64 0, align 8
@is4ms = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%c%c%c %d.%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%c%c %d.%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%c %d.%d\00", align 1
@n = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32, %struct.ieee80211_channel*, i32*)* @dumpchannels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpchannels(%struct.ath_hal* %0, i32 %1, %struct.ieee80211_channel* %2, i32* %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %202, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %205

16:                                               ; preds = %12
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i64 %19
  store %struct.ieee80211_channel* %20, %struct.ieee80211_channel** %10, align 8
  %21 = load i64, i64* @showchannels, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load i8*, i8** @sep, align 8
  %25 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ath_hal_mhz2ieee(%struct.ath_hal* %25, i32 %28, i32 %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %32)
  br label %40

34:                                               ; preds = %16
  %35 = load i8*, i8** @sep, align 8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %23
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %42 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 72, i32* %11, align 4
  br label %82

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %47 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 81, i32* %11, align 4
  br label %81

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %52 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 84, i32* %11, align 4
  br label %80

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %57 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 78, i32* %11, align 4
  br label %79

60:                                               ; preds = %55
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %62 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 65, i32* %11, align 4
  br label %78

65:                                               ; preds = %60
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %67 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 84, i32* %11, align 4
  br label %77

70:                                               ; preds = %65
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %72 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 71, i32* %11, align 4
  br label %76

75:                                               ; preds = %70
  store i32 66, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80, %49
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i64, i64* @dopassive, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %87 = call i64 @IEEE80211_IS_CHAN_PASSIVE(%struct.ieee80211_channel* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @tolower(i32 %90) #3
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %85, %82
  %93 = load i64, i64* @isdfs, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %92
  %96 = load i64, i64* @is4ms, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %101 = call i64 @IEEE80211_IS_CHAN_DFS(%struct.ieee80211_channel* %100)
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 42, i32 32
  %105 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %106 = call i64 @IEEE80211_IS_CHAN_4MS(%struct.ieee80211_channel* %105)
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 52, i32 32
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 2
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = srem i32 %120, 2
  %122 = mul nsw i32 %121, 5
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %104, i32 %109, i32 %115, i32 %122)
  br label %190

124:                                              ; preds = %95, %92
  %125 = load i64, i64* @isdfs, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %124
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %130 = call i64 @IEEE80211_IS_CHAN_DFS(%struct.ieee80211_channel* %129)
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 42, i32 32
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 2
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = srem i32 %144, 2
  %146 = mul nsw i32 %145, 5
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %133, i32 %139, i32 %146)
  br label %189

148:                                              ; preds = %124
  %149 = load i64, i64* @is4ms, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %154 = call i64 @IEEE80211_IS_CHAN_4MS(%struct.ieee80211_channel* %153)
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 52, i32 32
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sdiv i32 %162, 2
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = srem i32 %168, 2
  %170 = mul nsw i32 %169, 5
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %157, i32 %163, i32 %170)
  br label %188

172:                                              ; preds = %148
  %173 = load i32, i32* %11, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %178, 2
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = srem i32 %184, 2
  %186 = mul nsw i32 %185, 5
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %173, i32 %179, i32 %186)
  br label %188

188:                                              ; preds = %172, %151
  br label %189

189:                                              ; preds = %188, %127
  br label %190

190:                                              ; preds = %189, %98
  %191 = load i32, i32* @n, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* @n, align 4
  %193 = load i64, i64* @showchannels, align 8
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 7, i32 6
  %197 = srem i32 %191, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** @sep, align 8
  br label %201

200:                                              ; preds = %190
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** @sep, align 8
  br label %201

201:                                              ; preds = %200, %199
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %12

205:                                              ; preds = %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ath_hal_mhz2ieee(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_PASSIVE(%struct.ieee80211_channel*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i64 @IEEE80211_IS_CHAN_DFS(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_4MS(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
