; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_nat_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_nat_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.filter_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i64 }

@W_TCB_SND_UNA_RAW = common dso_local global i64 0, align 8
@WORD_MASK = common dso_local global i32 0, align 4
@W_TCB_RX_FRAG3_LEN_RAW = common dso_local global i64 0, align 8
@W_TCB_RX_FRAG2_PTR_RAW = common dso_local global i64 0, align 8
@W_TCB_RX_FRAG3_START_IDX_OFFSET_RAW = common dso_local global i64 0, align 8
@W_TCB_PDU_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.filter_entry*, i32, i32, i32, i32)* @set_nat_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_nat_params(%struct.adapter* %0, %struct.filter_entry* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.filter_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.filter_entry* %1, %struct.filter_entry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %212

15:                                               ; preds = %6
  %16 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %17 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %173

21:                                               ; preds = %15
  %22 = load %struct.adapter*, %struct.adapter** %7, align 8
  %23 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %24 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* @W_TCB_SND_UNA_RAW, align 8
  %27 = load i32, i32* @WORD_MASK, align 4
  %28 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %29 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 15
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %35 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 14
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %33, %40
  %42 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %43 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 13
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %41, %48
  %50 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %51 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 12
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 24
  %57 = or i32 %49, %56
  %58 = call i32 @set_tcb_field(%struct.adapter* %22, i32 %25, i64 %26, i32 %27, i32 %57, i32 1)
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %61 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* @W_TCB_SND_UNA_RAW, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i32, i32* @WORD_MASK, align 4
  %66 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %67 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 11
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %73 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 10
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %71, %78
  %80 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %81 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 9
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = or i32 %79, %86
  %88 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %89 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 24
  %95 = or i32 %87, %94
  %96 = call i32 @set_tcb_field(%struct.adapter* %59, i32 %62, i64 %64, i32 %65, i32 %95, i32 1)
  %97 = load %struct.adapter*, %struct.adapter** %7, align 8
  %98 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %99 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* @W_TCB_SND_UNA_RAW, align 8
  %102 = add nsw i64 %101, 2
  %103 = load i32, i32* @WORD_MASK, align 4
  %104 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %105 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %111 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 6
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 8
  %117 = or i32 %109, %116
  %118 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %119 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 16
  %125 = or i32 %117, %124
  %126 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %127 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 24
  %133 = or i32 %125, %132
  %134 = call i32 @set_tcb_field(%struct.adapter* %97, i32 %100, i64 %102, i32 %103, i32 %133, i32 1)
  %135 = load %struct.adapter*, %struct.adapter** %7, align 8
  %136 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %137 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* @W_TCB_SND_UNA_RAW, align 8
  %140 = add nsw i64 %139, 3
  %141 = load i32, i32* @WORD_MASK, align 4
  %142 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %143 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %149 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 8
  %155 = or i32 %147, %154
  %156 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %157 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 16
  %163 = or i32 %155, %162
  %164 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %165 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 24
  %171 = or i32 %163, %170
  %172 = call i32 @set_tcb_field(%struct.adapter* %135, i32 %138, i64 %140, i32 %141, i32 %171, i32 1)
  br label %211

173:                                              ; preds = %15
  %174 = load %struct.adapter*, %struct.adapter** %7, align 8
  %175 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %176 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* @W_TCB_RX_FRAG3_LEN_RAW, align 8
  %179 = load i32, i32* @WORD_MASK, align 4
  %180 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %181 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %187 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 8
  %193 = or i32 %185, %192
  %194 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %195 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 16
  %201 = or i32 %193, %200
  %202 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %203 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 24
  %209 = or i32 %201, %208
  %210 = call i32 @set_tcb_field(%struct.adapter* %174, i32 %177, i64 %178, i32 %179, i32 %209, i32 1)
  br label %211

211:                                              ; preds = %173, %21
  br label %212

212:                                              ; preds = %211, %6
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %412

215:                                              ; preds = %212
  %216 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %217 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %373

221:                                              ; preds = %215
  %222 = load %struct.adapter*, %struct.adapter** %7, align 8
  %223 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %224 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i64, i64* @W_TCB_RX_FRAG2_PTR_RAW, align 8
  %227 = load i32, i32* @WORD_MASK, align 4
  %228 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %229 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 15
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %235 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 14
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 8
  %241 = or i32 %233, %240
  %242 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %243 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 13
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 16
  %249 = or i32 %241, %248
  %250 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %251 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 12
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 24
  %257 = or i32 %249, %256
  %258 = call i32 @set_tcb_field(%struct.adapter* %222, i32 %225, i64 %226, i32 %227, i32 %257, i32 1)
  %259 = load %struct.adapter*, %struct.adapter** %7, align 8
  %260 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %261 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load i64, i64* @W_TCB_RX_FRAG2_PTR_RAW, align 8
  %264 = add nsw i64 %263, 1
  %265 = load i32, i32* @WORD_MASK, align 4
  %266 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %267 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 11
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %273 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 10
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 8
  %279 = or i32 %271, %278
  %280 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %281 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 9
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 16
  %287 = or i32 %279, %286
  %288 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %289 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 8
  %293 = load i32, i32* %292, align 4
  %294 = shl i32 %293, 24
  %295 = or i32 %287, %294
  %296 = call i32 @set_tcb_field(%struct.adapter* %259, i32 %262, i64 %264, i32 %265, i32 %295, i32 1)
  %297 = load %struct.adapter*, %struct.adapter** %7, align 8
  %298 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %299 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = load i64, i64* @W_TCB_RX_FRAG2_PTR_RAW, align 8
  %302 = add nsw i64 %301, 2
  %303 = load i32, i32* @WORD_MASK, align 4
  %304 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %305 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 7
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %311 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 6
  %315 = load i32, i32* %314, align 4
  %316 = shl i32 %315, 8
  %317 = or i32 %309, %316
  %318 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %319 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 5
  %323 = load i32, i32* %322, align 4
  %324 = shl i32 %323, 16
  %325 = or i32 %317, %324
  %326 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %327 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 4
  %331 = load i32, i32* %330, align 4
  %332 = shl i32 %331, 24
  %333 = or i32 %325, %332
  %334 = call i32 @set_tcb_field(%struct.adapter* %297, i32 %300, i64 %302, i32 %303, i32 %333, i32 1)
  %335 = load %struct.adapter*, %struct.adapter** %7, align 8
  %336 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %337 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = load i64, i64* @W_TCB_RX_FRAG2_PTR_RAW, align 8
  %340 = add nsw i64 %339, 3
  %341 = load i32, i32* @WORD_MASK, align 4
  %342 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %343 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 3
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %349 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 2
  %353 = load i32, i32* %352, align 4
  %354 = shl i32 %353, 8
  %355 = or i32 %347, %354
  %356 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %357 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  %361 = load i32, i32* %360, align 4
  %362 = shl i32 %361, 16
  %363 = or i32 %355, %362
  %364 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %365 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  %369 = load i32, i32* %368, align 4
  %370 = shl i32 %369, 24
  %371 = or i32 %363, %370
  %372 = call i32 @set_tcb_field(%struct.adapter* %335, i32 %338, i64 %340, i32 %341, i32 %371, i32 1)
  br label %411

373:                                              ; preds = %215
  %374 = load %struct.adapter*, %struct.adapter** %7, align 8
  %375 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %376 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = load i64, i64* @W_TCB_RX_FRAG3_START_IDX_OFFSET_RAW, align 8
  %379 = load i32, i32* @WORD_MASK, align 4
  %380 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %381 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 3
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %387 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 1
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 2
  %391 = load i32, i32* %390, align 4
  %392 = shl i32 %391, 8
  %393 = or i32 %385, %392
  %394 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %395 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 1
  %399 = load i32, i32* %398, align 4
  %400 = shl i32 %399, 16
  %401 = or i32 %393, %400
  %402 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %403 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  %408 = shl i32 %407, 24
  %409 = or i32 %401, %408
  %410 = call i32 @set_tcb_field(%struct.adapter* %374, i32 %377, i64 %378, i32 %379, i32 %409, i32 1)
  br label %411

411:                                              ; preds = %373, %221
  br label %412

412:                                              ; preds = %411, %212
  %413 = load %struct.adapter*, %struct.adapter** %7, align 8
  %414 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %415 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load i64, i64* @W_TCB_PDU_HDR_LEN, align 8
  %418 = load i32, i32* @WORD_MASK, align 4
  %419 = load i32, i32* %11, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %412
  %422 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %423 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  br label %427

426:                                              ; preds = %412
  br label %427

427:                                              ; preds = %426, %421
  %428 = phi i32 [ %425, %421 ], [ 0, %426 ]
  %429 = load i32, i32* %12, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %427
  %432 = load %struct.filter_entry*, %struct.filter_entry** %8, align 8
  %433 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = shl i32 %435, 16
  br label %438

437:                                              ; preds = %427
  br label %438

438:                                              ; preds = %437, %431
  %439 = phi i32 [ %436, %431 ], [ 0, %437 ]
  %440 = or i32 %428, %439
  %441 = call i32 @set_tcb_field(%struct.adapter* %413, i32 %416, i64 %417, i32 %418, i32 %440, i32 1)
  ret void
}

declare dso_local i32 @set_tcb_field(%struct.adapter*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
