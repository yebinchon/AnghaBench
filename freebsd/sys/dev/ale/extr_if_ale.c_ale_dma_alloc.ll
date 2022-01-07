; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.ale_txdesc*, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ale_txdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ale_dmamap_arg = type { i64 }

@ALE_FLAG_JUMBO = common dso_local global i32 0, align 4
@ALE_JUMBO_FRAMELEN = common dso_local global i32 0, align 4
@ALE_MAX_FRAMELEN = common dso_local global i32 0, align 4
@ALE_RX_PAGE_SZ = common dso_local global i64 0, align 8
@ALE_RX_PAGE_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create parent DMA tag.\0A\00", align 1
@ALE_TX_RING_ALIGN = common dso_local global i32 0, align 4
@ALE_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not create Tx ring DMA tag.\0A\00", align 1
@ALE_RX_PAGES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"could not create Rx page %d DMA tag.\0A\00", align 1
@ALE_CMB_ALIGN = common dso_local global i32 0, align 4
@ALE_TX_CMB_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not create Tx CMB DMA tag.\0A\00", align 1
@ALE_RX_CMB_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"could not create Rx page %d CMB DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Tx ring.\0A\00", align 1
@ale_dmamap_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Tx ring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"could not allocate DMA'able memory for Rx page %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"could not load DMA'able memory for Rx page %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"could not allocate DMA'able memory for Tx CMB.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"could not load DMA'able memory for Tx CMB.\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"could not allocate DMA'able memory for Rx page %d CMB.\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"could not load DMA'able memory for Rx page %d CMB.\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [63 x i8] c"4GB boundary crossed, switching to 32bit DMA addressing mode.\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"could not create parent buffer DMA tag.\0A\00", align 1
@ALE_TSO_MAXSIZE = common dso_local global i32 0, align 4
@ALE_MAXTXSEGS = common dso_local global i32 0, align 4
@ALE_TSO_MAXSEGSIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"could not create Tx DMA tag.\0A\00", align 1
@ALE_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"could not create Tx dmamap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ale_softc*)* @ale_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_dma_alloc(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ale_txdesc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ale_dmamap_arg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %9 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ALE_FLAG_JUMBO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ALE_JUMBO_FRAMELEN, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ALE_MAX_FRAMELEN, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @ALE_RX_PAGE_SZ, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @ALE_RX_PAGE_ALIGN, align 4
  %25 = call i32 @roundup(i64 %23, i32 %24)
  %26 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %501, %19
  %30 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bus_get_dma_tag(i32 %32)
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %36 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %38 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 12
  %41 = call i32 @bus_dma_tag_create(i32 %33, i32 1, i32 0, i64 %34, i64 %35, i32* null, i32* null, i32 %36, i32 0, i32 %37, i32 0, i32* null, i32* null, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %586

49:                                               ; preds = %29
  %50 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ALE_TX_RING_ALIGN, align 4
  %55 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %56 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %57 = load i32, i32* @ALE_TX_RING_SZ, align 4
  %58 = load i32, i32* @ALE_TX_RING_SZ, align 4
  %59 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 11
  %62 = call i32 @bus_dma_tag_create(i32 %53, i32 %54, i32 0, i64 %55, i64 %56, i32* null, i32* null, i32 %57, i32 1, i32 %58, i32 0, i32* null, i32* null, i32* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %586

70:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %107, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ALE_RX_PAGES, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ALE_RX_PAGE_ALIGN, align 4
  %81 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %82 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %83 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %90 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 7
  %97 = call i32 @bus_dma_tag_create(i32 %79, i32 %80, i32 0, i64 %81, i64 %82, i32* null, i32* null, i32 %85, i32 1, i32 %88, i32 0, i32* null, i32* null, i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %75
  %101 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %102 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %586

106:                                              ; preds = %75
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %71

110:                                              ; preds = %71
  %111 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ALE_CMB_ALIGN, align 4
  %116 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %117 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %118 = load i32, i32* @ALE_TX_CMB_SZ, align 4
  %119 = load i32, i32* @ALE_TX_CMB_SZ, align 4
  %120 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %121 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 8
  %123 = call i32 @bus_dma_tag_create(i32 %114, i32 %115, i32 0, i64 %116, i64 %117, i32* null, i32* null, i32 %118, i32 1, i32 %119, i32 0, i32* null, i32* null, i32* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %110
  %127 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %128 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %586

131:                                              ; preds = %110
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %164, %131
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @ALE_RX_PAGES, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %167

136:                                              ; preds = %132
  %137 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %138 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 12
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ALE_CMB_ALIGN, align 4
  %142 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %143 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %144 = load i32, i32* @ALE_RX_CMB_SZ, align 4
  %145 = load i32, i32* @ALE_RX_CMB_SZ, align 4
  %146 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %147 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 4
  %154 = call i32 @bus_dma_tag_create(i32 %140, i32 %141, i32 0, i64 %142, i64 %143, i32* null, i32* null, i32 %144, i32 1, i32 %145, i32 0, i32* null, i32* null, i32* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %136
  %158 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %159 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  br label %586

163:                                              ; preds = %136
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %132

167:                                              ; preds = %132
  %168 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %169 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %173 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 9
  %175 = bitcast i32* %174 to i8**
  %176 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %177 = load i32, i32* @BUS_DMA_ZERO, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %182 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 10
  %184 = call i32 @bus_dmamem_alloc(i32 %171, i8** %175, i32 %180, i32* %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %167
  %188 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %189 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %586

192:                                              ; preds = %167
  %193 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %195 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %199 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %203 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @ALE_TX_RING_SZ, align 4
  %207 = load i32, i32* @ale_dmamap_cb, align 4
  %208 = call i32 @bus_dmamap_load(i32 %197, i32 %201, i32 %205, i32 %206, i32 %207, %struct.ale_dmamap_arg* %5, i32 0)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %192
  %212 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211, %192
  %216 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %217 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @device_printf(i32 %218, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %586

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %224 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  store i64 %222, i64* %225, align 8
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %328, %220
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @ALE_RX_PAGES, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %331

230:                                              ; preds = %226
  %231 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %232 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %241 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 5
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 5
  %248 = bitcast i32* %247 to i8**
  %249 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %250 = load i32, i32* @BUS_DMA_ZERO, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %253 = or i32 %251, %252
  %254 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %255 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %256, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 6
  %262 = call i32 @bus_dmamem_alloc(i32 %239, i8** %248, i32 %253, i32* %261)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %230
  %266 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %267 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 (i32, i8*, ...) @device_printf(i32 %268, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %269)
  br label %586

271:                                              ; preds = %230
  %272 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %272, align 8
  %273 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %274 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 5
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %275, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %283 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %292 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %301 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @ale_dmamap_cb, align 4
  %304 = call i32 @bus_dmamap_load(i32 %281, i32 %290, i32 %299, i32 %302, i32 %303, %struct.ale_dmamap_arg* %5, i32 0)
  store i32 %304, i32* %6, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %271
  %308 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %307, %271
  %312 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %313 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %8, align 4
  %316 = call i32 (i32, i8*, ...) @device_printf(i32 %314, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %315)
  br label %586

317:                                              ; preds = %307
  %318 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %321 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 5
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  store i64 %319, i64* %327, align 8
  br label %328

328:                                              ; preds = %317
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %8, align 4
  br label %226

331:                                              ; preds = %226
  %332 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %333 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 8
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %337 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 6
  %339 = bitcast i32* %338 to i8**
  %340 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %341 = load i32, i32* @BUS_DMA_ZERO, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %344 = or i32 %342, %343
  %345 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %346 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 7
  %348 = call i32 @bus_dmamem_alloc(i32 %335, i8** %339, i32 %344, i32* %347)
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* %6, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %331
  %352 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %353 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (i32, i8*, ...) @device_printf(i32 %354, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %586

356:                                              ; preds = %331
  %357 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %357, align 8
  %358 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %359 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 8
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %363 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %367 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 6
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @ALE_TX_CMB_SZ, align 4
  %371 = load i32, i32* @ale_dmamap_cb, align 4
  %372 = call i32 @bus_dmamap_load(i32 %361, i32 %365, i32 %369, i32 %370, i32 %371, %struct.ale_dmamap_arg* %5, i32 0)
  store i32 %372, i32* %6, align 4
  %373 = load i32, i32* %6, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %356
  %376 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %375, %356
  %380 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %381 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = call i32 (i32, i8*, ...) @device_printf(i32 %382, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %586

384:                                              ; preds = %375
  %385 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %388 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 1
  store i64 %386, i64* %389, align 8
  store i32 0, i32* %8, align 4
  br label %390

390:                                              ; preds = %490, %384
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @ALE_RX_PAGES, align 4
  %393 = icmp slt i32 %391, %392
  br i1 %393, label %394, label %493

394:                                              ; preds = %390
  %395 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %396 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 5
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** %397, align 8
  %399 = load i32, i32* %8, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 4
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %405 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 5
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %406, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 2
  %412 = bitcast i32* %411 to i8**
  %413 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %414 = load i32, i32* @BUS_DMA_ZERO, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %417 = or i32 %415, %416
  %418 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %419 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 5
  %421 = load %struct.TYPE_3__*, %struct.TYPE_3__** %420, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 3
  %426 = call i32 @bus_dmamem_alloc(i32 %403, i8** %412, i32 %417, i32* %425)
  store i32 %426, i32* %6, align 4
  %427 = load i32, i32* %6, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %394
  %430 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %431 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* %8, align 4
  %434 = call i32 (i32, i8*, ...) @device_printf(i32 %432, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %433)
  br label %586

435:                                              ; preds = %394
  %436 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %436, align 8
  %437 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %438 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 5
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %439, align 8
  %441 = load i32, i32* %8, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %447 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 5
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %448, align 8
  %450 = load i32, i32* %8, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %456 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %456, i32 0, i32 5
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %457, align 8
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @ALE_RX_CMB_SZ, align 4
  %465 = load i32, i32* @ale_dmamap_cb, align 4
  %466 = call i32 @bus_dmamap_load(i32 %445, i32 %454, i32 %463, i32 %464, i32 %465, %struct.ale_dmamap_arg* %5, i32 0)
  store i32 %466, i32* %6, align 4
  %467 = load i32, i32* %6, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %435
  %470 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %473, label %479

473:                                              ; preds = %469, %435
  %474 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %475 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %8, align 4
  %478 = call i32 (i32, i8*, ...) @device_printf(i32 %476, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %477)
  br label %586

479:                                              ; preds = %469
  %480 = getelementptr inbounds %struct.ale_dmamap_arg, %struct.ale_dmamap_arg* %5, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %483 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 5
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %484, align 8
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 1
  store i64 %481, i64* %489, align 8
  br label %490

490:                                              ; preds = %479
  %491 = load i32, i32* %8, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %8, align 4
  br label %390

493:                                              ; preds = %390
  %494 = load i64, i64* %4, align 8
  %495 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %496 = icmp ne i64 %494, %495
  br i1 %496, label %497, label %509

497:                                              ; preds = %493
  %498 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %499 = call i32 @ale_check_boundary(%struct.ale_softc* %498)
  store i32 %499, i32* %6, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %509

501:                                              ; preds = %497
  %502 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %503 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = call i32 (i32, i8*, ...) @device_printf(i32 %504, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0))
  %506 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %507 = call i32 @ale_dma_free(%struct.ale_softc* %506)
  %508 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  store i64 %508, i64* %4, align 8
  br label %29

509:                                              ; preds = %497, %493
  %510 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %511 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @bus_get_dma_tag(i32 %512)
  %514 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %515 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %516 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %517 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %518 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %519 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 4
  %521 = call i32 @bus_dma_tag_create(i32 %513, i32 1, i32 0, i64 %514, i64 %515, i32* null, i32* null, i32 %516, i32 0, i32 %517, i32 0, i32* null, i32* null, i32* %520)
  store i32 %521, i32* %6, align 4
  %522 = load i32, i32* %6, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %509
  %525 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %526 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = call i32 (i32, i8*, ...) @device_printf(i32 %527, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  br label %586

529:                                              ; preds = %509
  %530 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %531 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %530, i32 0, i32 2
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 8
  %534 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %535 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %536 = load i32, i32* @ALE_TSO_MAXSIZE, align 4
  %537 = load i32, i32* @ALE_MAXTXSEGS, align 4
  %538 = load i32, i32* @ALE_TSO_MAXSEGSIZE, align 4
  %539 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %540 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %540, i32 0, i32 2
  %542 = call i32 @bus_dma_tag_create(i32 %533, i32 1, i32 0, i64 %534, i64 %535, i32* null, i32* null, i32 %536, i32 %537, i32 %538, i32 0, i32* null, i32* null, i32* %541)
  store i32 %542, i32* %6, align 4
  %543 = load i32, i32* %6, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %529
  %546 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %547 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = call i32 (i32, i8*, ...) @device_printf(i32 %548, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  br label %586

550:                                              ; preds = %529
  store i32 0, i32* %8, align 4
  br label %551

551:                                              ; preds = %582, %550
  %552 = load i32, i32* %8, align 4
  %553 = load i32, i32* @ALE_TX_RING_CNT, align 4
  %554 = icmp slt i32 %552, %553
  br i1 %554, label %555, label %585

555:                                              ; preds = %551
  %556 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %557 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 3
  %559 = load %struct.ale_txdesc*, %struct.ale_txdesc** %558, align 8
  %560 = load i32, i32* %8, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %559, i64 %561
  store %struct.ale_txdesc* %562, %struct.ale_txdesc** %3, align 8
  %563 = load %struct.ale_txdesc*, %struct.ale_txdesc** %3, align 8
  %564 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %563, i32 0, i32 1
  store i32* null, i32** %564, align 8
  %565 = load %struct.ale_txdesc*, %struct.ale_txdesc** %3, align 8
  %566 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %565, i32 0, i32 0
  store i32* null, i32** %566, align 8
  %567 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %568 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %567, i32 0, i32 2
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 8
  %571 = load %struct.ale_txdesc*, %struct.ale_txdesc** %3, align 8
  %572 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %571, i32 0, i32 0
  %573 = call i32 @bus_dmamap_create(i32 %570, i32 0, i32** %572)
  store i32 %573, i32* %6, align 4
  %574 = load i32, i32* %6, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %555
  %577 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %578 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = call i32 (i32, i8*, ...) @device_printf(i32 %579, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %586

581:                                              ; preds = %555
  br label %582

582:                                              ; preds = %581
  %583 = load i32, i32* %8, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %8, align 4
  br label %551

585:                                              ; preds = %551
  br label %586

586:                                              ; preds = %585, %576, %545, %524, %473, %429, %379, %351, %311, %265, %215, %187, %157, %126, %100, %65, %44
  %587 = load i32, i32* %6, align 4
  ret i32 %587
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i64, i64, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.ale_dmamap_arg*, i32) #1

declare dso_local i32 @ale_check_boundary(%struct.ale_softc*) #1

declare dso_local i32 @ale_dma_free(%struct.ale_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
