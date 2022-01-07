; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical2iov.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical2iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_11__, i64, %struct.TYPE_16__*, %struct.device*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.device = type { i32 (%struct.device*, %struct.iovec*, i32*, i32, i32*, i32*)*, i64 }
%struct.iovec = type { i32, i32* }

@OPT_KEEPSESSION = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"physical2iov: No room for physical + throughput + device !\0A\00", align 1
@SAMPLE_PERIOD = common dso_local global i32 0, align 4
@LogALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"physical2iov: Out of memory (%d bytes)\0A\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical2iov(%struct.physical* %0, %struct.iovec* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.physical*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %8, align 8
  store %struct.iovec* %1, %struct.iovec** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.device* null, %struct.device** %14, align 8
  %16 = load %struct.physical*, %struct.physical** %8, align 8
  %17 = icmp ne %struct.physical* %16, null
  br i1 %17, label %18, label %106

18:                                               ; preds = %6
  %19 = load %struct.physical*, %struct.physical** %8, align 8
  %20 = getelementptr inbounds %struct.physical, %struct.physical* %19, i32 0, i32 5
  %21 = call i32 @hdlc_StopTimer(i32* %20)
  %22 = load %struct.physical*, %struct.physical** %8, align 8
  %23 = call i32 @lqr_StopTimer(%struct.physical* %22)
  %24 = load %struct.physical*, %struct.physical** %8, align 8
  %25 = getelementptr inbounds %struct.physical, %struct.physical* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = call i32 @timer_Stop(i32* %28)
  %30 = load %struct.physical*, %struct.physical** %8, align 8
  %31 = getelementptr inbounds %struct.physical, %struct.physical* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = call i32 @timer_Stop(i32* %34)
  %36 = load %struct.physical*, %struct.physical** %8, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = call i32 @timer_Stop(i32* %40)
  %42 = load %struct.physical*, %struct.physical** %8, align 8
  %43 = getelementptr inbounds %struct.physical, %struct.physical* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = call i32 @timer_Stop(i32* %46)
  %48 = load %struct.physical*, %struct.physical** %8, align 8
  %49 = getelementptr inbounds %struct.physical, %struct.physical* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = call i32 @timer_Stop(i32* %52)
  %54 = load %struct.physical*, %struct.physical** %8, align 8
  %55 = getelementptr inbounds %struct.physical, %struct.physical* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = call i32 @timer_Stop(i32* %58)
  %60 = load %struct.physical*, %struct.physical** %8, align 8
  %61 = getelementptr inbounds %struct.physical, %struct.physical* %60, i32 0, i32 4
  %62 = load %struct.device*, %struct.device** %61, align 8
  %63 = icmp ne %struct.device* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %18
  %65 = load %struct.physical*, %struct.physical** %8, align 8
  %66 = getelementptr inbounds %struct.physical, %struct.physical* %65, i32 0, i32 4
  %67 = load %struct.device*, %struct.device** %66, align 8
  store %struct.device* %67, %struct.device** %14, align 8
  %68 = load %struct.physical*, %struct.physical** %8, align 8
  %69 = getelementptr inbounds %struct.physical, %struct.physical* %68, i32 0, i32 4
  %70 = load %struct.device*, %struct.device** %69, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.device*
  %74 = load %struct.physical*, %struct.physical** %8, align 8
  %75 = getelementptr inbounds %struct.physical, %struct.physical* %74, i32 0, i32 4
  store %struct.device* %73, %struct.device** %75, align 8
  br label %76

