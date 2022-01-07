; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.vr_rxdesc*, i32*, i32, %struct.vr_txdesc*, i32, i32, i32, i32, i32 }
%struct.vr_rxdesc = type { i32*, i32* }
%struct.vr_txdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.vr_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create parent DMA tag\0A\00", align 1
@VR_RING_ALIGN = common dso_local global i32 0, align 4
@VR_TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create Tx ring DMA tag\0A\00", align 1
@VR_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create Rx ring DMA tag\0A\00", align 1
@VR_Q_NEEDALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@VR_MAXFRAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create Tx DMA tag\0A\00", align 1
@VR_RX_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create Rx DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Tx ring\0A\00", align 1
@vr_dmamap_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Tx ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Rx ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Rx ring\0A\00", align 1
@VR_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to create Tx dmamap\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to create spare Rx dmamap\0A\00", align 1
@VR_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to create Rx dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vr_softc*)* @vr_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_dma_alloc(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca %struct.vr_dmamap_arg, align 8
  %4 = alloca %struct.vr_txdesc*, align 8
  %5 = alloca %struct.vr_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %9 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bus_get_dma_tag(i32 %11)
  %13 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %17 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 9
  %20 = call i32 @bus_dma_tag_create(i32 %12, i32 1, i32 0, i32 %13, i32 %14, i32* null, i32* null, i32 %15, i32 0, i32 %16, i32 0, i32* null, i32* null, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %25 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %326

28:                                               ; preds = %1
  %29 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VR_RING_ALIGN, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %36 = load i32, i32* @VR_TX_RING_SIZE, align 4
  %37 = load i32, i32* @VR_TX_RING_SIZE, align 4
  %38 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 8
  %41 = call i32 @bus_dma_tag_create(i32 %32, i32 %33, i32 0, i32 %34, i32 %35, i32* null, i32* null, i32 %36, i32 1, i32 %37, i32 0, i32* null, i32* null, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %46 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %326

49:                                               ; preds = %28
  %50 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %51 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @VR_RING_ALIGN, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %57 = load i32, i32* @VR_RX_RING_SIZE, align 4
  %58 = load i32, i32* @VR_RX_RING_SIZE, align 4
  %59 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %60 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 6
  %62 = call i32 @bus_dma_tag_create(i32 %53, i32 %54, i32 0, i32 %55, i32 %56, i32* null, i32* null, i32 %57, i32 1, i32 %58, i32 0, i32* null, i32* null, i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %67 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %326

70:                                               ; preds = %49
  %71 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %72 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @VR_Q_NEEDALIGN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 4, i32* %6, align 4
  br label %79

78:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %81 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %86 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %87 = load i32, i32* @MCLBYTES, align 4
  %88 = load i32, i32* @VR_MAXFRAGS, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* @VR_MAXFRAGS, align 4
  %91 = load i32, i32* @MCLBYTES, align 4
  %92 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %93 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = call i32 @bus_dma_tag_create(i32 %83, i32 %84, i32 0, i32 %85, i32 %86, i32* null, i32* null, i32 %89, i32 %90, i32 %91, i32 0, i32* null, i32* null, i32* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %79
  %99 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %100 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %326

103:                                              ; preds = %79
  %104 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %105 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @VR_RX_ALIGN, align 4
  %109 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %110 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %111 = load i32, i32* @MCLBYTES, align 4
  %112 = load i32, i32* @MCLBYTES, align 4
  %113 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %114 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = call i32 @bus_dma_tag_create(i32 %107, i32 %108, i32 0, i32 %109, i32 %110, i32* null, i32* null, i32 %111, i32 1, i32 %112, i32 0, i32* null, i32* null, i32* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %103
  %120 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %121 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %326

124:                                              ; preds = %103
  %125 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %126 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %130 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = bitcast i32* %131 to i8**
  %133 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %134 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @BUS_DMA_ZERO, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %139 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 7
  %141 = call i32 @bus_dmamem_alloc(i32 %128, i8** %132, i32 %137, i32* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %124
  %145 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %146 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %326

149:                                              ; preds = %124
  %150 = getelementptr inbounds %struct.vr_dmamap_arg, %struct.vr_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %152 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %156 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %160 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @VR_TX_RING_SIZE, align 4
  %164 = load i32, i32* @vr_dmamap_cb, align 4
  %165 = call i32 @bus_dmamap_load(i32 %154, i32 %158, i32 %162, i32 %163, i32 %164, %struct.vr_dmamap_arg* %3, i32 0)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %149
  %169 = getelementptr inbounds %struct.vr_dmamap_arg, %struct.vr_dmamap_arg* %3, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %168, %149
  %173 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %174 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @device_printf(i32 %175, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %326

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.vr_dmamap_arg, %struct.vr_dmamap_arg* %3, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %181 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i64 %179, i64* %182, align 8
  %183 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %184 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %188 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = bitcast i32* %189 to i8**
  %191 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %192 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @BUS_DMA_ZERO, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %197 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 5
  %199 = call i32 @bus_dmamem_alloc(i32 %186, i8** %190, i32 %195, i32* %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %177
  %203 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %204 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @device_printf(i32 %205, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %326

207:                                              ; preds = %177
  %208 = getelementptr inbounds %struct.vr_dmamap_arg, %struct.vr_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %208, align 8
  %209 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %210 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %214 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %218 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @VR_RX_RING_SIZE, align 4
  %222 = load i32, i32* @vr_dmamap_cb, align 4
  %223 = call i32 @bus_dmamap_load(i32 %212, i32 %216, i32 %220, i32 %221, i32 %222, %struct.vr_dmamap_arg* %3, i32 0)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %207
  %227 = getelementptr inbounds %struct.vr_dmamap_arg, %struct.vr_dmamap_arg* %3, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %226, %207
  %231 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %232 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @device_printf(i32 %233, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %326

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.vr_dmamap_arg, %struct.vr_dmamap_arg* %3, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %239 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  store i64 %237, i64* %240, align 8
  store i32 0, i32* %8, align 4
  br label %241

241:                                              ; preds = %272, %235
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @VR_TX_RING_CNT, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %275

245:                                              ; preds = %241
  %246 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %247 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 4
  %249 = load %struct.vr_txdesc*, %struct.vr_txdesc** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.vr_txdesc, %struct.vr_txdesc* %249, i64 %251
  store %struct.vr_txdesc* %252, %struct.vr_txdesc** %4, align 8
  %253 = load %struct.vr_txdesc*, %struct.vr_txdesc** %4, align 8
  %254 = getelementptr inbounds %struct.vr_txdesc, %struct.vr_txdesc* %253, i32 0, i32 1
  store i32* null, i32** %254, align 8
  %255 = load %struct.vr_txdesc*, %struct.vr_txdesc** %4, align 8
  %256 = getelementptr inbounds %struct.vr_txdesc, %struct.vr_txdesc* %255, i32 0, i32 0
  store i32* null, i32** %256, align 8
  %257 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %258 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.vr_txdesc*, %struct.vr_txdesc** %4, align 8
  %262 = getelementptr inbounds %struct.vr_txdesc, %struct.vr_txdesc* %261, i32 0, i32 0
  %263 = call i32 @bus_dmamap_create(i32 %260, i32 0, i32** %262)
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %7, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %245
  %267 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %268 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @device_printf(i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %326

271:                                              ; preds = %245
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %241

275:                                              ; preds = %241
  %276 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %277 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %281 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 2
  %283 = call i32 @bus_dmamap_create(i32 %279, i32 0, i32** %282)
  store i32 %283, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %275
  %286 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %287 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @device_printf(i32 %288, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %326

290:                                              ; preds = %275
  store i32 0, i32* %8, align 4
  br label %291

291:                                              ; preds = %322, %290
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @VR_RX_RING_CNT, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %325

295:                                              ; preds = %291
  %296 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %297 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  %299 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %299, i64 %301
  store %struct.vr_rxdesc* %302, %struct.vr_rxdesc** %5, align 8
  %303 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %5, align 8
  %304 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %303, i32 0, i32 1
  store i32* null, i32** %304, align 8
  %305 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %5, align 8
  %306 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %305, i32 0, i32 0
  store i32* null, i32** %306, align 8
  %307 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %308 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %5, align 8
  %312 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %311, i32 0, i32 0
  %313 = call i32 @bus_dmamap_create(i32 %310, i32 0, i32** %312)
  store i32 %313, i32* %7, align 4
  %314 = load i32, i32* %7, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %295
  %317 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %318 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @device_printf(i32 %319, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %326

321:                                              ; preds = %295
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %8, align 4
  br label %291

325:                                              ; preds = %291
  br label %326

326:                                              ; preds = %325, %316, %285, %266, %230, %202, %172, %144, %119, %98, %65, %44, %23
  %327 = load i32, i32* %7, align 4
  ret i32 %327
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.vr_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
