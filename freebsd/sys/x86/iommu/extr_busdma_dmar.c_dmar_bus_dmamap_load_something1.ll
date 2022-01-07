; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_something1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_something1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { %struct.TYPE_5__, %struct.dmar_ctx*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i32, i64 }
%struct.dmar_ctx = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }
%struct.bus_dmamap_dmar = type { %struct.dmar_map_entries_tailq, i64 }
%struct.dmar_map_entries_tailq = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.dmar_map_entry = type { i64, i32, i32 }

@DMAR_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"offset %d\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@DMAR_GM_CANWAIT = common dso_local global i32 0, align 4
@DMAR_GM_CANSPLIT = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_READ = common dso_local global i32 0, align 4
@BUS_DMA_NOWRITE = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"split increased entry size %jx %jx %jx\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"no split allowed %jx %jx %jx\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"alignment failed: ctx %p start 0x%jx offset %x align 0x%jx\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"entry placement failed: ctx %p start 0x%jx end 0x%jx lowaddr 0x%jx highaddr 0x%jx\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"boundary failed: ctx %p start 0x%jx end 0x%jx boundary 0x%jx\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"segment too large: ctx %p start 0x%jx end 0x%jx buflen1 0x%jx maxsegsz 0x%jx\00", align 1
@dmamap_link = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_MAP = common dso_local global i32 0, align 4
@unroll_link = common dso_local global i32 0, align 4
@DMAR_PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_dma_tag_dmar*, %struct.bus_dmamap_dmar*, i32*, i32, i64, i32, %struct.TYPE_4__*, i32*, %struct.dmar_map_entries_tailq*)* @dmar_bus_dmamap_load_something1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dmamap_load_something1(%struct.bus_dma_tag_dmar* %0, %struct.bus_dmamap_dmar* %1, i32* %2, i32 %3, i64 %4, i32 %5, %struct.TYPE_4__* %6, i32* %7, %struct.dmar_map_entries_tailq* %8) #0 {
  %10 = alloca %struct.bus_dma_tag_dmar*, align 8
  %11 = alloca %struct.bus_dmamap_dmar*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.dmar_map_entries_tailq*, align 8
  %19 = alloca %struct.dmar_ctx*, align 8
  %20 = alloca %struct.dmar_domain*, align 8
  %21 = alloca %struct.dmar_map_entry*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.bus_dma_tag_dmar* %0, %struct.bus_dma_tag_dmar** %10, align 8
  store %struct.bus_dmamap_dmar* %1, %struct.bus_dmamap_dmar** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.dmar_map_entries_tailq* %8, %struct.dmar_map_entries_tailq** %18, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @DMAR_PAGE_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %31, i8* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %9
  %39 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %40 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %16, align 8
  br label %42

42:                                               ; preds = %38, %9
  %43 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %44 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %43, i32 0, i32 1
  %45 = load %struct.dmar_ctx*, %struct.dmar_ctx** %44, align 8
  store %struct.dmar_ctx* %45, %struct.dmar_ctx** %19, align 8
  %46 = load %struct.dmar_ctx*, %struct.dmar_ctx** %19, align 8
  %47 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %46, i32 0, i32 0
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %47, align 8
  store %struct.dmar_domain* %48, %struct.dmar_domain** %20, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %27, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %51

51:                                               ; preds = %266, %42
  %52 = load i64, i64* %14, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %396

54:                                               ; preds = %51
  %55 = load i32, i32* %27, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %27, align 4
  %57 = load i32, i32* %27, align 4
  %58 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %59 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %57, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @EFBIG, align 4
  store i32 %64, i32* %24, align 4
  br label %396

65:                                               ; preds = %54
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %68 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %74 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  br label %79

