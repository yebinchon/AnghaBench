; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_start_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_cxddk.c_cx_start_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_9__*, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64*, i64* }

@CCR_ENRX = common dso_local global i32 0, align 4
@IER_RXD = common dso_local global i32 0, align 4
@CMR_RXDMA = common dso_local global i32 0, align 4
@M_ASYNC = common dso_local global i32 0, align 4
@IER_RET = common dso_local global i32 0, align 4
@CCR_ENTX = common dso_local global i32 0, align 4
@IER_TXD = common dso_local global i32 0, align 4
@IER_TXMPTY = common dso_local global i32 0, align 4
@CMR_TXDMA = common dso_local global i32 0, align 4
@CMR_ASYNC = common dso_local global i32 0, align 4
@CMR_HDLC = common dso_local global i32 0, align 4
@CCR_CLRCH = common dso_local global i32 0, align 4
@CCR_INITCH = common dso_local global i32 0, align 4
@BSTS_OWN24 = common dso_local global i32 0, align 4
@IER_MDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx_start_chan(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 12
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %96

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 11
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 10
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 9
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 8
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = bitcast %struct.TYPE_11__* %49 to i8*
  %51 = ptrtoint i8* %48 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = add i64 %44, %53
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = bitcast %struct.TYPE_11__* %62 to i8*
  %64 = ptrtoint i8* %61 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = add i64 %57, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = bitcast %struct.TYPE_11__* %75 to i8*
  %77 = ptrtoint i8* %74 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = add i64 %70, %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = bitcast %struct.TYPE_11__* %88 to i8*
  %90 = ptrtoint i8* %87 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = add i64 %83, %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %15, %3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CAR(i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 3
  %105 = call i32 @outb(i32 %100, i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ARBADRU(i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = lshr i64 %112, 16
  %114 = trunc i64 %113 to i16
  %115 = zext i16 %114 to i32
  %116 = call i32 @outw(i32 %109, i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ARBADRL(i32 %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i16
  %125 = zext i16 %124 to i32
  %126 = call i32 @outw(i32 %120, i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BRBADRU(i32 %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = lshr i64 %133, 16
  %135 = trunc i64 %134 to i16
  %136 = zext i16 %135 to i32
  %137 = call i32 @outw(i32 %130, i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @BRBADRL(i32 %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i16
  %146 = zext i16 %145 to i32
  %147 = call i32 @outw(i32 %141, i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ATBADRU(i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = lshr i64 %154, 16
  %156 = trunc i64 %155 to i16
  %157 = zext i16 %156 to i32
  %158 = call i32 @outw(i32 %151, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ATBADRL(i32 %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i16
  %167 = zext i16 %166 to i32
  %168 = call i32 @outw(i32 %162, i32 %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @BTBADRU(i32 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = lshr i64 %175, 16
  %177 = trunc i64 %176 to i16
  %178 = zext i16 %177 to i32
  %179 = call i32 @outw(i32 %172, i32 %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @BTBADRL(i32 %182)
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i16
  %188 = zext i16 %187 to i32
  %189 = call i32 @outw(i32 %183, i32 %188)
  %190 = load i32, i32* @CCR_ENRX, align 4
  %191 = load i32, i32* %7, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* @IER_RXD, align 4
  %194 = load i32, i32* %9, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %9, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %96
  %203 = load i32, i32* @CMR_RXDMA, align 4
  %204 = load i32, i32* %8, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %8, align 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @M_ASYNC, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %202
  %212 = load i32, i32* @IER_RET, align 4
  %213 = load i32, i32* %9, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %9, align 4
  br label %215

215:                                              ; preds = %211, %202
  br label %216

216:                                              ; preds = %215, %96
  %217 = load i32, i32* @CCR_ENTX, align 4
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @M_ASYNC, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %216
  %226 = load i32, i32* @IER_TXD, align 4
  br label %231

227:                                              ; preds = %216
  %228 = load i32, i32* @IER_TXD, align 4
  %229 = load i32, i32* @IER_TXMPTY, align 4
  %230 = or i32 %228, %229
  br label %231

231:                                              ; preds = %227, %225
  %232 = phi i32 [ %226, %225 ], [ %230, %227 ]
  %233 = load i32, i32* %9, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %9, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 7
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load i32, i32* @CMR_TXDMA, align 4
  %243 = load i32, i32* %8, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %241, %231
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @CMR(i32 %248)
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @M_ASYNC, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %245
  %257 = load i32, i32* @CMR_ASYNC, align 4
  br label %260

258:                                              ; preds = %245
  %259 = load i32, i32* @CMR_HDLC, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  %262 = or i32 %250, %261
  %263 = call i32 @outb(i32 %249, i32 %262)
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @CCR_CLRCH, align 4
  %268 = call i32 @cx_cmd(i32 %266, i32 %267)
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @CCR_INITCH, align 4
  %273 = load i32, i32* %7, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @cx_cmd(i32 %271, i32 %274)
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @M_ASYNC, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %260
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @CCR_ENTX, align 4
  %286 = call i32 @cx_cmd(i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %281, %260
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %289 = call i32 @cx_compute_buf_len(%struct.TYPE_10__* %288)
  store i32 %289, i32* %10, align 4
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @ARBCNT(i32 %292)
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @outw(i32 %293, i32 %294)
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @BRBCNT(i32 %298)
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @outw(i32 %299, i32 %300)
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @ARBSTS(i32 %304)
  %306 = load i32, i32* @BSTS_OWN24, align 4
  %307 = call i32 @outw(i32 %305, i32 %306)
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @BRBSTS(i32 %310)
  %312 = load i32, i32* @BSTS_OWN24, align 4
  %313 = call i32 @outw(i32 %311, i32 %312)
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @M_ASYNC, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %287
  %320 = load i32, i32* @IER_MDM, align 4
  %321 = load i32, i32* %9, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %9, align 4
  br label %323

323:                                              ; preds = %319, %287
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 5
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @IER(i32 %326)
  %328 = load i32, i32* %9, align 4
  %329 = call i32 @outb(i32 %327, i32 %328)
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %331 = call i32 @cx_set_dtr(%struct.TYPE_10__* %330, i32 0)
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %333 = call i32 @cx_set_rts(%struct.TYPE_10__* %332, i32 0)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @CAR(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @ARBADRU(i32) #1

declare dso_local i32 @ARBADRL(i32) #1

declare dso_local i32 @BRBADRU(i32) #1

declare dso_local i32 @BRBADRL(i32) #1

declare dso_local i32 @ATBADRU(i32) #1

declare dso_local i32 @ATBADRL(i32) #1

declare dso_local i32 @BTBADRU(i32) #1

declare dso_local i32 @BTBADRL(i32) #1

declare dso_local i32 @CMR(i32) #1

declare dso_local i32 @cx_cmd(i32, i32) #1

declare dso_local i32 @cx_compute_buf_len(%struct.TYPE_10__*) #1

declare dso_local i32 @ARBCNT(i32) #1

declare dso_local i32 @BRBCNT(i32) #1

declare dso_local i32 @ARBSTS(i32) #1

declare dso_local i32 @BRBSTS(i32) #1

declare dso_local i32 @IER(i32) #1

declare dso_local i32 @cx_set_dtr(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cx_set_rts(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
