; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_add_chanlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_add_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_VHT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT80 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*, i32, i32*, i64*, i32, i32*)* @add_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_chanlist(%struct.ieee80211_channel* %0, i32 %1, i32* %2, i64* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %195, %6
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %198

23:                                               ; preds = %19
  %24 = load i64*, i64** %11, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_ieee2mhz(i64 %28, i32 %31)
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %191, %23
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %194

40:                                               ; preds = %33
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_CHAN_VHT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %40
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEEE80211_CHAN_VHT80, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @is_vht80_valid_freq(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %191

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %54, %40
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %69
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %78
  %82 = load i64*, i64** %11, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 4
  %91 = icmp slt i64 %86, %90
  br i1 %91, label %108, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %93, 20
  %95 = load i64*, i64** %11, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ieee80211_ieee2mhz(i64 %100, i32 %105)
  %107 = icmp ne i32 %94, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %92, %81, %78
  br label %191

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %69
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %156

119:                                              ; preds = %110
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %154, label %124

124:                                              ; preds = %119
  %125 = load i64*, i64** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 4
  %131 = load i64*, i64** %11, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %130, %136
  br i1 %137, label %154, label %138

138:                                              ; preds = %124
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 20
  %141 = load i64*, i64** %11, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 4
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ieee80211_ieee2mhz(i64 %146, i32 %151)
  %153 = icmp ne i32 %140, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %138, %124, %119
  br label %191

155:                                              ; preds = %138
  br label %156

156:                                              ; preds = %155, %110
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i64*, i64** %11, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @addchan(%struct.ieee80211_channel* %160, i32 %161, i32* %162, i64 %167, i32 %168, i32 0, i32 %173)
  store i32 %174, i32* %17, align 4
  br label %185

175:                                              ; preds = %156
  %176 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32*, i32** %10, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @copychan_prev(%struct.ieee80211_channel* %176, i32 %177, i32* %178, i32 %183)
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %175, %159
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32, i32* %17, align 4
  store i32 %189, i32* %7, align 4
  br label %199

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190, %154, %108, %67
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  br label %33

194:                                              ; preds = %33
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %19

198:                                              ; preds = %19
  store i32 0, i32* %7, align 4
  br label %199

199:                                              ; preds = %198, %188
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i32 @ieee80211_ieee2mhz(i64, i32) #1

declare dso_local i32 @is_vht80_valid_freq(i32) #1

declare dso_local i32 @addchan(%struct.ieee80211_channel*, i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @copychan_prev(%struct.ieee80211_channel*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
