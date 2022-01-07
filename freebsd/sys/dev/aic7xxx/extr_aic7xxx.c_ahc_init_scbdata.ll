; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_init_scbdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_init_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.scb_data* }
%struct.scb_data = type { i64, i64, %struct.scb*, i32, i32, i32, %struct.scb*, i32, i32, i32, i32, i32, %struct.scb*, i32, i32 }
%struct.scb = type { i32 }

@AHC_SCB_MAX_ALLOC = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: No SCB space found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@ahc_dmamap_cb = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: ahc_init_scbdata - Unable to allocate initial scbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_init_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_init_scbdata(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb_data*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 2
  %7 = load %struct.scb_data*, %struct.scb_data** %6, align 8
  store %struct.scb_data* %7, %struct.scb_data** %4, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %9 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %8, i32 0, i32 14
  %10 = call i32 @SLIST_INIT(i32* %9)
  %11 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %12 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %11, i32 0, i32 13
  %13 = call i32 @SLIST_INIT(i32* %12)
  %14 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i64 @malloc(i32 %17, i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.scb*
  %22 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %23 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %22, i32 0, i32 12
  store %struct.scb* %21, %struct.scb** %23, align 8
  %24 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %25 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %24, i32 0, i32 12
  %26 = load %struct.scb*, %struct.scb** %25, align 8
  %27 = icmp eq %struct.scb* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %232

30:                                               ; preds = %1
  %31 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %32 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %31, i32 0, i32 12
  %33 = load %struct.scb*, %struct.scb** %32, align 8
  %34 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.scb* %33, i32 0, i32 %37)
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %40 = call i64 @ahc_probe_scbs(%struct.ahc_softc* %39)
  %41 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %42 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 2
  %45 = load %struct.scb_data*, %struct.scb_data** %44, align 8
  %46 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %51 = call i8* @ahc_name(%struct.ahc_softc* %50)
  %52 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %232

54:                                               ; preds = %30
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %62 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %63 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %68 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %69 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %68, i32 0, i32 11
  %70 = call i64 @aic_dma_tag_create(%struct.ahc_softc* %55, i32 %58, i32 1, i64 %60, i64 %61, i32 %62, i32* null, i32* null, i32 %66, i32 1, i32 %67, i32 0, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %230

73:                                               ; preds = %54
  %74 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %75 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %79 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %80 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %83 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %82, i32 0, i32 2
  %84 = bitcast %struct.scb** %83 to i8**
  %85 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %86 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %89 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %88, i32 0, i32 10
  %90 = call i64 @aic_dmamem_alloc(%struct.ahc_softc* %78, i32 %81, i8** %84, i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %230

93:                                               ; preds = %73
  %94 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %95 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %99 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %100 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %103 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %106 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %105, i32 0, i32 2
  %107 = load %struct.scb*, %struct.scb** %106, align 8
  %108 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @ahc_dmamap_cb, align 4
  %113 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %114 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %113, i32 0, i32 9
  %115 = call i32 @aic_dmamap_load(%struct.ahc_softc* %98, i32 %101, i32 %104, %struct.scb* %107, i32 %111, i32 %112, i32* %114, i32 0)
  %116 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %117 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %121 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %122 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %125 = add nsw i64 %124, 1
  %126 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %127 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %128 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %133 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %134 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %133, i32 0, i32 8
  %135 = call i64 @aic_dma_tag_create(%struct.ahc_softc* %120, i32 %123, i32 1, i64 %125, i64 %126, i32 %127, i32* null, i32* null, i32 %131, i32 1, i32 %132, i32 0, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %93
  br label %230

138:                                              ; preds = %93
  %139 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %140 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %144 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %145 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %148 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %147, i32 0, i32 6
  %149 = bitcast %struct.scb** %148 to i8**
  %150 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %151 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %152 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %151, i32 0, i32 7
  %153 = call i64 @aic_dmamem_alloc(%struct.ahc_softc* %143, i32 %146, i8** %149, i32 %150, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %138
  br label %230

156:                                              ; preds = %138
  %157 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %158 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %162 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %163 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %166 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %169 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %168, i32 0, i32 6
  %170 = load %struct.scb*, %struct.scb** %169, align 8
  %171 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* @ahc_dmamap_cb, align 4
  %176 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %177 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %176, i32 0, i32 5
  %178 = call i32 @aic_dmamap_load(%struct.ahc_softc* %161, i32 %164, i32 %167, %struct.scb* %170, i32 %174, i32 %175, i32* %177, i32 0)
  %179 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %180 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %184 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %185 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %188 = add nsw i64 %187, 1
  %189 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %190 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %191 = load i32, i32* @PAGE_SIZE, align 4
  %192 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %193 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %194 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %193, i32 0, i32 4
  %195 = call i64 @aic_dma_tag_create(%struct.ahc_softc* %183, i32 %186, i32 8, i64 %188, i64 %189, i32 %190, i32* null, i32* null, i32 %191, i32 1, i32 %192, i32 0, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %156
  br label %230

198:                                              ; preds = %156
  %199 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %200 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  %203 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %204 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %203, i32 0, i32 2
  %205 = load %struct.scb*, %struct.scb** %204, align 8
  %206 = load i32, i32* @AHC_SCB_MAX_ALLOC, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 4
  %209 = trunc i64 %208 to i32
  %210 = call i32 @memset(%struct.scb* %205, i32 0, i32 %209)
  br label %211

211:                                              ; preds = %215, %198
  %212 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %213 = call i64 @ahc_alloc_scbs(%struct.ahc_softc* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %211

216:                                              ; preds = %211
  %217 = load %struct.scb_data*, %struct.scb_data** %4, align 8
  %218 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %223 = call i8* @ahc_name(%struct.ahc_softc* %222)
  %224 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %223)
  br label %230

225:                                              ; preds = %216
  %226 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %227 = call i32 @ahc_get_scb(%struct.ahc_softc* %226)
  %228 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %229 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  store i32 0, i32* %2, align 4
  br label %232

230:                                              ; preds = %221, %197, %155, %137, %92, %72
  %231 = load i32, i32* @ENOMEM, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %230, %225, %49, %28
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.scb*, i32, i32) #1

declare dso_local i64 @ahc_probe_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i64 @aic_dma_tag_create(%struct.ahc_softc*, i32, i32, i64, i64, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @aic_dmamem_alloc(%struct.ahc_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @aic_dmamap_load(%struct.ahc_softc*, i32, i32, %struct.scb*, i32, i32, i32*, i32) #1

declare dso_local i64 @ahc_alloc_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_get_scb(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