77:                                               ; preds = %65
  %78 = load i64, i64* %14, align 8
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i64 [ %76, %72 ], [ %78, %77 ]
  store i64 %80, i64* %23, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %23, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i64 @round_page(i64 %84)
  store i64 %85, i64* %22, align 8
  %86 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %11, align 8
  %87 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @DMAR_GM_CANWAIT, align 4
  br label %93

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  store i32 %94, i32* %26, align 4
  %95 = load i32, i32* %27, align 4
  %96 = add nsw i32 %95, 1
  %97 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %98 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i32, i32* @DMAR_GM_CANSPLIT, align 4
  %104 = load i32, i32* %26, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %26, align 4
  br label %106

106:                                              ; preds = %102, %93
  %107 = load %struct.dmar_domain*, %struct.dmar_domain** %20, align 8
  %108 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %109 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %108, i32 0, i32 0
  %110 = load i64, i64* %22, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @DMAR_MAP_ENTRY_READ, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @BUS_DMA_NOWRITE, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i32, i32* @DMAR_MAP_ENTRY_WRITE, align 4
  br label %120

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  %122 = or i32 %112, %121
  %123 = load i32, i32* %26, align 4
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* %25, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @dmar_gas_map(%struct.dmar_domain* %107, %struct.TYPE_5__* %109, i64 %110, i32 %111, i32 %122, i32 %123, i32* %127, %struct.dmar_map_entry** %21)
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %24, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %396

132:                                              ; preds = %120
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* @DMAR_GM_CANSPLIT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %175

137:                                              ; preds = %132
  %138 = load i64, i64* %22, align 8
  %139 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %140 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %143 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %141, %145
  %147 = icmp sge i64 %138, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %22, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %152 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %155 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = call i32 @KASSERT(i32 %148, i8* %159)
  %161 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %162 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %165 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %163, %167
  store i64 %168, i64* %22, align 8
  %169 = load i64, i64* %23, align 8
  %170 = load i64, i64* %22, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %137
  %173 = load i64, i64* %22, align 8
  store i64 %173, i64* %23, align 8
  br label %174

174:                                              ; preds = %172, %137
  br label %199

175:                                              ; preds = %132
  %176 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %177 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %180 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = sub nsw i64 %178, %182
  %184 = load i64, i64* %22, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i64, i64* %22, align 8
  %188 = trunc i64 %187 to i32
  %189 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %190 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %193 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 @KASSERT(i32 %186, i8* %197)
  br label %199

199:                                              ; preds = %175, %174
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %23, align 8
  %203 = add nsw i64 %201, %202
  %204 = load i64, i64* %22, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %199
  %207 = load i64, i64* %22, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = sub nsw i64 %207, %209
  store i64 %210, i64* %23, align 8
  br label %211

211:                                              ; preds = %206, %199
  %212 = load i64, i64* %23, align 8
  %213 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %214 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %212, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %220 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %23, align 8
  br label %223

223:                                              ; preds = %218, %211
  %224 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %225 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %226, %227
  %229 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %230 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = sub nsw i32 %232, 1
  %234 = and i32 %228, %233
  %235 = icmp eq i32 %234, 0
  %236 = zext i1 %235 to i32
  %237 = load %struct.dmar_ctx*, %struct.dmar_ctx** %19, align 8
  %238 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %239 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %243 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i8*
  %248 = call i32 @KASSERT(i32 %236, i8* %247)
  %249 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %250 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %253 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp sle i64 %251, %255
  br i1 %256, label %266, label %257

257:                                              ; preds = %223
  %258 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %259 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %262 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = icmp sge i32 %260, %264
  br label %266

