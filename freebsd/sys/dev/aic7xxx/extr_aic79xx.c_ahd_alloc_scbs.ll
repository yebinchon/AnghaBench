; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_alloc_scbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_alloc_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, %struct.scb_data }
%struct.scb_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scb = type { i32, %struct.TYPE_2__*, %struct.hardware_scb*, i32, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.scb*, %struct.scb*, %struct.scb*, %struct.scb*, i8*, i32* }
%struct.TYPE_2__ = type { %struct.scb_platform_data* }
%struct.scb_platform_data = type { i32, %struct.TYPE_2__*, %struct.hardware_scb*, i32, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.scb_platform_data*, %struct.scb_platform_data*, %struct.scb_platform_data*, %struct.scb_platform_data*, i8*, i32* }
%struct.hardware_scb = type { i32, i32 }
%struct.map_node = type { i32, %struct.TYPE_2__*, %struct.hardware_scb*, i32, i32, %struct.ahd_softc*, i8*, i8*, i32*, i32*, %struct.map_node*, %struct.map_node*, %struct.map_node*, %struct.map_node*, i8*, i32* }

@AHD_SCB_MAX_ALLOC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@ahd_dmamap_cb = common dso_local global i32 0, align 4
@AHD_SENSE_BUFSIZE = common dso_local global i32 0, align 4
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@SCB_FLAG_NONE = common dso_local global i32 0, align 4
@AHD_SHOW_MEMORY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_alloc_scbs(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb_data*, align 8
  %5 = alloca %struct.scb*, align 8
  %6 = alloca %struct.hardware_scb*, align 8
  %7 = alloca %struct.map_node*, align 8
  %8 = alloca %struct.map_node*, align 8
  %9 = alloca %struct.map_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.scb_platform_data*, align 8
  %21 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %22, i32 0, i32 2
  store %struct.scb_data* %23, %struct.scb_data** %4, align 8
  %24 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %25 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AHD_SCB_MAX_ALLOC, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %498

30:                                               ; preds = %1
  %31 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %32 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 8
  %39 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %40 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %38, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %46 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %45, i32 0, i32 9
  %47 = call %struct.scb_platform_data* @SLIST_FIRST(i32* %46)
  %48 = bitcast %struct.scb_platform_data* %47 to %struct.map_node*
  store %struct.map_node* %48, %struct.map_node** %7, align 8
  %49 = load %struct.map_node*, %struct.map_node** %7, align 8
  %50 = getelementptr inbounds %struct.map_node, %struct.map_node* %49, i32 0, i32 15
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to %struct.hardware_scb*
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %52, i64 %54
  store %struct.hardware_scb* %55, %struct.hardware_scb** %6, align 8
  %56 = load %struct.map_node*, %struct.map_node** %7, align 8
  %57 = getelementptr inbounds %struct.map_node, %struct.map_node* %56, i32 0, i32 14
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = getelementptr i8, i8* %58, i64 %61
  store i8* %62, i8** %12, align 8
  br label %126

63:                                               ; preds = %30
  %64 = load i32, i32* @M_DEVBUF, align 4
  %65 = load i32, i32* @M_NOWAIT, align 4
  %66 = call %struct.scb_platform_data* @malloc(i32 120, i32 %64, i32 %65)
  %67 = bitcast %struct.scb_platform_data* %66 to %struct.map_node*
  store %struct.map_node* %67, %struct.map_node** %7, align 8
  %68 = load %struct.map_node*, %struct.map_node** %7, align 8
  %69 = icmp eq %struct.map_node* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %498

71:                                               ; preds = %63
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %73 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %74 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.map_node*, %struct.map_node** %7, align 8
  %77 = getelementptr inbounds %struct.map_node, %struct.map_node* %76, i32 0, i32 15
  %78 = bitcast i32** %77 to i8**
  %79 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %80 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.map_node*, %struct.map_node** %7, align 8
  %83 = getelementptr inbounds %struct.map_node, %struct.map_node* %82, i32 0, i32 3
  %84 = call i64 @aic_dmamem_alloc(%struct.ahd_softc* %72, i32 %75, i8** %78, i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %71
  %87 = load %struct.map_node*, %struct.map_node** %7, align 8
  %88 = bitcast %struct.map_node* %87 to %struct.scb_platform_data*
  %89 = load i32, i32* @M_DEVBUF, align 4
  %90 = call i32 @free(%struct.scb_platform_data* %88, i32 %89)
  store i32 0, i32* %2, align 4
  br label %498

91:                                               ; preds = %71
  %92 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %93 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %92, i32 0, i32 9
  %94 = load %struct.map_node*, %struct.map_node** %7, align 8
  %95 = bitcast %struct.map_node* %94 to %struct.scb_platform_data*
  %96 = load i32, i32* @links, align 4
  %97 = call i32 @SLIST_INSERT_HEAD(i32* %93, %struct.scb_platform_data* %95, i32 %96)
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %99 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %100 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.map_node*, %struct.map_node** %7, align 8
  %103 = getelementptr inbounds %struct.map_node, %struct.map_node* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.map_node*, %struct.map_node** %7, align 8
  %106 = getelementptr inbounds %struct.map_node, %struct.map_node* %105, i32 0, i32 15
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = load i32, i32* @ahd_dmamap_cb, align 4
  %110 = load %struct.map_node*, %struct.map_node** %7, align 8
  %111 = getelementptr inbounds %struct.map_node, %struct.map_node* %110, i32 0, i32 14
  %112 = call i32 @aic_dmamap_load(%struct.ahd_softc* %98, i32 %101, i32 %104, i32* %107, i32 %108, i32 %109, i8** %111, i32 0)
  %113 = load %struct.map_node*, %struct.map_node** %7, align 8
  %114 = getelementptr inbounds %struct.map_node, %struct.map_node* %113, i32 0, i32 15
  %115 = load i32*, i32** %114, align 8
  %116 = bitcast i32* %115 to %struct.hardware_scb*
  store %struct.hardware_scb* %116, %struct.hardware_scb** %6, align 8
  %117 = load %struct.map_node*, %struct.map_node** %7, align 8
  %118 = getelementptr inbounds %struct.map_node, %struct.map_node* %117, i32 0, i32 14
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %12, align 8
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %121, 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %125 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %91, %35
  %127 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %128 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %126
  %132 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %133 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %132)
  %134 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %135 = call i32 @ahd_sglist_size(%struct.ahd_softc* %134)
  %136 = sdiv i32 %133, %135
  %137 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %138 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %142 = call i32 @ahd_sglist_size(%struct.ahd_softc* %141)
  %143 = mul nsw i32 %140, %142
  store i32 %143, i32* %18, align 4
  %144 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %145 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %144, i32 0, i32 7
  %146 = call %struct.scb_platform_data* @SLIST_FIRST(i32* %145)
  %147 = bitcast %struct.scb_platform_data* %146 to %struct.map_node*
  store %struct.map_node* %147, %struct.map_node** %8, align 8
  %148 = load %struct.map_node*, %struct.map_node** %8, align 8
  %149 = getelementptr inbounds %struct.map_node, %struct.map_node* %148, i32 0, i32 15
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32* %153, i32** %10, align 8
  %154 = load %struct.map_node*, %struct.map_node** %8, align 8
  %155 = getelementptr inbounds %struct.map_node, %struct.map_node* %154, i32 0, i32 14
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr i8, i8* %156, i64 %158
  store i8* %159, i8** %13, align 8
  br label %224

160:                                              ; preds = %126
  %161 = load i32, i32* @M_DEVBUF, align 4
  %162 = load i32, i32* @M_NOWAIT, align 4
  %163 = call %struct.scb_platform_data* @malloc(i32 120, i32 %161, i32 %162)
  %164 = bitcast %struct.scb_platform_data* %163 to %struct.map_node*
  store %struct.map_node* %164, %struct.map_node** %8, align 8
  %165 = load %struct.map_node*, %struct.map_node** %8, align 8
  %166 = icmp eq %struct.map_node* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %498

168:                                              ; preds = %160
  %169 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %170 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %171 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.map_node*, %struct.map_node** %8, align 8
  %174 = getelementptr inbounds %struct.map_node, %struct.map_node* %173, i32 0, i32 15
  %175 = bitcast i32** %174 to i8**
  %176 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %177 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.map_node*, %struct.map_node** %8, align 8
  %180 = getelementptr inbounds %struct.map_node, %struct.map_node* %179, i32 0, i32 3
  %181 = call i64 @aic_dmamem_alloc(%struct.ahd_softc* %169, i32 %172, i8** %175, i32 %178, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %168
  %184 = load %struct.map_node*, %struct.map_node** %8, align 8
  %185 = bitcast %struct.map_node* %184 to %struct.scb_platform_data*
  %186 = load i32, i32* @M_DEVBUF, align 4
  %187 = call i32 @free(%struct.scb_platform_data* %185, i32 %186)
  store i32 0, i32* %2, align 4
  br label %498

188:                                              ; preds = %168
  %189 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %190 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %189, i32 0, i32 7
  %191 = load %struct.map_node*, %struct.map_node** %8, align 8
  %192 = bitcast %struct.map_node* %191 to %struct.scb_platform_data*
  %193 = load i32, i32* @links, align 4
  %194 = call i32 @SLIST_INSERT_HEAD(i32* %190, %struct.scb_platform_data* %192, i32 %193)
  %195 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %196 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %197 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.map_node*, %struct.map_node** %8, align 8
  %200 = getelementptr inbounds %struct.map_node, %struct.map_node* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.map_node*, %struct.map_node** %8, align 8
  %203 = getelementptr inbounds %struct.map_node, %struct.map_node* %202, i32 0, i32 15
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %206 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %205)
  %207 = load i32, i32* @ahd_dmamap_cb, align 4
  %208 = load %struct.map_node*, %struct.map_node** %8, align 8
  %209 = getelementptr inbounds %struct.map_node, %struct.map_node* %208, i32 0, i32 14
  %210 = call i32 @aic_dmamap_load(%struct.ahd_softc* %195, i32 %198, i32 %201, i32* %204, i32 %206, i32 %207, i8** %209, i32 0)
  %211 = load %struct.map_node*, %struct.map_node** %8, align 8
  %212 = getelementptr inbounds %struct.map_node, %struct.map_node* %211, i32 0, i32 15
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %10, align 8
  %214 = load %struct.map_node*, %struct.map_node** %8, align 8
  %215 = getelementptr inbounds %struct.map_node, %struct.map_node* %214, i32 0, i32 14
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** %13, align 8
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %218 = call i32 @ahd_sglist_allocsize(%struct.ahd_softc* %217)
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %220 = call i32 @ahd_sglist_size(%struct.ahd_softc* %219)
  %221 = sdiv i32 %218, %220
  %222 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %223 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %188, %131
  %225 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %226 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %253

229:                                              ; preds = %224
  %230 = load i32, i32* @PAGE_SIZE, align 4
  %231 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %232 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %233 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %231, %234
  %236 = sub nsw i32 %230, %235
  store i32 %236, i32* %19, align 4
  %237 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %238 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %237, i32 0, i32 5
  %239 = call %struct.scb_platform_data* @SLIST_FIRST(i32* %238)
  %240 = bitcast %struct.scb_platform_data* %239 to %struct.map_node*
  store %struct.map_node* %240, %struct.map_node** %9, align 8
  %241 = load %struct.map_node*, %struct.map_node** %9, align 8
  %242 = getelementptr inbounds %struct.map_node, %struct.map_node* %241, i32 0, i32 15
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32* %246, i32** %11, align 8
  %247 = load %struct.map_node*, %struct.map_node** %9, align 8
  %248 = getelementptr inbounds %struct.map_node, %struct.map_node* %247, i32 0, i32 14
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr i8, i8* %249, i64 %251
  store i8* %252, i8** %14, align 8
  br label %312

253:                                              ; preds = %224
  %254 = load i32, i32* @M_DEVBUF, align 4
  %255 = load i32, i32* @M_NOWAIT, align 4
  %256 = call %struct.scb_platform_data* @malloc(i32 120, i32 %254, i32 %255)
  %257 = bitcast %struct.scb_platform_data* %256 to %struct.map_node*
  store %struct.map_node* %257, %struct.map_node** %9, align 8
  %258 = load %struct.map_node*, %struct.map_node** %9, align 8
  %259 = icmp eq %struct.map_node* %258, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  store i32 0, i32* %2, align 4
  br label %498

261:                                              ; preds = %253
  %262 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %263 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %264 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.map_node*, %struct.map_node** %9, align 8
  %267 = getelementptr inbounds %struct.map_node, %struct.map_node* %266, i32 0, i32 15
  %268 = bitcast i32** %267 to i8**
  %269 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %270 = load %struct.map_node*, %struct.map_node** %9, align 8
  %271 = getelementptr inbounds %struct.map_node, %struct.map_node* %270, i32 0, i32 3
  %272 = call i64 @aic_dmamem_alloc(%struct.ahd_softc* %262, i32 %265, i8** %268, i32 %269, i32* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %261
  %275 = load %struct.map_node*, %struct.map_node** %9, align 8
  %276 = bitcast %struct.map_node* %275 to %struct.scb_platform_data*
  %277 = load i32, i32* @M_DEVBUF, align 4
  %278 = call i32 @free(%struct.scb_platform_data* %276, i32 %277)
  store i32 0, i32* %2, align 4
  br label %498

279:                                              ; preds = %261
  %280 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %281 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %280, i32 0, i32 5
  %282 = load %struct.map_node*, %struct.map_node** %9, align 8
  %283 = bitcast %struct.map_node* %282 to %struct.scb_platform_data*
  %284 = load i32, i32* @links, align 4
  %285 = call i32 @SLIST_INSERT_HEAD(i32* %281, %struct.scb_platform_data* %283, i32 %284)
  %286 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %287 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %288 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.map_node*, %struct.map_node** %9, align 8
  %291 = getelementptr inbounds %struct.map_node, %struct.map_node* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.map_node*, %struct.map_node** %9, align 8
  %294 = getelementptr inbounds %struct.map_node, %struct.map_node* %293, i32 0, i32 15
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* @PAGE_SIZE, align 4
  %297 = load i32, i32* @ahd_dmamap_cb, align 4
  %298 = load %struct.map_node*, %struct.map_node** %9, align 8
  %299 = getelementptr inbounds %struct.map_node, %struct.map_node* %298, i32 0, i32 14
  %300 = call i32 @aic_dmamap_load(%struct.ahd_softc* %286, i32 %289, i32 %292, i32* %295, i32 %296, i32 %297, i8** %299, i32 0)
  %301 = load %struct.map_node*, %struct.map_node** %9, align 8
  %302 = getelementptr inbounds %struct.map_node, %struct.map_node* %301, i32 0, i32 15
  %303 = load i32*, i32** %302, align 8
  store i32* %303, i32** %11, align 8
  %304 = load %struct.map_node*, %struct.map_node** %9, align 8
  %305 = getelementptr inbounds %struct.map_node, %struct.map_node* %304, i32 0, i32 14
  %306 = load i8*, i8** %305, align 8
  store i8* %306, i8** %14, align 8
  %307 = load i32, i32* @PAGE_SIZE, align 4
  %308 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %309 = sdiv i32 %307, %308
  %310 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %311 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %310, i32 0, i32 3
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %279, %229
  %313 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %314 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %317 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @MIN(i32 %315, i32 %318)
  store i32 %319, i32* %15, align 4
  %320 = load i32, i32* %15, align 4
  %321 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %322 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @MIN(i32 %320, i32 %323)
  store i32 %324, i32* %15, align 4
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* @AHD_SCB_MAX_ALLOC, align 4
  %327 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %328 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = sub nsw i32 %326, %329
  %331 = call i32 @MIN(i32 %325, i32 %330)
  store i32 %331, i32* %15, align 4
  %332 = load i32, i32* %15, align 4
  %333 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %334 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = sub nsw i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %339 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %340, %337
  store i32 %341, i32* %339, align 4
  %342 = load i32, i32* %15, align 4
  %343 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %344 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %345, %342
  store i32 %346, i32* %344, align 4
  store i32 0, i32* %16, align 4
  br label %347

347:                                              ; preds = %493, %312
  %348 = load i32, i32* %16, align 4
  %349 = load i32, i32* %15, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %496

351:                                              ; preds = %347
  %352 = load i32, i32* @M_DEVBUF, align 4
  %353 = load i32, i32* @M_NOWAIT, align 4
  %354 = call %struct.scb_platform_data* @malloc(i32 120, i32 %352, i32 %353)
  %355 = bitcast %struct.scb_platform_data* %354 to %struct.scb*
  store %struct.scb* %355, %struct.scb** %5, align 8
  %356 = load %struct.scb*, %struct.scb** %5, align 8
  %357 = icmp eq %struct.scb* %356, null
  br i1 %357, label %358, label %359

358:                                              ; preds = %351
  br label %496

359:                                              ; preds = %351
  %360 = load i32, i32* @M_DEVBUF, align 4
  %361 = load i32, i32* @M_NOWAIT, align 4
  %362 = call %struct.scb_platform_data* @malloc(i32 120, i32 %360, i32 %361)
  store %struct.scb_platform_data* %362, %struct.scb_platform_data** %20, align 8
  %363 = load %struct.scb_platform_data*, %struct.scb_platform_data** %20, align 8
  %364 = icmp eq %struct.scb_platform_data* %363, null
  br i1 %364, label %365, label %370

365:                                              ; preds = %359
  %366 = load %struct.scb*, %struct.scb** %5, align 8
  %367 = bitcast %struct.scb* %366 to %struct.scb_platform_data*
  %368 = load i32, i32* @M_DEVBUF, align 4
  %369 = call i32 @free(%struct.scb_platform_data* %367, i32 %368)
  br label %496

370:                                              ; preds = %359
  %371 = load %struct.scb_platform_data*, %struct.scb_platform_data** %20, align 8
  %372 = bitcast %struct.scb_platform_data* %371 to %struct.scb*
  %373 = load %struct.scb*, %struct.scb** %5, align 8
  %374 = getelementptr inbounds %struct.scb, %struct.scb* %373, i32 0, i32 13
  store %struct.scb* %372, %struct.scb** %374, align 8
  %375 = load %struct.map_node*, %struct.map_node** %7, align 8
  %376 = bitcast %struct.map_node* %375 to %struct.scb*
  %377 = load %struct.scb*, %struct.scb** %5, align 8
  %378 = getelementptr inbounds %struct.scb, %struct.scb* %377, i32 0, i32 12
  store %struct.scb* %376, %struct.scb** %378, align 8
  %379 = load %struct.map_node*, %struct.map_node** %8, align 8
  %380 = bitcast %struct.map_node* %379 to %struct.scb*
  %381 = load %struct.scb*, %struct.scb** %5, align 8
  %382 = getelementptr inbounds %struct.scb, %struct.scb* %381, i32 0, i32 11
  store %struct.scb* %380, %struct.scb** %382, align 8
  %383 = load %struct.map_node*, %struct.map_node** %9, align 8
  %384 = bitcast %struct.map_node* %383 to %struct.scb*
  %385 = load %struct.scb*, %struct.scb** %5, align 8
  %386 = getelementptr inbounds %struct.scb, %struct.scb* %385, i32 0, i32 10
  store %struct.scb* %384, %struct.scb** %386, align 8
  %387 = load i32*, i32** %10, align 8
  %388 = load %struct.scb*, %struct.scb** %5, align 8
  %389 = getelementptr inbounds %struct.scb, %struct.scb* %388, i32 0, i32 9
  store i32* %387, i32** %389, align 8
  %390 = load i32*, i32** %11, align 8
  %391 = load %struct.scb*, %struct.scb** %5, align 8
  %392 = getelementptr inbounds %struct.scb, %struct.scb* %391, i32 0, i32 8
  store i32* %390, i32** %392, align 8
  %393 = load i8*, i8** %14, align 8
  %394 = load %struct.scb*, %struct.scb** %5, align 8
  %395 = getelementptr inbounds %struct.scb, %struct.scb* %394, i32 0, i32 7
  store i8* %393, i8** %395, align 8
  %396 = load %struct.hardware_scb*, %struct.hardware_scb** %6, align 8
  %397 = call i32 @memset(%struct.hardware_scb* %396, i32 0, i32 8)
  %398 = load %struct.hardware_scb*, %struct.hardware_scb** %6, align 8
  %399 = load %struct.scb*, %struct.scb** %5, align 8
  %400 = getelementptr inbounds %struct.scb, %struct.scb* %399, i32 0, i32 2
  store %struct.hardware_scb* %398, %struct.hardware_scb** %400, align 8
  %401 = load i8*, i8** %12, align 8
  %402 = call i32 @aic_htole32(i8* %401)
  %403 = load %struct.hardware_scb*, %struct.hardware_scb** %6, align 8
  %404 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %403, i32 0, i32 1
  store i32 %402, i32* %404, align 4
  %405 = load i8*, i8** %13, align 8
  %406 = load %struct.scb*, %struct.scb** %5, align 8
  %407 = getelementptr inbounds %struct.scb, %struct.scb* %406, i32 0, i32 6
  store i8* %405, i8** %407, align 8
  %408 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %409 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %370
  %415 = load %struct.scb*, %struct.scb** %5, align 8
  %416 = getelementptr inbounds %struct.scb, %struct.scb* %415, i32 0, i32 6
  %417 = load i8*, i8** %416, align 8
  %418 = getelementptr i8, i8* %417, i64 4
  store i8* %418, i8** %416, align 8
  br label %424

419:                                              ; preds = %370
  %420 = load %struct.scb*, %struct.scb** %5, align 8
  %421 = getelementptr inbounds %struct.scb, %struct.scb* %420, i32 0, i32 6
  %422 = load i8*, i8** %421, align 8
  %423 = getelementptr i8, i8* %422, i64 4
  store i8* %423, i8** %421, align 8
  br label %424

424:                                              ; preds = %419, %414
  %425 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %426 = load %struct.scb*, %struct.scb** %5, align 8
  %427 = getelementptr inbounds %struct.scb, %struct.scb* %426, i32 0, i32 5
  store %struct.ahd_softc* %425, %struct.ahd_softc** %427, align 8
  %428 = load i32, i32* @SCB_FLAG_NONE, align 4
  %429 = load %struct.scb*, %struct.scb** %5, align 8
  %430 = getelementptr inbounds %struct.scb, %struct.scb* %429, i32 0, i32 4
  store i32 %428, i32* %430, align 4
  %431 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %432 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @aic_htole16(i32 %433)
  %435 = load %struct.scb*, %struct.scb** %5, align 8
  %436 = getelementptr inbounds %struct.scb, %struct.scb* %435, i32 0, i32 2
  %437 = load %struct.hardware_scb*, %struct.hardware_scb** %436, align 8
  %438 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %437, i32 0, i32 0
  store i32 %434, i32* %438, align 4
  %439 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %440 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = xor i32 %441, 256
  store i32 %442, i32* %21, align 4
  %443 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %444 = load i32, i32* %21, align 4
  %445 = call %struct.TYPE_2__* @ahd_find_scb_by_tag(%struct.ahd_softc* %443, i32 %444)
  %446 = load %struct.scb*, %struct.scb** %5, align 8
  %447 = getelementptr inbounds %struct.scb, %struct.scb* %446, i32 0, i32 1
  store %struct.TYPE_2__* %445, %struct.TYPE_2__** %447, align 8
  %448 = load %struct.scb*, %struct.scb** %5, align 8
  %449 = getelementptr inbounds %struct.scb, %struct.scb* %448, i32 0, i32 1
  %450 = load %struct.TYPE_2__*, %struct.TYPE_2__** %449, align 8
  %451 = icmp ne %struct.TYPE_2__* %450, null
  br i1 %451, label %452, label %459

452:                                              ; preds = %424
  %453 = load %struct.scb*, %struct.scb** %5, align 8
  %454 = bitcast %struct.scb* %453 to %struct.scb_platform_data*
  %455 = load %struct.scb*, %struct.scb** %5, align 8
  %456 = getelementptr inbounds %struct.scb, %struct.scb* %455, i32 0, i32 1
  %457 = load %struct.TYPE_2__*, %struct.TYPE_2__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %457, i32 0, i32 0
  store %struct.scb_platform_data* %454, %struct.scb_platform_data** %458, align 8
  br label %459

459:                                              ; preds = %452, %424
  %460 = load %struct.scb*, %struct.scb** %5, align 8
  %461 = getelementptr inbounds %struct.scb, %struct.scb* %460, i32 0, i32 0
  %462 = call i32 @aic_timer_init(i32* %461)
  %463 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %464 = load %struct.scb*, %struct.scb** %5, align 8
  %465 = bitcast %struct.scb* %464 to %struct.scb_platform_data*
  %466 = call i32 @ahd_free_scb(%struct.ahd_softc* %463, %struct.scb_platform_data* %465)
  %467 = load %struct.hardware_scb*, %struct.hardware_scb** %6, align 8
  %468 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %467, i32 1
  store %struct.hardware_scb* %468, %struct.hardware_scb** %6, align 8
  %469 = load i8*, i8** %12, align 8
  %470 = getelementptr i8, i8* %469, i64 8
  store i8* %470, i8** %12, align 8
  %471 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %472 = call i32 @ahd_sglist_size(%struct.ahd_softc* %471)
  %473 = load i32*, i32** %10, align 8
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  store i32* %475, i32** %10, align 8
  %476 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %477 = call i32 @ahd_sglist_size(%struct.ahd_softc* %476)
  %478 = load i8*, i8** %13, align 8
  %479 = sext i32 %477 to i64
  %480 = getelementptr i8, i8* %478, i64 %479
  store i8* %480, i8** %13, align 8
  %481 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %482 = load i32*, i32** %11, align 8
  %483 = sext i32 %481 to i64
  %484 = getelementptr inbounds i32, i32* %482, i64 %483
  store i32* %484, i32** %11, align 8
  %485 = load i32, i32* @AHD_SENSE_BUFSIZE, align 4
  %486 = load i8*, i8** %14, align 8
  %487 = sext i32 %485 to i64
  %488 = getelementptr i8, i8* %486, i64 %487
  store i8* %488, i8** %14, align 8
  %489 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %490 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %490, align 4
  br label %493

493:                                              ; preds = %459
  %494 = load i32, i32* %16, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %16, align 4
  br label %347

496:                                              ; preds = %365, %358, %347
  %497 = load i32, i32* %16, align 4
  store i32 %497, i32* %2, align 4
  br label %498

498:                                              ; preds = %496, %274, %260, %183, %167, %86, %70, %29
  %499 = load i32, i32* %2, align 4
  ret i32 %499
}

declare dso_local %struct.scb_platform_data* @SLIST_FIRST(i32*) #1

declare dso_local %struct.scb_platform_data* @malloc(i32, i32, i32) #1

declare dso_local i64 @aic_dmamem_alloc(%struct.ahd_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @free(%struct.scb_platform_data*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.scb_platform_data*, i32) #1

declare dso_local i32 @aic_dmamap_load(%struct.ahd_softc*, i32, i32, i32*, i32, i32, i8**, i32) #1

declare dso_local i32 @ahd_sglist_allocsize(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_sglist_size(%struct.ahd_softc*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memset(%struct.hardware_scb*, i32, i32) #1

declare dso_local i32 @aic_htole32(i8*) #1

declare dso_local i32 @aic_htole16(i32) #1

declare dso_local %struct.TYPE_2__* @ahd_find_scb_by_tag(%struct.ahd_softc*, i32) #1

declare dso_local i32 @aic_timer_init(i32*) #1

declare dso_local i32 @ahd_free_scb(%struct.ahd_softc*, %struct.scb_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
