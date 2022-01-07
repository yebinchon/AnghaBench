; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_direct_drive_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_direct_drive_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpssas_softc = type { %struct.mps_softc* }
%struct.mps_softc = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mps_command = type { i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.ccb = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@READ_6 = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i32 0, align 4
@MPS_CM_FLAGS_DD_IO = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@READ_16 = common dso_local global i32 0, align 4
@WRITE_16 = common dso_local global i32 0, align 4
@READ_12 = common dso_local global i32 0, align 4
@WRITE_12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpssas_softc*, %struct.mps_command*, %union.ccb*)* @mpssas_direct_drive_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpssas_direct_drive_io(%struct.mpssas_softc* %0, %struct.mps_command* %1, %union.ccb* %2) #0 {
  %4 = alloca %struct.mpssas_softc*, align 8
  %5 = alloca %struct.mps_command*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.mps_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.mpssas_softc* %0, %struct.mpssas_softc** %4, align 8
  store %struct.mps_command* %1, %struct.mps_command** %5, align 8
  store %union.ccb* %2, %union.ccb** %6, align 8
  %19 = load %struct.mpssas_softc*, %struct.mpssas_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %19, i32 0, i32 0
  %21 = load %struct.mps_softc*, %struct.mps_softc** %20, align 8
  store %struct.mps_softc* %21, %struct.mps_softc** %8, align 8
  %22 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %23 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %18, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %34 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %168

37:                                               ; preds = %3
  %38 = load i32*, i32** %18, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @READ_6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %18, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WRITE_6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %168

49:                                               ; preds = %43, %37
  %50 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %51 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %54 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %52, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 31
  %61 = shl i32 %60, 16
  %62 = load i32*, i32** %18, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %61, %65
  %67 = load i32*, i32** %18, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %66, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %76 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %74, %77
  br i1 %78, label %79, label %167

79:                                               ; preds = %49
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %82 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %80, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %90 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp sle i32 %88, %91
  br i1 %92, label %93, label %166

