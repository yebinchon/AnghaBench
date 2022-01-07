; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_submit_1_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_submit_1_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_test = type { i64, i32, i32, i32*, i32, i64 }
%struct.test_transaction = type { i32, i32, i64*, i64* }
%struct.bus_dmadesc = type { i32 }

@ioat_test_lk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"test_submit\00", align 1
@entry = common dso_local global i32 0, align 4
@IOAT_TEST_MEMCPY = common dso_local global i64 0, align 8
@IOAT_TEST_RAW_DMA = common dso_local global i64 0, align 8
@DMA_INT_EN = common dso_local global i32 0, align 4
@IOAT_TEST_DMA = common dso_local global i64 0, align 8
@IOAT_TEST_FILL = common dso_local global i64 0, align 8
@IOAT_TEST_DMA_8K = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@IOAT_TEST_DMA_8K_PB = common dso_local global i64 0, align 8
@IOAT_TEST_DMA_CRC = common dso_local global i64 0, align 8
@DMA_CRC_STORE = common dso_local global i32 0, align 4
@IOAT_TEST_DMA_CRC_COPY = common dso_local global i64 0, align 8
@IOAT_TEST_NO_DMA_ENGINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_test*, i32)* @ioat_test_submit_1_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_test_submit_1_tx(%struct.ioat_test* %0, i32 %1) #0 {
  %3 = alloca %struct.ioat_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_transaction*, align 8
  %6 = alloca %struct.bus_dmadesc*, align 8
  %7 = alloca i32 (%struct.test_transaction*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ioat_test* %0, %struct.ioat_test** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.bus_dmadesc* null, %struct.bus_dmadesc** %6, align 8
  %19 = call i32 (...) @IT_LOCK()
  br label %20

20:                                               ; preds = %25, %2
  %21 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %22 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %21, i32 0, i32 1
  %23 = call i64 @TAILQ_EMPTY(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %27 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %26, i32 0, i32 1
  %28 = call i32 @msleep(i32* %27, i32* @ioat_test_lk, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %31 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %30, i32 0, i32 1
  %32 = call %struct.test_transaction* @TAILQ_FIRST(i32* %31)
  store %struct.test_transaction* %32, %struct.test_transaction** %5, align 8
  %33 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %34 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %33, i32 0, i32 1
  %35 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %36 = load i32, i32* @entry, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* %34, %struct.test_transaction* %35, i32 %36)
  %38 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %39 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %38, i32 0, i32 2
  %40 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %41 = load i32, i32* @entry, align 4
  %42 = call i32 @TAILQ_INSERT_HEAD(i32* %39, %struct.test_transaction* %40, i32 %41)
  %43 = call i32 (...) @IT_UNLOCK()
  %44 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %45 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IOAT_TEST_MEMCPY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ioat_acquire(i32 %50)
  br label %52

52:                                               ; preds = %49, %29
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %351, %52
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %56 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %354

59:                                               ; preds = %53
  %60 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %61 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IOAT_TEST_MEMCPY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %59
  %66 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %67 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %76 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %84 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i64 %74, i64 %82, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %89 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = icmp eq i32 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %65
  %94 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %95 = call i32 @ioat_dma_test_callback(%struct.test_transaction* %94, i32 0)
  br label %96

96:                                               ; preds = %93, %65
  br label %351

97:                                               ; preds = %59
  %98 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %99 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %98, i32 0, i32 3
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 2, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @vtophys(i64 %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %108 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %107, i32 0, i32 3
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = mul nsw i32 2, %110
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %109, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @vtophys(i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %118 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IOAT_TEST_RAW_DMA, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %97
  %123 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %124 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %129 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %9, align 4
  br label %135

131:                                              ; preds = %122
  %132 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %133 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %131, %127
  br label %136

136:                                              ; preds = %135, %97
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %139 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = icmp eq i32 %137, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  store i32 (%struct.test_transaction*, i32)* @ioat_dma_test_callback, i32 (%struct.test_transaction*, i32)** %7, align 8
  %144 = load i32, i32* @DMA_INT_EN, align 4
  store i32 %144, i32* %12, align 4
  br label %146

145:                                              ; preds = %136
  store i32 (%struct.test_transaction*, i32)* null, i32 (%struct.test_transaction*, i32)** %7, align 8
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %143
  %147 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %148 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IOAT_TEST_DMA, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %154 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IOAT_TEST_RAW_DMA, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %152, %146
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %163 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32 (%struct.test_transaction*, i32)*, i32 (%struct.test_transaction*, i32)** %7, align 8
  %166 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call %struct.bus_dmadesc* @ioat_copy(i32 %159, i32 %160, i32 %161, i32 %164, i32 (%struct.test_transaction*, i32)* %165, %struct.test_transaction* %166, i32 %167)
  store %struct.bus_dmadesc* %168, %struct.bus_dmadesc** %6, align 8
  br label %346

169:                                              ; preds = %152
  %170 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %171 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @IOAT_TEST_FILL, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %169
  %176 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %177 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = mul nsw i32 2, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %190 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32 (%struct.test_transaction*, i32)*, i32 (%struct.test_transaction*, i32)** %7, align 8
  %193 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call %struct.bus_dmadesc* @ioat_blockfill(i32 %186, i32 %187, i32 %188, i32 %191, i32 (%struct.test_transaction*, i32)* %192, %struct.test_transaction* %193, i32 %194)
  store %struct.bus_dmadesc* %195, %struct.bus_dmadesc** %6, align 8
  br label %345

196:                                              ; preds = %169
  %197 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %198 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @IOAT_TEST_DMA_8K, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %235

202:                                              ; preds = %196
  %203 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %204 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %203, i32 0, i32 3
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = mul nsw i32 2, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %205, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @PAGE_SIZE, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @vtophys(i64 %212)
  store i32 %213, i32* %13, align 4
  %214 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %215 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %214, i32 0, i32 3
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = mul nsw i32 2, %217
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %216, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @PAGE_SIZE, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @vtophys(i64 %224)
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32 (%struct.test_transaction*, i32)*, i32 (%struct.test_transaction*, i32)** %7, align 8
  %232 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call %struct.bus_dmadesc* @ioat_copy_8k_aligned(i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 (%struct.test_transaction*, i32)* %231, %struct.test_transaction* %232, i32 %233)
  store %struct.bus_dmadesc* %234, %struct.bus_dmadesc** %6, align 8
  br label %344

235:                                              ; preds = %196
  %236 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %237 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @IOAT_TEST_DMA_8K_PB, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %274

241:                                              ; preds = %235
  %242 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %243 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %242, i32 0, i32 3
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = mul nsw i32 2, %245
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %244, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @PAGE_SIZE, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @vtophys(i64 %252)
  store i32 %253, i32* %15, align 4
  %254 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %255 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %254, i32 0, i32 3
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %11, align 4
  %258 = mul nsw i32 2, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %256, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @PAGE_SIZE, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @vtophys(i64 %263)
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %15, align 4
  %270 = load i32 (%struct.test_transaction*, i32)*, i32 (%struct.test_transaction*, i32)** %7, align 8
  %271 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call %struct.bus_dmadesc* @ioat_copy_8k_aligned(i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 (%struct.test_transaction*, i32)* %270, %struct.test_transaction* %271, i32 %272)
  store %struct.bus_dmadesc* %273, %struct.bus_dmadesc** %6, align 8
  br label %343

274:                                              ; preds = %235
  %275 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %276 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @IOAT_TEST_DMA_CRC, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %307

280:                                              ; preds = %274
  %281 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %282 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %281, i32 0, i32 2
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  store i64 0, i64* %286, align 8
  %287 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %288 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %287, i32 0, i32 2
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  %293 = ptrtoint i64* %292 to i64
  %294 = call i32 @vtophys(i64 %293)
  store i32 %294, i32* %17, align 4
  %295 = load i32, i32* %4, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %298 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %17, align 4
  %301 = load i32 (%struct.test_transaction*, i32)*, i32 (%struct.test_transaction*, i32)** %7, align 8
  %302 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* @DMA_CRC_STORE, align 4
  %305 = or i32 %303, %304
  %306 = call %struct.bus_dmadesc* @ioat_crc(i32 %295, i32 %296, i32 %299, i32* null, i32 %300, i32 (%struct.test_transaction*, i32)* %301, %struct.test_transaction* %302, i32 %305)
  store %struct.bus_dmadesc* %306, %struct.bus_dmadesc** %6, align 8
  br label %342

307:                                              ; preds = %274
  %308 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %309 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @IOAT_TEST_DMA_CRC_COPY, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %341

313:                                              ; preds = %307
  %314 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %315 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %314, i32 0, i32 2
  %316 = load i64*, i64** %315, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %316, i64 %318
  store i64 0, i64* %319, align 8
  %320 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %321 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %320, i32 0, i32 2
  %322 = load i64*, i64** %321, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = ptrtoint i64* %325 to i64
  %327 = call i32 @vtophys(i64 %326)
  store i32 %327, i32* %18, align 4
  %328 = load i32, i32* %4, align 4
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* %8, align 4
  %331 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %332 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %18, align 4
  %335 = load i32 (%struct.test_transaction*, i32)*, i32 (%struct.test_transaction*, i32)** %7, align 8
  %336 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* @DMA_CRC_STORE, align 4
  %339 = or i32 %337, %338
  %340 = call %struct.bus_dmadesc* @ioat_copy_crc(i32 %328, i32 %329, i32 %330, i32 %333, i32* null, i32 %334, i32 (%struct.test_transaction*, i32)* %335, %struct.test_transaction* %336, i32 %339)
  store %struct.bus_dmadesc* %340, %struct.bus_dmadesc** %6, align 8
  br label %341

341:                                              ; preds = %313, %307
  br label %342

342:                                              ; preds = %341, %280
  br label %343

343:                                              ; preds = %342, %241
  br label %344

344:                                              ; preds = %343, %202
  br label %345

345:                                              ; preds = %344, %175
  br label %346

346:                                              ; preds = %345, %158
  %347 = load %struct.bus_dmadesc*, %struct.bus_dmadesc** %6, align 8
  %348 = icmp eq %struct.bus_dmadesc* %347, null
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  br label %354

350:                                              ; preds = %346
  br label %351

351:                                              ; preds = %350, %96
  %352 = load i32, i32* %11, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %11, align 4
  br label %53

354:                                              ; preds = %349, %53
  %355 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %356 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @IOAT_TEST_MEMCPY, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  br label %393

361:                                              ; preds = %354
  %362 = load i32, i32* %4, align 4
  %363 = call i32 @ioat_release(i32 %362)
  %364 = load %struct.bus_dmadesc*, %struct.bus_dmadesc** %6, align 8
  %365 = icmp eq %struct.bus_dmadesc* %364, null
  br i1 %365, label %366, label %393

366:                                              ; preds = %361
  %367 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %368 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %393

371:                                              ; preds = %366
  %372 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %373 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %372, i32 0, i32 3
  %374 = load i32*, i32** %373, align 8
  %375 = load i64, i64* @IOAT_TEST_NO_DMA_ENGINE, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  %377 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %378 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @atomic_add_32(i32* %376, i32 %379)
  %381 = call i32 (...) @IT_LOCK()
  %382 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %383 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %382, i32 0, i32 2
  %384 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %385 = load i32, i32* @entry, align 4
  %386 = call i32 @TAILQ_REMOVE(i32* %383, %struct.test_transaction* %384, i32 %385)
  %387 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %388 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %387, i32 0, i32 1
  %389 = load %struct.test_transaction*, %struct.test_transaction** %5, align 8
  %390 = load i32, i32* @entry, align 4
  %391 = call i32 @TAILQ_INSERT_HEAD(i32* %388, %struct.test_transaction* %389, i32 %390)
  %392 = call i32 (...) @IT_UNLOCK()
  br label %393

393:                                              ; preds = %360, %371, %366, %361
  ret void
}

declare dso_local i32 @IT_LOCK(...) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local %struct.test_transaction* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.test_transaction*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.test_transaction*, i32) #1

declare dso_local i32 @IT_UNLOCK(...) #1

declare dso_local i32 @ioat_acquire(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @ioat_dma_test_callback(%struct.test_transaction*, i32) #1

declare dso_local i32 @vtophys(i64) #1

declare dso_local %struct.bus_dmadesc* @ioat_copy(i32, i32, i32, i32, i32 (%struct.test_transaction*, i32)*, %struct.test_transaction*, i32) #1

declare dso_local %struct.bus_dmadesc* @ioat_blockfill(i32, i32, i32, i32, i32 (%struct.test_transaction*, i32)*, %struct.test_transaction*, i32) #1

declare dso_local %struct.bus_dmadesc* @ioat_copy_8k_aligned(i32, i32, i32, i32, i32, i32 (%struct.test_transaction*, i32)*, %struct.test_transaction*, i32) #1

declare dso_local %struct.bus_dmadesc* @ioat_crc(i32, i32, i32, i32*, i32, i32 (%struct.test_transaction*, i32)*, %struct.test_transaction*, i32) #1

declare dso_local %struct.bus_dmadesc* @ioat_copy_crc(i32, i32, i32, i32, i32*, i32, i32 (%struct.test_transaction*, i32)*, %struct.test_transaction*, i32) #1

declare dso_local i32 @ioat_release(i32) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
