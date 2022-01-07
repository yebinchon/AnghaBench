; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416GetTargetPowers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416GetTargetPowers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_9__ = type { i64, i64* }
%struct.TYPE_8__ = type { i64, i64 }

@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416GetTargetPowers(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, %struct.TYPE_9__* %2, i64 %3, %struct.TYPE_9__* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_8__, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  %22 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %24 = call i32 @ar5416GetChannelCenters(%struct.ath_hal* %22, %struct.ieee80211_channel* %23, %struct.TYPE_8__* %21)
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %33

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i64 [ %29, %27 ], [ %32, %30 ]
  store i64 %34, i64* %20, align 8
  %35 = load i64, i64* %20, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %41 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %40)
  %42 = call i64 @fbin2freq(i64 %39, i32 %41)
  %43 = icmp sle i64 %35, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %133

45:                                               ; preds = %33
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %106, %45
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %59 = icmp ne i64 %57, %58
  br label %60

60:                                               ; preds = %51, %46
  %61 = phi i1 [ false, %46 ], [ %59, %51 ]
  br i1 %61, label %62, label %109

62:                                               ; preds = %60
  %63 = load i64, i64* %20, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %71 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %70)
  %72 = call i64 @fbin2freq(i64 %69, i32 %71)
  %73 = icmp eq i64 %63, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %18, align 4
  br label %109

76:                                               ; preds = %62
  %77 = load i64, i64* %20, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %85 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %84)
  %86 = call i64 @fbin2freq(i64 %83, i32 %85)
  %87 = icmp slt i64 %77, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %76
  %89 = load i64, i64* %20, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %98 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %97)
  %99 = call i64 @fbin2freq(i64 %96, i32 %98)
  %100 = icmp sgt i64 %89, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load i32, i32* %17, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %19, align 4
  br label %109

104:                                              ; preds = %88, %76
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %46

109:                                              ; preds = %101, %74, %60
  %110 = load i32, i32* %18, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i64, i64* %20, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %125 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %124)
  %126 = call i64 @fbin2freq(i64 %123, i32 %125)
  %127 = icmp sgt i64 %116, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @HALASSERT(i32 %128)
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %132

132:                                              ; preds = %115, %112, %109
  br label %133

133:                                              ; preds = %132, %44
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %140
  %142 = call i32 @OS_MEMCPY(%struct.TYPE_9__* %137, %struct.TYPE_9__* %141, i32 16)
  br label %208

143:                                              ; preds = %133
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, -1
  %146 = zext i1 %145 to i32
  %147 = call i32 @HALASSERT(i32 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %155 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %154)
  %156 = call i64 @fbin2freq(i64 %153, i32 %155)
  store i64 %156, i64* %15, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %165 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %164)
  %166 = call i64 @fbin2freq(i64 %163, i32 %165)
  store i64 %166, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %167

167:                                              ; preds = %204, %143
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %13, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %207

172:                                              ; preds = %167
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* %15, align 8
  %175 = load i64, i64* %16, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @ath_ee_interpolate(i64 %173, i64 %174, i64 %175, i64 %185, i64 %196)
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  store i64 %197, i64* %203, align 8
  br label %204

204:                                              ; preds = %172
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %17, align 4
  br label %167

207:                                              ; preds = %167
  br label %208

208:                                              ; preds = %207, %136
  ret void
}

declare dso_local i32 @ar5416GetChannelCenters(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_8__*) #1

declare dso_local i64 @fbin2freq(i64, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_MEMCPY(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @ath_ee_interpolate(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
