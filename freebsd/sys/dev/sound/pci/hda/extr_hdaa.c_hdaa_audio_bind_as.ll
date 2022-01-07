; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_bind_as.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_bind_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, %struct.hdaa_chan*, i32, %struct.hdaa_audio_as* }
%struct.hdaa_chan = type { i32, i32, i32, %struct.hdaa_devinfo*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hdaa_audio_as = type { i64, i32, i64, i32* }

@M_HDAA = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Channels memory allocation failed!\0A\00", align 1
@HDAA_CTL_IN = common dso_local global i64 0, align 8
@PCMDIR_REC = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_audio_bind_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_bind_as(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_audio_as*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %8 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %9 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %8, i32 0, i32 4
  %10 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  store %struct.hdaa_audio_as* %10, %struct.hdaa_audio_as** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %14 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %18, i64 %20
  %22 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %26, i64 %28
  %30 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %25, %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %40 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 32, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @M_HDAA, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @malloc(i32 %47, i32 %48, i32 %51)
  %53 = inttoptr i64 %52 to %struct.hdaa_chan*
  %54 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %55 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %54, i32 0, i32 2
  store %struct.hdaa_chan* %53, %struct.hdaa_chan** %55, align 8
  %56 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %57 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %56, i32 0, i32 2
  %58 = load %struct.hdaa_chan*, %struct.hdaa_chan** %57, align 8
  %59 = icmp eq %struct.hdaa_chan* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %62 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %250

65:                                               ; preds = %43
  br label %125

66:                                               ; preds = %38
  %67 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %68 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %67, i32 0, i32 2
  %69 = load %struct.hdaa_chan*, %struct.hdaa_chan** %68, align 8
  %70 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %71 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 32, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @M_HDAA, align 4
  %79 = load i32, i32* @M_ZERO, align 4
  %80 = load i32, i32* @M_NOWAIT, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @realloc(%struct.hdaa_chan* %69, i32 %77, i32 %78, i32 %81)
  %83 = inttoptr i64 %82 to %struct.hdaa_chan*
  %84 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %85 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %84, i32 0, i32 2
  store %struct.hdaa_chan* %83, %struct.hdaa_chan** %85, align 8
  %86 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %87 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %86, i32 0, i32 2
  %88 = load %struct.hdaa_chan*, %struct.hdaa_chan** %87, align 8
  %89 = icmp eq %struct.hdaa_chan* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %66
  %91 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %92 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %94 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %250

97:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %121, %97
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %101 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %98
  %105 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %106 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %105, i32 0, i32 2
  %107 = load %struct.hdaa_chan*, %struct.hdaa_chan** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %107, i64 %109
  %111 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %114 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %113, i32 0, i32 2
  %115 = load %struct.hdaa_chan*, %struct.hdaa_chan** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %115, i64 %117
  %119 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 %112, i32* %120, align 4
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %98

124:                                              ; preds = %98
  br label %125

125:                                              ; preds = %124, %65
  %126 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %127 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %131 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %157, %125
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %137, %138
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %135
  %142 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %143 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %144 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %143, i32 0, i32 2
  %145 = load %struct.hdaa_chan*, %struct.hdaa_chan** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %145, i64 %147
  %149 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %148, i32 0, i32 3
  store %struct.hdaa_devinfo* %142, %struct.hdaa_devinfo** %149, align 8
  %150 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %151 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %150, i32 0, i32 2
  %152 = load %struct.hdaa_chan*, %struct.hdaa_chan** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %152, i64 %154
  %156 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %155, i32 0, i32 0
  store i32 -1, i32* %156, align 8
  br label %157

157:                                              ; preds = %141
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %135

160:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %247, %160
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %164 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %250

167:                                              ; preds = %161
  %168 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %168, i64 %170
  %172 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %247

176:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %243, %176
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %179, i64 %181
  %183 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %178, %184
  br i1 %185, label %186, label %246

186:                                              ; preds = %177
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %189 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %188, i32 0, i32 2
  %190 = load %struct.hdaa_chan*, %struct.hdaa_chan** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %190, i64 %192
  %194 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %193, i32 0, i32 0
  store i32 %187, i32* %194, align 8
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %197 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %196, i32 0, i32 2
  %198 = load %struct.hdaa_chan*, %struct.hdaa_chan** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %198, i64 %200
  %202 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %201, i32 0, i32 1
  store i32 %195, i32* %202, align 4
  %203 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %203, i64 %205
  %207 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @HDAA_CTL_IN, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %186
  %212 = load i32, i32* @PCMDIR_REC, align 4
  br label %215

213:                                              ; preds = %186
  %214 = load i32, i32* @PCMDIR_PLAY, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %218 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %217, i32 0, i32 2
  %219 = load %struct.hdaa_chan*, %struct.hdaa_chan** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %219, i64 %221
  %223 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %222, i32 0, i32 2
  store i32 %216, i32* %223, align 8
  %224 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %225 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %224, i32 0, i32 2
  %226 = load %struct.hdaa_chan*, %struct.hdaa_chan** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %226, i64 %228
  %230 = call i32 @hdaa_pcmchannel_setup(%struct.hdaa_chan* %229)
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %232, i64 %234
  %236 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %231, i32* %240, align 4
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %215
  %244 = load i32, i32* %4, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %4, align 4
  br label %177

246:                                              ; preds = %177
  br label %247

247:                                              ; preds = %246, %175
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %5, align 4
  br label %161

250:                                              ; preds = %60, %90, %161
  ret void
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @realloc(%struct.hdaa_chan*, i32, i32, i32) #1

declare dso_local i32 @hdaa_pcmchannel_setup(%struct.hdaa_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
