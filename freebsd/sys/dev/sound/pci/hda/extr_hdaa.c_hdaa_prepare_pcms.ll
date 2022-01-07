; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_prepare_pcms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_prepare_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, %struct.hdaa_pcm_devinfo*, %struct.TYPE_2__*, i32, %struct.hdaa_audio_as* }
%struct.hdaa_pcm_devinfo = type { i32, i32, i32, i32, %struct.hdaa_devinfo* }
%struct.TYPE_2__ = type { %struct.hdaa_pcm_devinfo* }
%struct.hdaa_audio_as = type { i64, i64, i32, i32, i64*, %struct.hdaa_pcm_devinfo* }

@HDAA_CTL_IN = common dso_local global i64 0, align 8
@M_HDAA = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate memory for devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_prepare_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_prepare_pcms(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_audio_as*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %11 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %12 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %11, i32 0, i32 5
  %13 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %12, align 8
  store %struct.hdaa_audio_as* %13, %struct.hdaa_audio_as** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %69, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %17 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %14
  %21 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %21, i64 %23
  %25 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %69

29:                                               ; preds = %20
  %30 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %30, i64 %32
  %34 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HDAA_CTL_IN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %39, i64 %41
  %43 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %68

53:                                               ; preds = %29
  %54 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %54, i64 %56
  %58 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %67

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %28
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %14

72:                                               ; preds = %14
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @max(i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @max(i32 %76, i32 %77)
  %79 = add nsw i32 %75, %78
  %80 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %81 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %83 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 24
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @M_HDAA, align 4
  %89 = load i32, i32* @M_ZERO, align 4
  %90 = load i32, i32* @M_NOWAIT, align 4
  %91 = or i32 %89, %90
  %92 = call i64 @malloc(i32 %87, i32 %88, i32 %91)
  %93 = inttoptr i64 %92 to %struct.hdaa_pcm_devinfo*
  %94 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %95 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %94, i32 0, i32 2
  store %struct.hdaa_pcm_devinfo* %93, %struct.hdaa_pcm_devinfo** %95, align 8
  %96 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %97 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %96, i32 0, i32 2
  %98 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %97, align 8
  %99 = icmp eq %struct.hdaa_pcm_devinfo* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %72
  %101 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %102 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %325

105:                                              ; preds = %72
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %150, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %109 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %115 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %114, i32 0, i32 2
  %116 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %116, i64 %118
  %120 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 8
  %121 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %122 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %123 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %122, i32 0, i32 2
  %124 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %124, i64 %126
  %128 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %127, i32 0, i32 4
  store %struct.hdaa_devinfo* %121, %struct.hdaa_devinfo** %128, align 8
  %129 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %130 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %129, i32 0, i32 2
  %131 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %131, i64 %133
  %135 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %134, i32 0, i32 1
  store i32 -1, i32* %135, align 4
  %136 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %137 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %136, i32 0, i32 2
  %138 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %138, i64 %140
  %142 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %141, i32 0, i32 2
  store i32 -1, i32* %142, align 8
  %143 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %144 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %143, i32 0, i32 2
  %145 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %145, i64 %147
  %149 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %148, i32 0, i32 3
  store i32 255, i32* %149, align 4
  br label %150

150:                                              ; preds = %112
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  br label %106

153:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %322, %153
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %157 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %325

160:                                              ; preds = %154
  %161 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %161, i64 %163
  %165 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %322

169:                                              ; preds = %160
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %318, %169
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %173 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %321

176:                                              ; preds = %170
  %177 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %178 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %177, i32 0, i32 2
  %179 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %179, i64 %181
  %183 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 255
  br i1 %185, label %186, label %209

186:                                              ; preds = %176
  %187 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %188 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %187, i32 0, i32 2
  %189 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %189, i64 %191
  %193 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %198, i64 %200
  %202 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = icmp ne i32 %197, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %186
  br label %318

209:                                              ; preds = %186, %176
  %210 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %210, i64 %212
  %214 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @HDAA_CTL_IN, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %238

218:                                              ; preds = %209
  %219 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %220 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %219, i32 0, i32 2
  %221 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %221, i64 %223
  %225 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp sge i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  br label %318

229:                                              ; preds = %218
  %230 = load i32, i32* %4, align 4
  %231 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %232 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %231, i32 0, i32 2
  %233 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %233, i64 %235
  %237 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %236, i32 0, i32 2
  store i32 %230, i32* %237, align 8
  br label %258

238:                                              ; preds = %209
  %239 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %240 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %239, i32 0, i32 2
  %241 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %241, i64 %243
  %245 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %238
  br label %318

249:                                              ; preds = %238
  %250 = load i32, i32* %4, align 4
  %251 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %252 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %251, i32 0, i32 2
  %253 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %253, i64 %255
  %257 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %256, i32 0, i32 1
  store i32 %250, i32* %257, align 4
  br label %258

258:                                              ; preds = %249, %229
  %259 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %260 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %259, i32 0, i32 2
  %261 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %261, i64 %263
  %265 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %265, i64 %267
  %269 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %268, i32 0, i32 5
  store %struct.hdaa_pcm_devinfo* %264, %struct.hdaa_pcm_devinfo** %269, align 8
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %301, %258
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %272, i64 %274
  %276 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = icmp slt i32 %271, %277
  br i1 %278, label %279, label %304

279:                                              ; preds = %270
  %280 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %281 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %280, i32 0, i32 2
  %282 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %281, align 8
  %283 = load i32, i32* %5, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %282, i64 %284
  %286 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %287 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %286, i32 0, i32 3
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %289, i64 %291
  %293 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %292, i32 0, i32 4
  %294 = load i64*, i64** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %294, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  store %struct.hdaa_pcm_devinfo* %285, %struct.hdaa_pcm_devinfo** %300, align 8
  br label %301

301:                                              ; preds = %279
  %302 = load i32, i32* %6, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %6, align 4
  br label %270

304:                                              ; preds = %270
  %305 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %305, i64 %307
  %309 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %312 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %311, i32 0, i32 2
  %313 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %313, i64 %315
  %317 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %316, i32 0, i32 3
  store i32 %310, i32* %317, align 4
  br label %321

318:                                              ; preds = %248, %228, %208
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %5, align 4
  br label %170

321:                                              ; preds = %304, %170
  br label %322

322:                                              ; preds = %321, %168
  %323 = load i32, i32* %4, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %4, align 4
  br label %154

325:                                              ; preds = %100, %154
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
