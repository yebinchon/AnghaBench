; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_msp_autodetect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_msp_autodetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"3430G\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"3415D\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: Result of autodetect after %dms: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: Stereo reg 0x18 a: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: Stereo reg 0x18 b: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: Stereo reg 0x18 c: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: Bilingual mode detected\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s: Unknown autodetection result value: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msp_autodetect(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i32 5)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @msp_dpl_write(%struct.TYPE_7__* %12, i32 %15, i32 16, i32 48, i32 8195)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @msp_dpl_write(%struct.TYPE_7__* %17, i32 %20, i32 16, i32 32, i32 32)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @msp_dpl_write(%struct.TYPE_7__* %22, i32 %25, i32 18, i32 14, i32 9219)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @msp_dpl_write(%struct.TYPE_7__* %27, i32 %30, i32 18, i32 8, i32 800)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @msp_dpl_write(%struct.TYPE_7__* %32, i32 %35, i32 18, i32 0, i32 29440)
  br label %260

37:                                               ; preds = %1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 5)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %74

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @msp_dpl_write(%struct.TYPE_7__* %54, i32 %57, i32 18, i32 0, i32 29440)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @msp_dpl_write(%struct.TYPE_7__* %59, i32 %62, i32 18, i32 13, i32 6400)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @msp_dpl_write(%struct.TYPE_7__* %64, i32 %67, i32 18, i32 8, i32 544)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @msp_dpl_write(%struct.TYPE_7__* %69, i32 %72, i32 18, i32 19, i32 256)
  br label %259

74:                                               ; preds = %48
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @msp_dpl_write(%struct.TYPE_7__* %80, i32 %83, i32 18, i32 0, i32 29440)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @msp_dpl_write(%struct.TYPE_7__* %85, i32 %88, i32 18, i32 8, i32 0)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @msp_dpl_write(%struct.TYPE_7__* %90, i32 %93, i32 16, i32 32, i32 1)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @msp_dpl_write(%struct.TYPE_7__* %95, i32 %98, i32 16, i32 33, i32 1)
  br label %258

100:                                              ; preds = %74
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %257

105:                                              ; preds = %100
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @msp_dpl_write(%struct.TYPE_7__* %106, i32 %109, i32 18, i32 0, i32 29440)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @msp_dpl_write(%struct.TYPE_7__* %111, i32 %114, i32 16, i32 32, i32 1)
  store i32 10, i32* %4, align 4
  br label %116

116:                                              ; preds = %131, %105
  %117 = call i32 @DELAY(i32 100000)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @msp_dpl_read(%struct.TYPE_7__* %118, i32 %121, i32 16, i32 126)
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %3, align 4
  %127 = icmp sgt i32 %126, 255
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 50
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i1 [ false, %125 ], [ %130, %128 ]
  br i1 %132, label %116, label %133

133:                                              ; preds = %131
  %134 = load i64, i64* @bootverbose, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = call i8* @bktr_name(%struct.TYPE_7__* %137)
  %139 = load i32, i32* %4, align 4
  %140 = mul nsw i32 %139, 10
  %141 = load i32, i32* %3, align 4
  %142 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %138, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %136, %133
  %144 = load i32, i32* %3, align 4
  switch i32 %144, label %247 [
    i32 0, label %145
    i32 2, label %146
    i32 3, label %147
    i32 8, label %240
    i32 9, label %246
    i32 10, label %246
  ]

145:                                              ; preds = %143
  br label %256

146:                                              ; preds = %143
  br label %256

147:                                              ; preds = %143
  %148 = call i32 @DELAY(i32 20000)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @msp_dpl_read(%struct.TYPE_7__* %149, i32 %152, i32 18, i32 24)
  store i32 %153, i32* %5, align 4
  %154 = load i64, i64* @bootverbose, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %147
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %158 = call i8* @bktr_name(%struct.TYPE_7__* %157)
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %147
  %162 = call i32 @DELAY(i32 20000)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @msp_dpl_read(%struct.TYPE_7__* %163, i32 %166, i32 18, i32 24)
  store i32 %167, i32* %5, align 4
  %168 = load i64, i64* @bootverbose, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = call i8* @bktr_name(%struct.TYPE_7__* %171)
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %161
  %176 = call i32 @DELAY(i32 20000)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @msp_dpl_read(%struct.TYPE_7__* %177, i32 %180, i32 18, i32 24)
  store i32 %181, i32* %5, align 4
  %182 = load i64, i64* @bootverbose, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %175
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = call i8* @bktr_name(%struct.TYPE_7__* %185)
  %187 = load i32, i32* %5, align 4
  %188 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %175
  %190 = load i32, i32* %5, align 4
  %191 = icmp sgt i32 %190, 256
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = load i32, i32* %5, align 4
  %194 = icmp slt i32 %193, 32768
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @msp_dpl_write(%struct.TYPE_7__* %196, i32 %199, i32 18, i32 8, i32 32)
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @msp_dpl_write(%struct.TYPE_7__* %201, i32 %204, i32 18, i32 5, i32 16168)
  br label %239

206:                                              ; preds = %192, %189
  %207 = load i32, i32* %5, align 4
  %208 = icmp sgt i32 %207, 32768
  br i1 %208, label %209, label %227

209:                                              ; preds = %206
  %210 = load i64, i64* @bootverbose, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %214 = call i8* @bktr_name(%struct.TYPE_7__* %213)
  %215 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %212, %209
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @msp_dpl_write(%struct.TYPE_7__* %217, i32 %220, i32 18, i32 8, i32 0)
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @msp_dpl_write(%struct.TYPE_7__* %222, i32 %225, i32 18, i32 5, i32 0)
  br label %238

227:                                              ; preds = %206
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @msp_dpl_write(%struct.TYPE_7__* %228, i32 %231, i32 18, i32 8, i32 48)
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @msp_dpl_write(%struct.TYPE_7__* %233, i32 %236, i32 18, i32 5, i32 16136)
  br label %238

238:                                              ; preds = %227, %216
  br label %239

239:                                              ; preds = %238, %195
  br label %256

240:                                              ; preds = %143
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @msp_dpl_write(%struct.TYPE_7__* %241, i32 %244, i32 16, i32 33, i32 1)
  br label %256

246:                                              ; preds = %143, %143
  br label %256

247:                                              ; preds = %143
  %248 = load i64, i64* @bootverbose, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %252 = call i8* @bktr_name(%struct.TYPE_7__* %251)
  %253 = load i32, i32* %3, align 4
  %254 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %252, i32 %253)
  br label %255

255:                                              ; preds = %250, %247
  br label %256

256:                                              ; preds = %255, %246, %240, %239, %146, %145
  br label %257

257:                                              ; preds = %256, %100
  br label %258

258:                                              ; preds = %257, %79
  br label %259

259:                                              ; preds = %258, %53
  br label %260

260:                                              ; preds = %259, %11
  ret void
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @msp_dpl_write(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @msp_dpl_read(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @bktr_name(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
