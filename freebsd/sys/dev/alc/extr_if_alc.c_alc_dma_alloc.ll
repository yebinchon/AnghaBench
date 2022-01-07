; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.alc_rxdesc*, i32*, i32, %struct.alc_txdesc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.alc_rxdesc = type { i32*, i32* }
%struct.alc_txdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.alc_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create parent DMA tag.\0A\00", align 1
@ALC_TX_RING_ALIGN = common dso_local global i32 0, align 4
@ALC_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not create Tx ring DMA tag.\0A\00", align 1
@ALC_RX_RING_ALIGN = common dso_local global i32 0, align 4
@ALC_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"could not create Rx ring DMA tag.\0A\00", align 1
@ALC_RR_RING_ALIGN = common dso_local global i32 0, align 4
@ALC_RR_RING_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"could not create Rx return ring DMA tag.\0A\00", align 1
@ALC_CMB_ALIGN = common dso_local global i32 0, align 4
@ALC_CMB_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"could not create CMB DMA tag.\0A\00", align 1
@ALC_SMB_ALIGN = common dso_local global i32 0, align 4
@ALC_SMB_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"could not create SMB DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Tx ring.\0A\00", align 1
@alc_dmamap_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Tx ring.\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Rx ring.\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Rx ring.\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"could not allocate DMA'able memory for Rx return ring.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"could not allocate DMA'able memory for CMB.\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"could not load DMA'able memory for CMB.\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"could not allocate DMA'able memory for SMB.\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [63 x i8] c"4GB boundary crossed, switching to 32bit DMA addressing mode.\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"could not create parent buffer DMA tag.\0A\00", align 1
@ALC_TSO_MAXSIZE = common dso_local global i32 0, align 4
@ALC_MAXTXSEGS = common dso_local global i32 0, align 4
@ALC_TSO_MAXSEGSIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"could not create Tx DMA tag.\0A\00", align 1
@ALC_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"could not create Rx DMA tag.\0A\00", align 1
@ALC_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"could not create Tx dmamap.\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"could not create spare Rx dmamap.\0A\00", align 1
@ALC_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"could not create Rx dmamap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alc_softc*)* @alc_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_dma_alloc(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.alc_txdesc*, align 8
  %4 = alloca %struct.alc_rxdesc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.alc_dmamap_arg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %9 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %433, %1
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bus_get_dma_tag(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %17 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %19 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 16
  %22 = call i32 @bus_dma_tag_create(i32 %14, i32 1, i32 0, i64 %15, i64 %16, i32* null, i32* null, i32 %17, i32 0, i32 %18, i32 0, i32* null, i32* null, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %10
  %26 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %589

30:                                               ; preds = %10
  %31 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %32 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ALC_TX_RING_ALIGN, align 4
  %36 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %37 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %38 = load i32, i32* @ALC_TX_RING_SZ, align 4
  %39 = load i32, i32* @ALC_TX_RING_SZ, align 4
  %40 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %41 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 15
  %43 = call i32 @bus_dma_tag_create(i32 %34, i32 %35, i32 0, i64 %36, i64 %37, i32* null, i32* null, i32 %38, i32 1, i32 %39, i32 0, i32* null, i32* null, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %30
  %47 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %589

51:                                               ; preds = %30
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 16
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ALC_RX_RING_ALIGN, align 4
  %57 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %58 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %59 = load i32, i32* @ALC_RX_RING_SZ, align 4
  %60 = load i32, i32* @ALC_RX_RING_SZ, align 4
  %61 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %62 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 13
  %64 = call i32 @bus_dma_tag_create(i32 %55, i32 %56, i32 0, i64 %57, i64 %58, i32* null, i32* null, i32 %59, i32 1, i32 %60, i32 0, i32* null, i32* null, i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %69 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %589

72:                                               ; preds = %51
  %73 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %74 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 16
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ALC_RR_RING_ALIGN, align 4
  %78 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %79 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %80 = load i32, i32* @ALC_RR_RING_SZ, align 4
  %81 = load i32, i32* @ALC_RR_RING_SZ, align 4
  %82 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %83 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 11
  %85 = call i32 @bus_dma_tag_create(i32 %76, i32 %77, i32 0, i64 %78, i64 %79, i32* null, i32* null, i32 %80, i32 1, i32 %81, i32 0, i32* null, i32* null, i32* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %72
  %89 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %589

93:                                               ; preds = %72
  %94 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %95 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 16
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ALC_CMB_ALIGN, align 4
  %99 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %100 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %101 = load i32, i32* @ALC_CMB_SZ, align 4
  %102 = load i32, i32* @ALC_CMB_SZ, align 4
  %103 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %104 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 9
  %106 = call i32 @bus_dma_tag_create(i32 %97, i32 %98, i32 0, i64 %99, i64 %100, i32* null, i32* null, i32 %101, i32 1, i32 %102, i32 0, i32* null, i32* null, i32* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %93
  %110 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %111 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %589

114:                                              ; preds = %93
  %115 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 16
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ALC_SMB_ALIGN, align 4
  %120 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %121 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %122 = load i32, i32* @ALC_SMB_SZ, align 4
  %123 = load i32, i32* @ALC_SMB_SZ, align 4
  %124 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %125 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 7
  %127 = call i32 @bus_dma_tag_create(i32 %118, i32 %119, i32 0, i64 %120, i64 %121, i32* null, i32* null, i32 %122, i32 1, i32 %123, i32 0, i32* null, i32* null, i32* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %114
  %131 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %132 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %589

135:                                              ; preds = %114
  %136 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %137 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 15
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %141 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 9
  %143 = bitcast i32* %142 to i8**
  %144 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %145 = load i32, i32* @BUS_DMA_ZERO, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %150 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 14
  %152 = call i32 @bus_dmamem_alloc(i32 %139, i8** %143, i32 %148, i32* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %135
  %156 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %157 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %589

160:                                              ; preds = %135
  %161 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  store i64 0, i64* %161, align 8
  %162 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %163 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 15
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %167 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 14
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %171 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ALC_TX_RING_SZ, align 4
  %175 = load i32, i32* @alc_dmamap_cb, align 4
  %176 = call i32 @bus_dmamap_load(i32 %165, i32 %169, i32 %173, i32 %174, i32 %175, %struct.alc_dmamap_arg* %6, i32 0)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %160
  %180 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179, %160
  %184 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %185 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @device_printf(i32 %186, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %589

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %192 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i64 %190, i64* %193, align 8
  %194 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %195 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %199 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 8
  %201 = bitcast i32* %200 to i8**
  %202 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %203 = load i32, i32* @BUS_DMA_ZERO, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %208 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 12
  %210 = call i32 @bus_dmamem_alloc(i32 %197, i8** %201, i32 %206, i32* %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %188
  %214 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %215 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @device_printf(i32 %216, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %589

218:                                              ; preds = %188
  %219 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  store i64 0, i64* %219, align 8
  %220 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %221 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 13
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %225 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 12
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %229 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @ALC_RX_RING_SZ, align 4
  %233 = load i32, i32* @alc_dmamap_cb, align 4
  %234 = call i32 @bus_dmamap_load(i32 %223, i32 %227, i32 %231, i32 %232, i32 %233, %struct.alc_dmamap_arg* %6, i32 0)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %218
  %238 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %237, %218
  %242 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %243 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @device_printf(i32 %244, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %589

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %250 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  store i64 %248, i64* %251, align 8
  %252 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %253 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 11
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %257 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 7
  %259 = bitcast i32* %258 to i8**
  %260 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %261 = load i32, i32* @BUS_DMA_ZERO, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %266 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 10
  %268 = call i32 @bus_dmamem_alloc(i32 %255, i8** %259, i32 %264, i32* %267)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %246
  %272 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %273 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @device_printf(i32 %274, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %589

276:                                              ; preds = %246
  %277 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  store i64 0, i64* %277, align 8
  %278 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %279 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 11
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %283 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 10
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %287 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @ALC_RR_RING_SZ, align 4
  %291 = load i32, i32* @alc_dmamap_cb, align 4
  %292 = call i32 @bus_dmamap_load(i32 %281, i32 %285, i32 %289, i32 %290, i32 %291, %struct.alc_dmamap_arg* %6, i32 0)
  store i32 %292, i32* %7, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %276
  %296 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %295, %276
  %300 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %301 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @device_printf(i32 %302, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %589

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %308 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 2
  store i64 %306, i64* %309, align 8
  %310 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %311 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 9
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %315 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 6
  %317 = bitcast i32* %316 to i8**
  %318 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %319 = load i32, i32* @BUS_DMA_ZERO, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %322 = or i32 %320, %321
  %323 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %324 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 8
  %326 = call i32 @bus_dmamem_alloc(i32 %313, i8** %317, i32 %322, i32* %325)
  store i32 %326, i32* %7, align 4
  %327 = load i32, i32* %7, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %304
  %330 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %331 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @device_printf(i32 %332, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %589

334:                                              ; preds = %304
  %335 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  store i64 0, i64* %335, align 8
  %336 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %337 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 9
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %341 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 8
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %345 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @ALC_CMB_SZ, align 4
  %349 = load i32, i32* @alc_dmamap_cb, align 4
  %350 = call i32 @bus_dmamap_load(i32 %339, i32 %343, i32 %347, i32 %348, i32 %349, %struct.alc_dmamap_arg* %6, i32 0)
  store i32 %350, i32* %7, align 4
  %351 = load i32, i32* %7, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %334
  %354 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %353, %334
  %358 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %359 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @device_printf(i32 %360, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %589

362:                                              ; preds = %353
  %363 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %366 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 3
  store i64 %364, i64* %367, align 8
  %368 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %369 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 7
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %373 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 5
  %375 = bitcast i32* %374 to i8**
  %376 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %377 = load i32, i32* @BUS_DMA_ZERO, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %380 = or i32 %378, %379
  %381 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %382 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 6
  %384 = call i32 @bus_dmamem_alloc(i32 %371, i8** %375, i32 %380, i32* %383)
  store i32 %384, i32* %7, align 4
  %385 = load i32, i32* %7, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %362
  %388 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %389 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @device_printf(i32 %390, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %589

392:                                              ; preds = %362
  %393 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  store i64 0, i64* %393, align 8
  %394 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %395 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %399 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %403 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @ALC_SMB_SZ, align 4
  %407 = load i32, i32* @alc_dmamap_cb, align 4
  %408 = call i32 @bus_dmamap_load(i32 %397, i32 %401, i32 %405, i32 %406, i32 %407, %struct.alc_dmamap_arg* %6, i32 0)
  store i32 %408, i32* %7, align 4
  %409 = load i32, i32* %7, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %392
  %412 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %411, %392
  %416 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %417 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @device_printf(i32 %418, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %589

420:                                              ; preds = %411
  %421 = getelementptr inbounds %struct.alc_dmamap_arg, %struct.alc_dmamap_arg* %6, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %424 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 4
  store i64 %422, i64* %425, align 8
  %426 = load i64, i64* %5, align 8
  %427 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %429, label %441

429:                                              ; preds = %420
  %430 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %431 = call i32 @alc_check_boundary(%struct.alc_softc* %430)
  store i32 %431, i32* %7, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %429
  %434 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %435 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @device_printf(i32 %436, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0))
  %438 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %439 = call i32 @alc_dma_free(%struct.alc_softc* %438)
  %440 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  store i64 %440, i64* %5, align 8
  br label %10

441:                                              ; preds = %429, %420
  %442 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %443 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @bus_get_dma_tag(i32 %444)
  %446 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %447 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %448 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %449 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %450 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %451 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 5
  %453 = call i32 @bus_dma_tag_create(i32 %445, i32 1, i32 0, i64 %446, i64 %447, i32* null, i32* null, i32 %448, i32 0, i32 %449, i32 0, i32* null, i32* null, i32* %452)
  store i32 %453, i32* %7, align 4
  %454 = load i32, i32* %7, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %441
  %457 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %458 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @device_printf(i32 %459, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  br label %589

461:                                              ; preds = %441
  %462 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %463 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 8
  %466 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %467 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %468 = load i32, i32* @ALC_TSO_MAXSIZE, align 4
  %469 = load i32, i32* @ALC_MAXTXSEGS, align 4
  %470 = load i32, i32* @ALC_TSO_MAXSEGSIZE, align 4
  %471 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %472 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 3
  %474 = call i32 @bus_dma_tag_create(i32 %465, i32 1, i32 0, i64 %466, i64 %467, i32* null, i32* null, i32 %468, i32 %469, i32 %470, i32 0, i32* null, i32* null, i32* %473)
  store i32 %474, i32* %7, align 4
  %475 = load i32, i32* %7, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %461
  %478 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %479 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @device_printf(i32 %480, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  br label %589

482:                                              ; preds = %461
  %483 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %484 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @ALC_RX_BUF_ALIGN, align 4
  %488 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %489 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %490 = load i32, i32* @MCLBYTES, align 4
  %491 = load i32, i32* @MCLBYTES, align 4
  %492 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %493 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 0
  %495 = call i32 @bus_dma_tag_create(i32 %486, i32 %487, i32 0, i64 %488, i64 %489, i32* null, i32* null, i32 %490, i32 1, i32 %491, i32 0, i32* null, i32* null, i32* %494)
  store i32 %495, i32* %7, align 4
  %496 = load i32, i32* %7, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %482
  %499 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %500 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = call i32 @device_printf(i32 %501, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  br label %589

503:                                              ; preds = %482
  store i32 0, i32* %8, align 4
  br label %504

504:                                              ; preds = %535, %503
  %505 = load i32, i32* %8, align 4
  %506 = load i32, i32* @ALC_TX_RING_CNT, align 4
  %507 = icmp slt i32 %505, %506
  br i1 %507, label %508, label %538

508:                                              ; preds = %504
  %509 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %510 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 4
  %512 = load %struct.alc_txdesc*, %struct.alc_txdesc** %511, align 8
  %513 = load i32, i32* %8, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %512, i64 %514
  store %struct.alc_txdesc* %515, %struct.alc_txdesc** %3, align 8
  %516 = load %struct.alc_txdesc*, %struct.alc_txdesc** %3, align 8
  %517 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %516, i32 0, i32 1
  store i32* null, i32** %517, align 8
  %518 = load %struct.alc_txdesc*, %struct.alc_txdesc** %3, align 8
  %519 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %518, i32 0, i32 0
  store i32* null, i32** %519, align 8
  %520 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %521 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %521, i32 0, i32 3
  %523 = load i32, i32* %522, align 8
  %524 = load %struct.alc_txdesc*, %struct.alc_txdesc** %3, align 8
  %525 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %524, i32 0, i32 0
  %526 = call i32 @bus_dmamap_create(i32 %523, i32 0, i32** %525)
  store i32 %526, i32* %7, align 4
  %527 = load i32, i32* %7, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %508
  %530 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %531 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = call i32 @device_printf(i32 %532, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  br label %589

534:                                              ; preds = %508
  br label %535

535:                                              ; preds = %534
  %536 = load i32, i32* %8, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %8, align 4
  br label %504

538:                                              ; preds = %504
  %539 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %540 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %544 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %544, i32 0, i32 2
  %546 = call i32 @bus_dmamap_create(i32 %542, i32 0, i32** %545)
  store i32 %546, i32* %7, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %553

548:                                              ; preds = %538
  %549 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %550 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = call i32 @device_printf(i32 %551, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  br label %589

553:                                              ; preds = %538
  store i32 0, i32* %8, align 4
  br label %554

554:                                              ; preds = %585, %553
  %555 = load i32, i32* %8, align 4
  %556 = load i32, i32* @ALC_RX_RING_CNT, align 4
  %557 = icmp slt i32 %555, %556
  br i1 %557, label %558, label %588

558:                                              ; preds = %554
  %559 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %560 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %559, i32 0, i32 1
  %561 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %560, i32 0, i32 1
  %562 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %561, align 8
  %563 = load i32, i32* %8, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %562, i64 %564
  store %struct.alc_rxdesc* %565, %struct.alc_rxdesc** %4, align 8
  %566 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %4, align 8
  %567 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %566, i32 0, i32 1
  store i32* null, i32** %567, align 8
  %568 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %4, align 8
  %569 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %568, i32 0, i32 0
  store i32* null, i32** %569, align 8
  %570 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %571 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %4, align 8
  %575 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %574, i32 0, i32 0
  %576 = call i32 @bus_dmamap_create(i32 %573, i32 0, i32** %575)
  store i32 %576, i32* %7, align 4
  %577 = load i32, i32* %7, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %584

579:                                              ; preds = %558
  %580 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %581 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = call i32 @device_printf(i32 %582, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  br label %589

584:                                              ; preds = %558
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %8, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %8, align 4
  br label %554

588:                                              ; preds = %554
  br label %589

589:                                              ; preds = %588, %579, %548, %529, %498, %477, %456, %415, %387, %357, %329, %299, %271, %241, %213, %183, %155, %130, %109, %88, %67, %46, %25
  %590 = load i32, i32* %7, align 4
  ret i32 %590
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i64, i64, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.alc_dmamap_arg*, i32) #1

declare dso_local i32 @alc_check_boundary(%struct.alc_softc*) #1

declare dso_local i32 @alc_dma_free(%struct.alc_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
