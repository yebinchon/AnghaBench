; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_setup_descs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_setup_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i64, i64, i64, %struct.TYPE_4__*, i32**, i32**, i32, i32, i32, i64, i64, i64, %struct.TYPE_3__*, i32**, i32**, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MAX_DESC_RING_SIZE = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@TX_MAX_DMA_SEGS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@CGEM_NUM_RX_DESCS = common dso_local global i32 0, align 4
@cgem_getaddr = common dso_local global i32 0, align 4
@CGEM_RXDESC_OWN = common dso_local global i32 0, align 4
@CGEM_RXDESC_WRAP = common dso_local global i32 0, align 4
@CGEM_NUM_TX_DESCS = common dso_local global i32 0, align 4
@CGEM_TXDESC_USED = common dso_local global i32 0, align 4
@CGEM_TXDESC_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgem_softc*)* @cgem_setup_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgem_setup_descs(%struct.cgem_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgem_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %3, align 8
  %6 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %7 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %6, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %8 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %9 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %8, i32 0, i32 12
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %9, align 8
  %10 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %11 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %10, i32 0, i32 19
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @bus_get_dma_tag(i32 %12)
  %14 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load i32, i32* @MAX_DESC_RING_SIZE, align 4
  %17 = load i32, i32* @MAX_DESC_RING_SIZE, align 4
  %18 = load i32, i32* @busdma_lock_mutex, align 4
  %19 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %20 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %19, i32 0, i32 18
  %21 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %21, i32 0, i32 8
  %23 = call i32 @bus_dma_tag_create(i32 %13, i32 1, i32 0, i32 %14, i32 %15, i32* null, i32* null, i32 %16, i32 1, i32 %17, i32 0, i32 %18, i32* %20, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %237

28:                                               ; preds = %1
  %29 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %30 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %29, i32 0, i32 19
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bus_get_dma_tag(i32 %31)
  %33 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @MCLBYTES, align 4
  %36 = load i32, i32* @TX_MAX_DMA_SEGS, align 4
  %37 = load i32, i32* @MCLBYTES, align 4
  %38 = load i32, i32* @busdma_lock_mutex, align 4
  %39 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %40 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %39, i32 0, i32 18
  %41 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %42 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %41, i32 0, i32 17
  %43 = call i32 @bus_dma_tag_create(i32 %32, i32 1, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %35, i32 %36, i32 %37, i32 0, i32 %38, i32* %40, i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %237

48:                                               ; preds = %28
  %49 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %50 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %53 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %52, i32 0, i32 12
  %54 = bitcast %struct.TYPE_3__** %53 to i8**
  %55 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %56 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %59 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %58, i32 0, i32 16
  %60 = call i32 @bus_dmamem_alloc(i32 %51, i8** %54, i32 %57, i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %237

65:                                               ; preds = %48
  %66 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %67 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %70 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %69, i32 0, i32 16
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %73 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %72, i32 0, i32 12
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = bitcast %struct.TYPE_3__* %74 to i8*
  %76 = load i32, i32* @CGEM_NUM_RX_DESCS, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @cgem_getaddr, align 4
  %81 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %82 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %81, i32 0, i32 15
  %83 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %84 = call i32 @bus_dmamap_load(i32 %68, i32 %71, i8* %75, i32 %79, i32 %80, i32* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %65
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %237

89:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %122, %89
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @CGEM_NUM_RX_DESCS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %90
  %95 = load i32, i32* @CGEM_RXDESC_OWN, align 4
  %96 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %97 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %96, i32 0, i32 12
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %95, i32* %102, align 8
  %103 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %104 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %103, i32 0, i32 12
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %111 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %110, i32 0, i32 14
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  store i32* null, i32** %115, align 8
  %116 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %117 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %116, i32 0, i32 13
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %94
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %90

125:                                              ; preds = %90
  %126 = load i32, i32* @CGEM_RXDESC_WRAP, align 4
  %127 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %128 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %127, i32 0, i32 12
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* @CGEM_NUM_RX_DESCS, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %126
  store i32 %136, i32* %134, align 8
  %137 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %138 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %137, i32 0, i32 11
  store i64 0, i64* %138, align 8
  %139 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %140 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %139, i32 0, i32 10
  store i64 0, i64* %140, align 8
  %141 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %142 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %141, i32 0, i32 9
  store i64 0, i64* %142, align 8
  %143 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %144 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %147 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %146, i32 0, i32 3
  %148 = bitcast %struct.TYPE_4__** %147 to i8**
  %149 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %150 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %153 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %152, i32 0, i32 7
  %154 = call i32 @bus_dmamem_alloc(i32 %145, i8** %148, i32 %151, i32* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %125
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %237

159:                                              ; preds = %125
  %160 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %161 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %164 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %167 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %166, i32 0, i32 3
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = bitcast %struct.TYPE_4__* %168 to i8*
  %170 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @cgem_getaddr, align 4
  %175 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %176 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %175, i32 0, i32 6
  %177 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %178 = call i32 @bus_dmamap_load(i32 %162, i32 %165, i8* %169, i32 %173, i32 %174, i32* %176, i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %159
  %182 = load i32, i32* %5, align 4
  store i32 %182, i32* %2, align 4
  br label %237

183:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %216, %183
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %219

188:                                              ; preds = %184
  %189 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %190 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %189, i32 0, i32 3
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i64 0, i64* %195, align 8
  %196 = load i32, i32* @CGEM_TXDESC_USED, align 4
  %197 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %198 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %197, i32 0, i32 3
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  store i32 %196, i32* %203, align 8
  %204 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %205 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %204, i32 0, i32 5
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  store i32* null, i32** %209, align 8
  %210 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %211 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %210, i32 0, i32 4
  %212 = load i32**, i32*** %211, align 8
  %213 = load i32, i32* %4, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %212, i64 %214
  store i32* null, i32** %215, align 8
  br label %216

216:                                              ; preds = %188
  %217 = load i32, i32* %4, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %4, align 4
  br label %184

219:                                              ; preds = %184
  %220 = load i32, i32* @CGEM_TXDESC_WRAP, align 4
  %221 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %222 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %221, i32 0, i32 3
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %220
  store i32 %230, i32* %228, align 8
  %231 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %232 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %231, i32 0, i32 2
  store i64 0, i64* %232, align 8
  %233 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %234 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %233, i32 0, i32 1
  store i64 0, i64* %234, align 8
  %235 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %236 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %235, i32 0, i32 0
  store i64 0, i64* %236, align 8
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %219, %181, %157, %87, %63, %46, %26
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
