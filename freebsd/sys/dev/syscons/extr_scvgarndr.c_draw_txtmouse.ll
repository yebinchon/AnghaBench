; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvgarndr.c_draw_txtmouse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvgarndr.c_draw_txtmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i64, %struct.mousedata* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mousedata = type { i32*, i32* }

@V_ADP_CWIDTH9 = common dso_local global i32 0, align 4
@sc_txtmouse_no_retrace_wait = common dso_local global i32 0, align 4
@draw_txtmouse.col_conv = internal constant [16 x i32] [i32 6, i32 6, i32 6, i32 6, i32 2, i32 2, i32 2, i32 6, i32 14, i32 14, i32 14, i32 14, i32 10, i32 10, i32 10, i32 14], align 16
@V_ADP_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @draw_txtmouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_txtmouse(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mousedata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i32], align 16
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ISMOUSEAVAIL(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %427

30:                                               ; preds = %3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 7
  %33 = load %struct.mousedata*, %struct.mousedata** %32, align 8
  store %struct.mousedata* %33, %struct.mousedata** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = load i32, i32* %5, align 4
  %48 = sdiv i32 %47, 8
  %49 = add nsw i32 %46, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @sc_vtb_getc(i32* %58, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %56, %65
  %67 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bcopy(i64 %66, i32* %67, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @sc_vtb_getc(i32* %76, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %74, %84
  %86 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 32
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bcopy(i64 %85, i32* %86, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %96, %99
  %101 = call i32 @sc_vtb_getc(i32* %95, i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %93, %106
  %108 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 64
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bcopy(i64 %107, i32* %108, i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %118, %121
  %123 = add nsw i32 %122, 1
  %124 = call i32 @sc_vtb_getc(i32* %117, i32 %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %115, %129
  %131 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 96
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @bcopy(i64 %130, i32* %131, i32 %134)
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %176, %30
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %179

142:                                              ; preds = %136
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 8
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, 32
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %147, %152
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %155
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 64
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 96
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %162, %167
  %169 = load i32, i32* %17, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %169, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %174
  store i32 %168, i32* %175, align 4
  br label %176

176:                                              ; preds = %142
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %17, align 4
  br label %136

179:                                              ; preds = %136
  %180 = load i32, i32* %5, align 4
  %181 = srem i32 %180, 8
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = srem i32 %182, %185
  store i32 %186, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %187

187:                                              ; preds = %265, %179
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %188, 16
  br i1 %189, label %190, label %268

190:                                              ; preds = %187
  %191 = load %struct.mousedata*, %struct.mousedata** %7, align 8
  %192 = getelementptr inbounds %struct.mousedata, %struct.mousedata* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 8
  store i32 %198, i32* %8, align 4
  %199 = load %struct.mousedata*, %struct.mousedata** %7, align 8
  %200 = getelementptr inbounds %struct.mousedata, %struct.mousedata* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 8
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %8, align 4
  %209 = ashr i32 %208, %207
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %9, align 4
  %212 = ashr i32 %211, %210
  store i32 %212, i32* %9, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 5
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @V_ADP_CWIDTH9, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %190
  %224 = load i32, i32* %8, align 4
  %225 = and i32 %224, 16711680
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, 32640
  %228 = shl i32 %227, 1
  %229 = or i32 %225, %228
  %230 = load i32, i32* %8, align 4
  %231 = and i32 %230, 63
  %232 = shl i32 %231, 2
  %233 = or i32 %229, %232
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %9, align 4
  %235 = and i32 %234, 16711680
  %236 = load i32, i32* %9, align 4
  %237 = and i32 %236, 32640
  %238 = shl i32 %237, 1
  %239 = or i32 %235, %238
  %240 = load i32, i32* %9, align 4
  %241 = and i32 %240, 63
  %242 = shl i32 %241, 2
  %243 = or i32 %239, %242
  store i32 %243, i32* %9, align 4
  br label %244

244:                                              ; preds = %223, %190
  %245 = load i32, i32* %8, align 4
  %246 = ashr i32 %245, 8
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %9, align 4
  %248 = ashr i32 %247, 8
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %249, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %8, align 4
  %256 = xor i32 %255, -1
  %257 = and i32 %254, %256
  %258 = load i32, i32* %9, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %263
  store i32 %259, i32* %264, align 4
  br label %265

265:                                              ; preds = %244
  %266 = load i32, i32* %17, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %17, align 4
  br label %187

268:                                              ; preds = %187
  store i32 0, i32* %17, align 4
  br label %269

269:                                              ; preds = %321, %268
  %270 = load i32, i32* %17, align 4
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %324

275:                                              ; preds = %269
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 65280
  %281 = ashr i32 %280, 8
  %282 = load i32, i32* %17, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %283
  store i32 %281, i32* %284, align 4
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 255
  %290 = load i32, i32* %17, align 4
  %291 = add nsw i32 %290, 32
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %292
  store i32 %289, i32* %293, align 4
  %294 = load i32, i32* %17, align 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %294, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, 65280
  %303 = ashr i32 %302, 8
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 64
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %306
  store i32 %303, i32* %307, align 4
  %308 = load i32, i32* %17, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %308, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, 255
  %317 = load i32, i32* %17, align 4
  %318 = add nsw i32 %317, 96
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 %319
  store i32 %316, i32* %320, align 4
  br label %321

321:                                              ; preds = %275
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %17, align 4
  br label %269

324:                                              ; preds = %269
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 5
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %16, align 4
  br label %332

332:                                              ; preds = %344, %324
  %333 = load i32, i32* @sc_txtmouse_no_retrace_wait, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %16, align 4
  %337 = add nsw i32 %336, 6
  %338 = call i32 @inb(i32 %337)
  %339 = and i32 %338, 8
  %340 = icmp ne i32 %339, 0
  %341 = xor i1 %340, true
  br label %342

342:                                              ; preds = %335, %332
  %343 = phi i1 [ false, %332 ], [ %341, %335 ]
  br i1 %343, label %344, label %345

344:                                              ; preds = %342
  br label %332

345:                                              ; preds = %342
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 5
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  store i32 %350, i32* %12, align 4
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 5
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @vidd_load_font(%struct.TYPE_7__* %355, i32 0, i32 32, i32 8, i32* %356, i32 %357, i32 4)
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 4
  %361 = load i32, i32* %13, align 4
  %362 = load i32, i32* %12, align 4
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 4
  %365 = load i32, i32* %13, align 4
  %366 = call i32 @sc_vtb_geta(i32* %364, i32 %365)
  %367 = call i32 @sc_vtb_putc(i32* %360, i32 %361, i32 %362, i32 %366)
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 4
  %370 = load i32, i32* %13, align 4
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = add nsw i32 %370, %373
  %375 = load i32, i32* %12, align 4
  %376 = add nsw i32 %375, 2
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 4
  %379 = load i32, i32* %13, align 4
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %379, %382
  %384 = call i32 @sc_vtb_geta(i32* %378, i32 %383)
  %385 = call i32 @sc_vtb_putc(i32* %369, i32 %374, i32 %376, i32 %384)
  %386 = load i32, i32* %5, align 4
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = sub nsw i32 %389, 1
  %391 = mul nsw i32 %390, 8
  %392 = icmp slt i32 %386, %391
  br i1 %392, label %393, label %426

393:                                              ; preds = %345
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 4
  %396 = load i32, i32* %13, align 4
  %397 = add nsw i32 %396, 1
  %398 = load i32, i32* %12, align 4
  %399 = add nsw i32 %398, 1
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 4
  %402 = load i32, i32* %13, align 4
  %403 = add nsw i32 %402, 1
  %404 = call i32 @sc_vtb_geta(i32* %401, i32 %403)
  %405 = call i32 @sc_vtb_putc(i32* %395, i32 %397, i32 %399, i32 %404)
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 4
  %408 = load i32, i32* %13, align 4
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %408, %411
  %413 = add nsw i32 %412, 1
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %414, 3
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 4
  %418 = load i32, i32* %13, align 4
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = add nsw i32 %418, %421
  %423 = add nsw i32 %422, 1
  %424 = call i32 @sc_vtb_geta(i32* %417, i32 %423)
  %425 = call i32 @sc_vtb_putc(i32* %407, i32 %413, i32 %415, i32 %424)
  br label %426

426:                                              ; preds = %393, %345
  br label %492

427:                                              ; preds = %3
  %428 = load i32, i32* %6, align 4
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = sdiv i32 %428, %431
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = sub nsw i32 %432, %435
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = mul nsw i32 %436, %439
  %441 = load i32, i32* %5, align 4
  %442 = sdiv i32 %441, 8
  %443 = add nsw i32 %440, %442
  %444 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 3
  %446 = load i32, i32* %445, align 4
  %447 = sub nsw i32 %443, %446
  store i32 %447, i32* %18, align 4
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 4
  %450 = load i32, i32* %18, align 4
  %451 = call i32 @sc_vtb_geta(i32* %449, i32 %450)
  store i32 %451, i32* %20, align 4
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 5
  %454 = load %struct.TYPE_5__*, %struct.TYPE_5__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @V_ADP_COLOR, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %474

462:                                              ; preds = %427
  %463 = load i32, i32* %20, align 4
  %464 = and i32 %463, 61440
  %465 = ashr i32 %464, 12
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* @draw_txtmouse.col_conv, i64 0, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = shl i32 %468, 12
  %470 = load i32, i32* %20, align 4
  %471 = and i32 %470, 3840
  %472 = or i32 %471, 2048
  %473 = or i32 %469, %472
  store i32 %473, i32* %19, align 4
  br label %482

474:                                              ; preds = %427
  %475 = load i32, i32* %20, align 4
  %476 = and i32 %475, 61440
  %477 = ashr i32 %476, 4
  %478 = load i32, i32* %20, align 4
  %479 = and i32 %478, 3840
  %480 = shl i32 %479, 4
  %481 = or i32 %477, %480
  store i32 %481, i32* %19, align 4
  br label %482

482:                                              ; preds = %474, %462
  %483 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 4
  %485 = load i32, i32* %18, align 4
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 4
  %488 = load i32, i32* %18, align 4
  %489 = call i32 @sc_vtb_getc(i32* %487, i32 %488)
  %490 = load i32, i32* %19, align 4
  %491 = call i32 @sc_vtb_putc(i32* %484, i32 %485, i32 %489, i32 %490)
  br label %492

492:                                              ; preds = %482, %426
  ret void
}

declare dso_local i64 @ISMOUSEAVAIL(i32) #1

declare dso_local i32 @bcopy(i64, i32*, i32) #1

declare dso_local i32 @sc_vtb_getc(i32*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @vidd_load_font(%struct.TYPE_7__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sc_vtb_putc(i32*, i32, i32, i32) #1

declare dso_local i32 @sc_vtb_geta(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
