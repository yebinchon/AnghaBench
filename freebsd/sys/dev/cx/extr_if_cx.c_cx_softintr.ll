; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_softintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_softintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i32, i64*, i64, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i64, i64 }

@MY_SOFT_INTR = common dso_local global i64 0, align 8
@NCX = common dso_local global i32 0, align 4
@NCHAN = common dso_local global i32 0, align 4
@channel = common dso_local global %struct.TYPE_16__** null, align 8
@T_NONE = common dso_local global i64 0, align 8
@M_ASYNC = common dso_local global i64 0, align 8
@CX_READ = common dso_local global i32 0, align 4
@TS_CAN_BYPASS_L_RINT = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@TS_TBLOCK = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@FLUSHO = common dso_local global i32 0, align 4
@CX_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx_softintr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %10

10:                                               ; preds = %310, %1
  %11 = load i64, i64* @MY_SOFT_INTR, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %311

13:                                               ; preds = %10
  store i64 0, i64* @MY_SOFT_INTR, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %307, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NCX, align 4
  %17 = load i32, i32* @NCHAN, align 4
  %18 = mul nsw i32 %16, %17
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %310

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @channel, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %21, i64 %23
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %3, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @T_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @M_ASYNC, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = icmp ne %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %49, %41, %33, %28, %20
  br label %307

62:                                               ; preds = %54
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %4, align 8
  %68 = call i32 (...) @splhigh()
  store i32 %68, i32* %7, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @CX_LOCK(i32* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CX_READ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %264

77:                                               ; preds = %62
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %5, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TS_CAN_BYPASS_L_RINT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %231

88:                                               ; preds = %77
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = call i32 @AQ_GSZ(%struct.TYPE_17__* %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %99, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %88
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CRTS_IFLOW, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %106
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IXOFF, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %115, %106
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @TS_TBLOCK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %124
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = call i32 @ttyblock(%struct.TYPE_18__* %136)
  br label %138

138:                                              ; preds = %133, %124, %115, %88
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, %139
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %149, %138
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %9, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @AQ_POP(%struct.TYPE_17__* %152, i32 %153)
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @CX_UNLOCK(i32* %155)
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @splx(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 8
  %164 = call i32 @putc(i32 %159, %struct.TYPE_19__* %163)
  %165 = call i32 (...) @splhigh()
  store i32 %165, i32* %7, align 4
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @CX_LOCK(i32* %166)
  br label %146

168:                                              ; preds = %146
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = call i32 @ttwakeup(%struct.TYPE_18__* %171)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @TS_TTSTOP, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %230

181:                                              ; preds = %168
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @IXANY, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %181
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 5
  %195 = load i64*, i64** %194, align 8
  %196 = load i64, i64* @VSTART, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 5
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* @VSTOP, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %198, %206
  br i1 %207, label %208, label %230

208:                                              ; preds = %190, %181
  %209 = load i32, i32* @TS_TTSTOP, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %210
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* @FLUSHO, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = and i32 %223, %218
  store i32 %224, i32* %222, align 8
  %225 = load i32, i32* @CX_WRITE, align 4
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %208, %190, %168
  br label %257

231:                                              ; preds = %77
  br label %232

232:                                              ; preds = %240, %231
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %235, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %232
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @AQ_POP(%struct.TYPE_17__* %241, i32 %242)
  %244 = load i32*, i32** %4, align 8
  %245 = call i32 @CX_UNLOCK(i32* %244)
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @splx(i32 %246)
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @ttyld_rint(%struct.TYPE_18__* %250, i32 %251)
  %253 = call i32 (...) @splhigh()
  store i32 %253, i32* %7, align 4
  %254 = load i32*, i32** %4, align 8
  %255 = call i32 @CX_LOCK(i32* %254)
  br label %232

256:                                              ; preds = %232
  br label %257

257:                                              ; preds = %256, %230
  %258 = load i32, i32* @CX_READ, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = and i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %257, %62
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @splx(i32 %265)
  %267 = load i32*, i32** %4, align 8
  %268 = call i32 @CX_UNLOCK(i32* %267)
  %269 = call i32 (...) @splhigh()
  store i32 %269, i32* %7, align 4
  %270 = load i32*, i32** %4, align 8
  %271 = call i32 @CX_LOCK(i32* %270)
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @CX_WRITE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %302

278:                                              ; preds = %264
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %278
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %287, align 8
  %289 = call i32 @ttyld_start(%struct.TYPE_18__* %288)
  br label %295

290:                                              ; preds = %278
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = call i32 @cx_oproc(%struct.TYPE_18__* %293)
  br label %295

295:                                              ; preds = %290, %285
  %296 = load i32, i32* @CX_WRITE, align 4
  %297 = xor i32 %296, -1
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = and i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %295, %264
  %303 = load i32*, i32** %4, align 8
  %304 = call i32 @CX_UNLOCK(i32* %303)
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @splx(i32 %305)
  br label %307

307:                                              ; preds = %302, %61
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %6, align 4
  br label %14

310:                                              ; preds = %14
  br label %10

311:                                              ; preds = %10
  ret void
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @CX_LOCK(i32*) #1

declare dso_local i32 @AQ_GSZ(%struct.TYPE_17__*) #1

declare dso_local i32 @ttyblock(%struct.TYPE_18__*) #1

declare dso_local i32 @AQ_POP(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @CX_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @putc(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ttwakeup(%struct.TYPE_18__*) #1

declare dso_local i32 @ttyld_rint(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ttyld_start(%struct.TYPE_18__*) #1

declare dso_local i32 @cx_oproc(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
