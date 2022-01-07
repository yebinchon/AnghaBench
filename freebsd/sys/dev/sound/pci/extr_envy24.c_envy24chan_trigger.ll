; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24chan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24chan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, i32, i32, i32, i32, i32, i32 (%struct.sc_chinfo*)*, %struct.TYPE_5__*, i32, %struct.sc_info* }
%struct.TYPE_5__ = type { i32 }
%struct.sc_info = type { i32*, i32*, i32, %struct.TYPE_6__*, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@ENVY24_CHAN_NUM = common dso_local global i32 0, align 4
@ENVY24_SAMPLE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @envy24chan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24chan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %13, %struct.sc_chinfo** %7, align 8
  %14 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %15 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %14, i32 0, i32 10
  %16 = load %struct.sc_info*, %struct.sc_info** %15, align 8
  store %struct.sc_info* %16, %struct.sc_info** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_mtxlock(i32 %19)
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCMDIR_PLAY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %28

27:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %299 [
    i32 128, label %30
    i32 129, label %225
    i32 130, label %237
    i32 131, label %249
  ]

30:                                               ; preds = %28
  %31 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %30
  %38 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %37
  %45 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %46 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %47 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @envy24_setspeed(%struct.sc_info* %45, i32 %48)
  %50 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 7
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 7
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %54, i32* %64, align 4
  %65 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %66 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %69 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %68, i32 0, i32 7
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  %73 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %74 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %73, i32 0, i32 7
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %67, i32* %77, align 4
  br label %93

78:                                               ; preds = %37, %30
  %79 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %80 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %85 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %88 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 -1, i32* %11, align 4
  br label %300

92:                                               ; preds = %83, %78
  br label %93

93:                                               ; preds = %92, %44
  %94 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %95 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %100 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %103 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %102, i32 0, i32 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %93
  %107 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %108 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %116 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %135

123:                                              ; preds = %106
  %124 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %125 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %124, i32 0, i32 1
  store i32 0, i32* %125, align 8
  %126 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %127 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %130 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %185

135:                                              ; preds = %106
  %136 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %137 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %138 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @envy24_gethwptr(%struct.sc_info* %136, i64 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %143 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %141, %144
  %146 = add nsw i32 %145, 1
  %147 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %148 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %146, %149
  %151 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %152 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = sdiv i32 %153, 4
  %155 = srem i32 %150, %154
  %156 = mul nsw i32 %155, 4
  %157 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %158 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %156, %159
  %161 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %162 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %164 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %167 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %165, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %135
  %175 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %176 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %179 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  br label %184

184:                                              ; preds = %174, %135
  br label %185

185:                                              ; preds = %184, %123
  %186 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %187 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @PCMDIR_PLAY, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %185
  %192 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %193 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %192, i32 0, i32 7
  %194 = load i32 (%struct.sc_chinfo*)*, i32 (%struct.sc_chinfo*)** %193, align 8
  %195 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %196 = call i32 %194(%struct.sc_chinfo* %195)
  %197 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %198 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %199 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @envy24_setvolume(%struct.sc_info* %197, i32 %200)
  br label %202

202:                                              ; preds = %191, %185
  %203 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %204 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %205 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @envy24_updintr(%struct.sc_info* %203, i64 %206)
  %208 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %209 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %222

216:                                              ; preds = %202
  %217 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %218 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %219 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @envy24_start(%struct.sc_info* %217, i64 %220)
  br label %222

222:                                              ; preds = %216, %202
  %223 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %224 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %223, i32 0, i32 5
  store i32 1, i32* %224, align 8
  br label %299

225:                                              ; preds = %28
  %226 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %227 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32 -1, i32* %11, align 4
  br label %300

231:                                              ; preds = %225
  %232 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %233 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %232, i32 0, i32 7
  %234 = load i32 (%struct.sc_chinfo*)*, i32 (%struct.sc_chinfo*)** %233, align 8
  %235 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %236 = call i32 %234(%struct.sc_chinfo* %235)
  br label %299

237:                                              ; preds = %28
  %238 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %239 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 1
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  store i32 -1, i32* %11, align 4
  br label %300

243:                                              ; preds = %237
  %244 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %245 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %244, i32 0, i32 7
  %246 = load i32 (%struct.sc_chinfo*)*, i32 (%struct.sc_chinfo*)** %245, align 8
  %247 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %248 = call i32 %246(%struct.sc_chinfo* %247)
  br label %299

249:                                              ; preds = %28
  %250 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %251 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %298

254:                                              ; preds = %249
  %255 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %256 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %255, i32 0, i32 5
  store i32 0, i32* %256, align 8
  %257 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %258 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %262, align 4
  %265 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %266 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @PCMDIR_PLAY, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %254
  %271 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %272 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %273 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @envy24_mutevolume(%struct.sc_info* %271, i32 %274)
  br label %276

276:                                              ; preds = %270, %254
  %277 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %278 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %276
  %286 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %287 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %288 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @envy24_stop(%struct.sc_info* %286, i64 %289)
  %291 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %292 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %291, i32 0, i32 4
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 0, i32* %296, align 4
  br label %297

297:                                              ; preds = %285, %276
  br label %298

298:                                              ; preds = %297, %249
  br label %299

299:                                              ; preds = %28, %298, %243, %231, %222
  br label %300

300:                                              ; preds = %299, %242, %230, %91
  %301 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %302 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @snd_mtxunlock(i32 %303)
  %305 = load i32, i32* %11, align 4
  ret i32 %305
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @envy24_setspeed(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24_gethwptr(%struct.sc_info*, i64) #1

declare dso_local i32 @envy24_setvolume(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24_updintr(%struct.sc_info*, i64) #1

declare dso_local i32 @envy24_start(%struct.sc_info*, i64) #1

declare dso_local i32 @envy24_mutevolume(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24_stop(%struct.sc_info*, i64) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