266:                                              ; preds = %257, %223
  %267 = phi i1 [ true, %223 ], [ %265, %257 ]
  %268 = zext i1 %267 to i32
  %269 = load %struct.dmar_ctx*, %struct.dmar_ctx** %19, align 8
  %270 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %271 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %274 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %278 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %283 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = call i32 @KASSERT(i32 %268, i8* %287)
  %289 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %290 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %13, align 4
  %293 = add nsw i32 %291, %292
  %294 = load i64, i64* %23, align 8
  %295 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %296 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @dmar_test_boundary(i32 %293, i64 %294, i64 %298)
  %300 = load %struct.dmar_ctx*, %struct.dmar_ctx** %19, align 8
  %301 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %302 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %305 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %309 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %315 = call i32 @KASSERT(i32 %299, i8* %314)
  %316 = load i64, i64* %23, align 8
  %317 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %318 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp sle i64 %316, %320
  %322 = zext i1 %321 to i32
  %323 = load %struct.dmar_ctx*, %struct.dmar_ctx** %19, align 8
  %324 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %325 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %328 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = trunc i64 %329 to i32
  %331 = load i64, i64* %23, align 8
  %332 = trunc i64 %331 to i32
  %333 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %334 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = sext i32 %337 to i64
  %339 = inttoptr i64 %338 to i8*
  %340 = call i32 @KASSERT(i32 %322, i8* %339)
  %341 = load %struct.dmar_domain*, %struct.dmar_domain** %20, align 8
  %342 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %341)
  %343 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %11, align 8
  %344 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %343, i32 0, i32 0
  %345 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %346 = load i32, i32* @dmamap_link, align 4
  %347 = call i32 @TAILQ_INSERT_TAIL(%struct.dmar_map_entries_tailq* %344, %struct.dmar_map_entry* %345, i32 %346)
  %348 = load i32, i32* @DMAR_MAP_ENTRY_MAP, align 4
  %349 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %350 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 4
  %353 = load %struct.dmar_domain*, %struct.dmar_domain** %20, align 8
  %354 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %353)
  %355 = load %struct.dmar_map_entries_tailq*, %struct.dmar_map_entries_tailq** %18, align 8
  %356 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %357 = load i32, i32* @unroll_link, align 4
  %358 = call i32 @TAILQ_INSERT_TAIL(%struct.dmar_map_entries_tailq* %355, %struct.dmar_map_entry* %356, i32 %357)
  %359 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %21, align 8
  %360 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* %13, align 4
  %363 = add nsw i32 %361, %362
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %365 = load i32, i32* %27, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  store i32 %363, i32* %368, align 8
  %369 = load i64, i64* %23, align 8
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %371 = load i32, i32* %27, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 1
  store i64 %369, i64* %374, align 8
  %375 = load i32, i32* %13, align 4
  %376 = sext i32 %375 to i64
  %377 = load i64, i64* %23, align 8
  %378 = add nsw i64 %376, %377
  %379 = call i32 @trunc_page(i64 %378)
  %380 = call i64 @OFF_TO_IDX(i32 %379)
  %381 = load i32, i32* %25, align 4
  %382 = sext i32 %381 to i64
  %383 = add nsw i64 %382, %380
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %25, align 4
  %385 = load i64, i64* %23, align 8
  %386 = load i32, i32* %13, align 4
  %387 = sext i32 %386 to i64
  %388 = add nsw i64 %387, %385
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %13, align 4
  %390 = load i32, i32* @DMAR_PAGE_MASK, align 4
  %391 = load i32, i32* %13, align 4
  %392 = and i32 %391, %390
  store i32 %392, i32* %13, align 4
  %393 = load i64, i64* %23, align 8
  %394 = load i64, i64* %14, align 8
  %395 = sub nsw i64 %394, %393
  store i64 %395, i64* %14, align 8
  br label %51

396:                                              ; preds = %131, %63, %51
  %397 = load i32, i32* %24, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load i32, i32* %27, align 4
  %401 = load i32*, i32** %17, align 8
  store i32 %400, i32* %401, align 4
  br label %402

402:                                              ; preds = %399, %396
  %403 = load i32, i32* %24, align 4
  ret i32 %403
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @dmar_gas_map(%struct.dmar_domain*, %struct.TYPE_5__*, i64, i32, i32, i32, i32*, %struct.dmar_map_entry**) #1

declare dso_local i32 @dmar_test_boundary(i32, i64, i64) #1

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.dmar_map_entries_tailq*, %struct.dmar_map_entry*, i32) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @trunc_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