76:                                               ; preds = %64, %18
  %77 = load %struct.physical*, %struct.physical** %8, align 8
  %78 = getelementptr inbounds %struct.physical, %struct.physical* %77, i32 0, i32 3
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @OPT_KEEPSESSION, align 4
  %83 = call i64 @Enabled(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %76
  %86 = load %struct.physical*, %struct.physical** %8, align 8
  %87 = getelementptr inbounds %struct.physical, %struct.physical* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @tcgetpgrp(i32 %88)
  %90 = call i64 (...) @getpgrp()
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85, %76
  %93 = call i64 (...) @getpid()
  %94 = load %struct.physical*, %struct.physical** %8, align 8
  %95 = getelementptr inbounds %struct.physical, %struct.physical* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %99

96:                                               ; preds = %85
  %97 = load %struct.physical*, %struct.physical** %8, align 8
  %98 = getelementptr inbounds %struct.physical, %struct.physical* %97, i32 0, i32 2
  store i64 -1, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %92
  %100 = load %struct.physical*, %struct.physical** %8, align 8
  %101 = getelementptr inbounds %struct.physical, %struct.physical* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = call i32 @timer_Stop(i32* %104)
  br label %106

106:                                              ; preds = %99, %6
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 2
  %110 = load i32, i32* %11, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load i32, i32* @LogERROR, align 4
  %114 = call i32 (i32, i8*, ...) @log_Printf(i32 %113, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.physical*, %struct.physical** %8, align 8
  %116 = icmp ne %struct.physical* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.physical*, %struct.physical** %8, align 8
  %119 = call i32 @free(%struct.physical* %118)
  br label %120

120:                                              ; preds = %117, %112
  store i32 -1, i32* %7, align 4
  br label %298

121:                                              ; preds = %106
  %122 = load %struct.physical*, %struct.physical** %8, align 8
  %123 = bitcast %struct.physical* %122 to i8*
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.iovec*, %struct.iovec** %9, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.iovec, %struct.iovec* %125, i64 %128
  %130 = getelementptr inbounds %struct.iovec, %struct.iovec* %129, i32 0, i32 1
  store i32* %124, i32** %130, align 8
  %131 = load %struct.iovec*, %struct.iovec** %9, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.iovec, %struct.iovec* %131, i64 %134
  %136 = getelementptr inbounds %struct.iovec, %struct.iovec* %135, i32 0, i32 0
  store i32 88, i32* %136, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.physical*, %struct.physical** %8, align 8
  %141 = icmp ne %struct.physical* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %121
  %143 = load %struct.physical*, %struct.physical** %8, align 8
  %144 = getelementptr inbounds %struct.physical, %struct.physical* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i8*
  br label %152

151:                                              ; preds = %121
  br label %152

152:                                              ; preds = %151, %142
  %153 = phi i8* [ %150, %142 ], [ null, %151 ]
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.iovec*, %struct.iovec** %9, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.iovec, %struct.iovec* %155, i64 %158
  %160 = getelementptr inbounds %struct.iovec, %struct.iovec* %159, i32 0, i32 1
  store i32* %154, i32** %160, align 8
  %161 = load i32, i32* @SAMPLE_PERIOD, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.iovec*, %struct.iovec** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.iovec, %struct.iovec* %165, i64 %168
  %170 = getelementptr inbounds %struct.iovec, %struct.iovec* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.physical*, %struct.physical** %8, align 8
  %175 = icmp ne %struct.physical* %174, null
  br i1 %175, label %176, label %185

176:                                              ; preds = %152
  %177 = load %struct.physical*, %struct.physical** %8, align 8
  %178 = getelementptr inbounds %struct.physical, %struct.physical* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i8*
  br label %186

185:                                              ; preds = %152
  br label %186

186:                                              ; preds = %185, %176
  %187 = phi i8* [ %184, %176 ], [ null, %185 ]
  %188 = bitcast i8* %187 to i32*
  %189 = load %struct.iovec*, %struct.iovec** %9, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.iovec, %struct.iovec* %189, i64 %192
  %194 = getelementptr inbounds %struct.iovec, %struct.iovec* %193, i32 0, i32 1
  store i32* %188, i32** %194, align 8
  %195 = load i32, i32* @SAMPLE_PERIOD, align 4
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.iovec*, %struct.iovec** %9, align 8
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.iovec, %struct.iovec* %199, i64 %202
  %204 = getelementptr inbounds %struct.iovec, %struct.iovec* %203, i32 0, i32 0
  store i32 %198, i32* %204, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = call i32 (...) @physical_MaxDeviceSize()
  store i32 %208, i32* %15, align 4
  %209 = load %struct.physical*, %struct.physical** %8, align 8
  %210 = icmp ne %struct.physical* %209, null
  br i1 %210, label %211, label %271

211:                                              ; preds = %186
  %212 = load %struct.device*, %struct.device** %14, align 8
  %213 = icmp ne %struct.device* %212, null
  br i1 %213, label %214, label %230

214:                                              ; preds = %211
  %215 = load %struct.device*, %struct.device** %14, align 8
  %216 = getelementptr inbounds %struct.device, %struct.device* %215, i32 0, i32 0
  %217 = load i32 (%struct.device*, %struct.iovec*, i32*, i32, i32*, i32*)*, i32 (%struct.device*, %struct.iovec*, i32*, i32, i32*, i32*)** %216, align 8
  %218 = icmp ne i32 (%struct.device*, %struct.iovec*, i32*, i32, i32*, i32*)* %217, null
  br i1 %218, label %219, label %230

219:                                              ; preds = %214
  %220 = load %struct.device*, %struct.device** %14, align 8
  %221 = getelementptr inbounds %struct.device, %struct.device* %220, i32 0, i32 0
  %222 = load i32 (%struct.device*, %struct.iovec*, i32*, i32, i32*, i32*)*, i32 (%struct.device*, %struct.iovec*, i32*, i32, i32*, i32*)** %221, align 8
  %223 = load %struct.device*, %struct.device** %14, align 8
  %224 = load %struct.iovec*, %struct.iovec** %9, align 8
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %11, align 4
  %227 = load i32*, i32** %12, align 8
  %228 = load i32*, i32** %13, align 8
  %229 = call i32 %222(%struct.device* %223, %struct.iovec* %224, i32* %225, i32 %226, i32* %227, i32* %228)
  br label %270

230:                                              ; preds = %214, %211
  %231 = load i32, i32* %15, align 4
  %232 = call i32* @malloc(i32 %231)
  %233 = load %struct.iovec*, %struct.iovec** %9, align 8
  %234 = load i32*, i32** %10, align 8
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.iovec, %struct.iovec* %233, i64 %236
  %238 = getelementptr inbounds %struct.iovec, %struct.iovec* %237, i32 0, i32 1
  store i32* %232, i32** %238, align 8
  %239 = icmp eq i32* %232, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %230
  %241 = load i32, i32* @LogALERT, align 4
  %242 = load i32, i32* %15, align 4
  %243 = call i32 (i32, i8*, ...) @log_Printf(i32 %241, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* @EX_OSERR, align 4
  %245 = call i32 @AbortProgram(i32 %244)
  br label %246

246:                                              ; preds = %240, %230
  %247 = load %struct.device*, %struct.device** %14, align 8
  %248 = icmp ne %struct.device* %247, null
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = load %struct.iovec*, %struct.iovec** %9, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.iovec, %struct.iovec* %250, i64 %253
  %255 = getelementptr inbounds %struct.iovec, %struct.iovec* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.device*, %struct.device** %14, align 8
  %258 = call i32 @memcpy(i32* %256, %struct.device* %257, i32 16)
  br label %259

259:                                              ; preds = %249, %246
  %260 = load i32, i32* %15, align 4
  %261 = load %struct.iovec*, %struct.iovec** %9, align 8
  %262 = load i32*, i32** %10, align 8
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.iovec, %struct.iovec* %261, i64 %264
  %266 = getelementptr inbounds %struct.iovec, %struct.iovec* %265, i32 0, i32 0
  store i32 %260, i32* %266, align 8
  %267 = load i32*, i32** %10, align 8
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %259, %219
  br label %288

271:                                              ; preds = %186
  %272 = load %struct.iovec*, %struct.iovec** %9, align 8
  %273 = load i32*, i32** %10, align 8
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.iovec, %struct.iovec* %272, i64 %275
  %277 = getelementptr inbounds %struct.iovec, %struct.iovec* %276, i32 0, i32 1
  store i32* null, i32** %277, align 8
  %278 = load i32, i32* %15, align 4
  %279 = load %struct.iovec*, %struct.iovec** %9, align 8
  %280 = load i32*, i32** %10, align 8
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.iovec, %struct.iovec* %279, i64 %282
  %284 = getelementptr inbounds %struct.iovec, %struct.iovec* %283, i32 0, i32 0
  store i32 %278, i32* %284, align 8
  %285 = load i32*, i32** %10, align 8
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %271, %270
  %289 = load %struct.physical*, %struct.physical** %8, align 8
  %290 = icmp ne %struct.physical* %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load %struct.physical*, %struct.physical** %8, align 8
  %293 = getelementptr inbounds %struct.physical, %struct.physical* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  br label %296

295:                                              ; preds = %288
  br label %296

296:                                              ; preds = %295, %291
  %297 = phi i32 [ %294, %291 ], [ 0, %295 ]
  store i32 %297, i32* %7, align 4
  br label %298

298:                                              ; preds = %296, %120
  %299 = load i32, i32* %7, align 4
  ret i32 %299
}

declare dso_local i32 @hdlc_StopTimer(i32*) #1

declare dso_local i32 @lqr_StopTimer(%struct.physical*) #1

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i64 @Enabled(i32, i32) #1

declare dso_local i64 @tcgetpgrp(i32) #1

declare dso_local i64 @getpgrp(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.physical*) #1

declare dso_local i32 @physical_MaxDeviceSize(...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @AbortProgram(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