93:                                               ; preds = %79
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %96 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %94, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %101 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %99, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %106 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = srem i32 %104, %107
  store i32 %108, i32* %14, align 4
  %109 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %110 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %109, i32 0, i32 6
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @htole16(i32 %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %125 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %130 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %128, %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %10, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32* %139, i32** %15, align 8
  %140 = load i32, i32* %10, align 4
  %141 = ashr i32 %140, 16
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32*, i32** %15, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32* %148, i32** %15, align 8
  %149 = load i32, i32* %10, align 4
  %150 = ashr i32 %149, 8
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32*, i32** %15, align 8
  store i32 %151, i32* %152, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  store i32* %157, i32** %15, align 8
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32*, i32** %15, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @MPS_CM_FLAGS_DD_IO, align 4
  %162 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %163 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %93, %79
  br label %167

167:                                              ; preds = %166, %49
  br label %607

168:                                              ; preds = %43, %3
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %173 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %607

176:                                              ; preds = %168
  %177 = load i32*, i32** %18, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @READ_10, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %212, label %182

182:                                              ; preds = %176
  %183 = load i32*, i32** %18, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @WRITE_10, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %212, label %188

188:                                              ; preds = %182
  %189 = load i32*, i32** %18, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @READ_16, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %188
  %195 = load i32*, i32** %18, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @WRITE_16, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %212, label %200

200:                                              ; preds = %194
  %201 = load i32*, i32** %18, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @READ_12, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = load i32*, i32** %18, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @WRITE_12, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %607

212:                                              ; preds = %206, %200, %194, %188, %182, %176
  %213 = load i32*, i32** %18, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @READ_10, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %253, label %218

218:                                              ; preds = %212
  %219 = load i32*, i32** %18, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @WRITE_10, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %253, label %224

224:                                              ; preds = %218
  %225 = load i32*, i32** %18, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @READ_12, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %253, label %230

230:                                              ; preds = %224
  %231 = load i32*, i32** %18, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @WRITE_12, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %253, label %236

236:                                              ; preds = %230
  %237 = load i32*, i32** %18, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %18, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %239, %242
  %244 = load i32*, i32** %18, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 4
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %243, %246
  %248 = load i32*, i32** %18, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 5
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %247, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %434, label %253

253:                                              ; preds = %236, %230, %224, %218, %212
  %254 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %255 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %258 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = ashr i32 %256, %259
  store i32 %260, i32* %13, align 4
  %261 = load i32*, i32** %18, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @READ_12, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %284, label %266

266:                                              ; preds = %253
  %267 = load i32*, i32** %18, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @WRITE_12, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %284, label %272

272:                                              ; preds = %266
  %273 = load i32*, i32** %18, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @READ_10, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %284, label %278

278:                                              ; preds = %272
  %279 = load i32*, i32** %18, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @WRITE_10, align 4
  %283 = icmp eq i32 %281, %282
  br label %284

284:                                              ; preds = %278, %272, %266, %253
  %285 = phi i1 [ true, %272 ], [ true, %266 ], [ true, %253 ], [ %283, %278 ]
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 2, i32 6
  store i32 %287, i32* %16, align 4
  %288 = load i32*, i32** %18, align 8
  %289 = load i32, i32* %16, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 24
  %294 = load i32*, i32** %18, align 8
  %295 = load i32, i32* %16, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = shl i32 %299, 16
  %301 = or i32 %293, %300
  %302 = load i32*, i32** %18, align 8
  %303 = load i32, i32* %16, align 4
  %304 = add nsw i32 %303, 2
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 8
  %309 = or i32 %301, %308
  %310 = load i32*, i32** %18, align 8
  %311 = load i32, i32* %16, align 4
  %312 = add nsw i32 %311, 3
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = or i32 %309, %315
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %317, %318
  %320 = sub nsw i32 %319, 1
  %321 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %322 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = icmp sle i32 %320, %323
  br i1 %324, label %325, label %433

325:                                              ; preds = %284
  %326 = load i32, i32* %9, align 4
  %327 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %328 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = sub nsw i32 %329, 1
  %331 = and i32 %326, %330
  store i32 %331, i32* %11, align 4
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %332, %333
  %335 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %336 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = icmp sle i32 %334, %337
  br i1 %338, label %339, label %432

339:                                              ; preds = %325
  %340 = load i32, i32* %9, align 4
  %341 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %342 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = ashr i32 %340, %343
  store i32 %344, i32* %10, align 4
  %345 = load i32, i32* %10, align 4
  %346 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %347 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 8
  %349 = sdiv i32 %345, %348
  store i32 %349, i32* %12, align 4
  %350 = load i32, i32* %10, align 4
  %351 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %352 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = srem i32 %350, %353
  store i32 %354, i32* %14, align 4
  %355 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %356 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %355, i32 0, i32 6
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %356, align 8
  %358 = load i32, i32* %14, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = call i8* @htole16(i32 %362)
  %364 = ptrtoint i8* %363 to i64
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 0
  store i64 %364, i64* %366, align 8
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %371 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 0
  store i64 %369, i64* %373, align 8
  %374 = load i32, i32* %12, align 4
  %375 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %376 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = shl i32 %374, %377
  %379 = load i32, i32* %11, align 4
  %380 = add nsw i32 %378, %379
  store i32 %380, i32* %10, align 4
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %16, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32* %387, i32** %15, align 8
  %388 = load i32, i32* %10, align 4
  %389 = ashr i32 %388, 24
  store i32 %389, i32* %17, align 4
  %390 = load i32, i32* %17, align 4
  %391 = load i32*, i32** %15, align 8
  store i32 %390, i32* %391, align 4
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %16, align 4
  %397 = add nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %395, i64 %398
  store i32* %399, i32** %15, align 8
  %400 = load i32, i32* %10, align 4
  %401 = ashr i32 %400, 16
  store i32 %401, i32* %17, align 4
  %402 = load i32, i32* %17, align 4
  %403 = load i32*, i32** %15, align 8
  store i32 %402, i32* %403, align 4
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %16, align 4
  %409 = add nsw i32 %408, 2
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %407, i64 %410
  store i32* %411, i32** %15, align 8
  %412 = load i32, i32* %10, align 4
  %413 = ashr i32 %412, 8
  store i32 %413, i32* %17, align 4
  %414 = load i32, i32* %17, align 4
  %415 = load i32*, i32** %15, align 8
  store i32 %414, i32* %415, align 4
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %16, align 4
  %421 = add nsw i32 %420, 3
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %419, i64 %422
  store i32* %423, i32** %15, align 8
  %424 = load i32, i32* %10, align 4
  store i32 %424, i32* %17, align 4
  %425 = load i32, i32* %17, align 4
  %426 = load i32*, i32** %15, align 8
  store i32 %425, i32* %426, align 4
  %427 = load i32, i32* @MPS_CM_FLAGS_DD_IO, align 4
  %428 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %429 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %430, %427
  store i32 %431, i32* %429, align 4
  br label %432

432:                                              ; preds = %339, %325
  br label %433

433:                                              ; preds = %432, %284
  br label %606

434:                                              ; preds = %236
  %435 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %436 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %439 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = ashr i32 %437, %440
  store i32 %441, i32* %13, align 4
  %442 = load i32*, i32** %18, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 2
  %444 = load i32, i32* %443, align 4
  %445 = shl i32 %444, 54
  %446 = load i32*, i32** %18, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 3
  %448 = load i32, i32* %447, align 4
  %449 = shl i32 %448, 48
  %450 = or i32 %445, %449
  %451 = load i32*, i32** %18, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 4
  %453 = load i32, i32* %452, align 4
  %454 = shl i32 %453, 40
  %455 = or i32 %450, %454
  %456 = load i32*, i32** %18, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 5
  %458 = load i32, i32* %457, align 4
  %459 = shl i32 %458, 32
  %460 = or i32 %455, %459
  %461 = load i32*, i32** %18, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 6
  %463 = load i32, i32* %462, align 4
  %464 = shl i32 %463, 24
  %465 = or i32 %460, %464
  %466 = load i32*, i32** %18, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 7
  %468 = load i32, i32* %467, align 4
  %469 = shl i32 %468, 16
  %470 = or i32 %465, %469
  %471 = load i32*, i32** %18, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 8
  %473 = load i32, i32* %472, align 4
  %474 = shl i32 %473, 8
  %475 = or i32 %470, %474
  %476 = load i32*, i32** %18, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 9
  %478 = load i32, i32* %477, align 4
  %479 = or i32 %475, %478
  store i32 %479, i32* %9, align 4
  %480 = load i32, i32* %9, align 4
  %481 = load i32, i32* %13, align 4
  %482 = add nsw i32 %480, %481
  %483 = sub nsw i32 %482, 1
  %484 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %485 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 4
  %487 = icmp sle i32 %483, %486
  br i1 %487, label %488, label %605

488:                                              ; preds = %434
  %489 = load i32, i32* %9, align 4
  %490 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %491 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = sub nsw i32 %492, 1
  %494 = and i32 %489, %493
  store i32 %494, i32* %11, align 4
  %495 = load i32, i32* %11, align 4
  %496 = load i32, i32* %13, align 4
  %497 = add nsw i32 %495, %496
  %498 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %499 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 8
  %501 = icmp sle i32 %497, %500
  br i1 %501, label %502, label %604

502:                                              ; preds = %488
  %503 = load i32, i32* %9, align 4
  %504 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %505 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %504, i32 0, i32 4
  %506 = load i32, i32* %505, align 4
  %507 = ashr i32 %503, %506
  store i32 %507, i32* %10, align 4
  %508 = load i32, i32* %10, align 4
  %509 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %510 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %509, i32 0, i32 5
  %511 = load i32, i32* %510, align 8
  %512 = sdiv i32 %508, %511
  store i32 %512, i32* %12, align 4
  %513 = load i32, i32* %10, align 4
  %514 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %515 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 8
  %517 = srem i32 %513, %516
  store i32 %517, i32* %14, align 4
  %518 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %519 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %518, i32 0, i32 6
  %520 = load %struct.TYPE_6__*, %struct.TYPE_6__** %519, align 8
  %521 = load i32, i32* %14, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = call i8* @htole16(i32 %525)
  %527 = ptrtoint i8* %526 to i64
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 0
  store i64 %527, i64* %529, align 8
  %530 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %531 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %534 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 0
  store i64 %532, i64* %536, align 8
  %537 = load i32, i32* %12, align 4
  %538 = load %struct.mps_softc*, %struct.mps_softc** %8, align 8
  %539 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %538, i32 0, i32 4
  %540 = load i32, i32* %539, align 4
  %541 = shl i32 %537, %540
  %542 = load i32, i32* %11, align 4
  %543 = add nsw i32 %541, %542
  store i32 %543, i32* %10, align 4
  %544 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %545, i32 0, i32 0
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 2
  store i32 0, i32* %548, align 4
  %549 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %550, i32 0, i32 0
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 3
  store i32 0, i32* %553, align 4
  %554 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %555, i32 0, i32 0
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 4
  store i32 0, i32* %558, align 4
  %559 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %560, i32 0, i32 0
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 5
  store i32 0, i32* %563, align 4
  %564 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %565 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %565, i32 0, i32 0
  %567 = load i32*, i32** %566, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 6
  store i32* %568, i32** %15, align 8
  %569 = load i32, i32* %10, align 4
  %570 = ashr i32 %569, 24
  store i32 %570, i32* %17, align 4
  %571 = load i32, i32* %17, align 4
  %572 = load i32*, i32** %15, align 8
  store i32 %571, i32* %572, align 4
  %573 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %574, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 7
  store i32* %577, i32** %15, align 8
  %578 = load i32, i32* %10, align 4
  %579 = ashr i32 %578, 16
  store i32 %579, i32* %17, align 4
  %580 = load i32, i32* %17, align 4
  %581 = load i32*, i32** %15, align 8
  store i32 %580, i32* %581, align 4
  %582 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 1
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 0
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 8
  store i32* %586, i32** %15, align 8
  %587 = load i32, i32* %10, align 4
  %588 = ashr i32 %587, 8
  store i32 %588, i32* %17, align 4
  %589 = load i32, i32* %17, align 4
  %590 = load i32*, i32** %15, align 8
  store i32 %589, i32* %590, align 4
  %591 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 0
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 9
  store i32* %595, i32** %15, align 8
  %596 = load i32, i32* %10, align 4
  store i32 %596, i32* %17, align 4
  %597 = load i32, i32* %17, align 4
  %598 = load i32*, i32** %15, align 8
  store i32 %597, i32* %598, align 4
  %599 = load i32, i32* @MPS_CM_FLAGS_DD_IO, align 4
  %600 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %601 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = or i32 %602, %599
  store i32 %603, i32* %601, align 4
  br label %604

604:                                              ; preds = %502, %488
  br label %605

605:                                              ; preds = %604, %434
  br label %606

606:                                              ; preds = %605, %433
  br label %607

607:                                              ; preds = %167, %606, %206, %168
  ret void
}

declare dso_local i8* @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
