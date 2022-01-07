; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, %struct.sge_list_data, %struct.sge_chain_data }
%struct.sge_list_data = type { i32, i32, i32, i32 }
%struct.sge_chain_data = type { i32, %struct.sge_rxdesc*, i32*, i32, %struct.sge_txdesc*, i32, i32, i32, i32, i32 }
%struct.sge_rxdesc = type { i32*, i32* }
%struct.sge_txdesc = type { i32*, i64, i32* }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create parent DMA tag.\0A\00", align 1
@SGE_DESC_ALIGN = common dso_local global i32 0, align 4
@SGE_RX_RING_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not create Rx ring DMA tag.\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Rx ring.\0A\00", align 1
@sge_dma_map_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Rx ring.\0A\00", align 1
@SGE_TX_RING_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Tx ring.\0A\00", align 1
@SGE_TSO_MAXSIZE = common dso_local global i32 0, align 4
@SGE_MAXTXSEGS = common dso_local global i32 0, align 4
@SGE_TSO_MAXSEGSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"could not create Tx mbuf DMA tag.\0A\00", align 1
@SGE_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"could not create Rx mbuf DMA tag.\0A\00", align 1
@SGE_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"could not create Tx DMA map.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"could not create spare Rx DMA map.\0A\00", align 1
@SGE_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"could not create Rx DMA map.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_softc*)* @sge_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_dma_alloc(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.sge_chain_data*, align 8
  %4 = alloca %struct.sge_list_data*, align 8
  %5 = alloca %struct.sge_rxdesc*, align 8
  %6 = alloca %struct.sge_txdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %9 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %9, i32 0, i32 2
  store %struct.sge_chain_data* %10, %struct.sge_chain_data** %3, align 8
  %11 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %11, i32 0, i32 1
  store %struct.sge_list_data* %12, %struct.sge_list_data** %4, align 8
  %13 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_get_dma_tag(i32 %15)
  %17 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %20 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %21 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %22 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %21, i32 0, i32 5
  %23 = call i32 @bus_dma_tag_create(i32 %16, i32 1, i32 0, i32 %17, i32 %18, i32* null, i32* null, i32 %19, i32 1, i32 %20, i32 0, i32* null, i32* null, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %28 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %280

31:                                               ; preds = %1
  %32 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %33 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SGE_DESC_ALIGN, align 4
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %38 = load i32, i32* @SGE_RX_RING_SZ, align 4
  %39 = load i32, i32* @SGE_RX_RING_SZ, align 4
  %40 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %41 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %40, i32 0, i32 9
  %42 = call i32 @bus_dma_tag_create(i32 %34, i32 %35, i32 0, i32 %36, i32 %37, i32* null, i32* null, i32 %38, i32 1, i32 %39, i32 0, i32* null, i32* null, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %47 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %280

50:                                               ; preds = %31
  %51 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %52 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %55 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %54, i32 0, i32 3
  %56 = bitcast i32* %55 to i8**
  %57 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %58 = load i32, i32* @BUS_DMA_ZERO, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %63 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %62, i32 0, i32 8
  %64 = call i32 @bus_dmamem_alloc(i32 %53, i8** %56, i32 %61, i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %69 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %280

72:                                               ; preds = %50
  %73 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %74 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %77 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %80 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SGE_RX_RING_SZ, align 4
  %83 = load i32, i32* @sge_dma_map_addr, align 4
  %84 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %85 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %84, i32 0, i32 2
  %86 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %87 = call i32 @bus_dmamap_load(i32 %75, i32 %78, i32 %81, i32 %82, i32 %83, i32* %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %92 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %72
  %96 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %97 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SGE_DESC_ALIGN, align 4
  %100 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %101 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %102 = load i32, i32* @SGE_TX_RING_SZ, align 4
  %103 = load i32, i32* @SGE_TX_RING_SZ, align 4
  %104 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %105 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %104, i32 0, i32 7
  %106 = call i32 @bus_dma_tag_create(i32 %98, i32 %99, i32 0, i32 %100, i32 %101, i32* null, i32* null, i32 %102, i32 1, i32 %103, i32 0, i32* null, i32* null, i32* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %111 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %280

114:                                              ; preds = %95
  %115 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %116 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %119 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %118, i32 0, i32 1
  %120 = bitcast i32* %119 to i8**
  %121 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %122 = load i32, i32* @BUS_DMA_ZERO, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %127 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %126, i32 0, i32 6
  %128 = call i32 @bus_dmamem_alloc(i32 %117, i8** %120, i32 %125, i32* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %114
  %132 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %133 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @device_printf(i32 %134, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %280

136:                                              ; preds = %114
  %137 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %138 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %141 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %144 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SGE_TX_RING_SZ, align 4
  %147 = load i32, i32* @sge_dma_map_addr, align 4
  %148 = load %struct.sge_list_data*, %struct.sge_list_data** %4, align 8
  %149 = getelementptr inbounds %struct.sge_list_data, %struct.sge_list_data* %148, i32 0, i32 0
  %150 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %151 = call i32 @bus_dmamap_load(i32 %139, i32 %142, i32 %145, i32 %146, i32 %147, i32* %149, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %136
  %155 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %156 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %280

159:                                              ; preds = %136
  %160 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %161 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %164 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %165 = load i32, i32* @SGE_TSO_MAXSIZE, align 4
  %166 = load i32, i32* @SGE_MAXTXSEGS, align 4
  %167 = load i32, i32* @SGE_TSO_MAXSEGSIZE, align 4
  %168 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %169 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %168, i32 0, i32 3
  %170 = call i32 @bus_dma_tag_create(i32 %162, i32 1, i32 0, i32 %163, i32 %164, i32* null, i32* null, i32 %165, i32 %166, i32 %167, i32 0, i32* null, i32* null, i32* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %159
  %174 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %175 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %280

178:                                              ; preds = %159
  %179 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %180 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SGE_RX_BUF_ALIGN, align 4
  %183 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %184 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %185 = load i32, i32* @MCLBYTES, align 4
  %186 = load i32, i32* @MCLBYTES, align 4
  %187 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %188 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %187, i32 0, i32 0
  %189 = call i32 @bus_dma_tag_create(i32 %181, i32 %182, i32 0, i32 %183, i32 %184, i32* null, i32* null, i32 %185, i32 1, i32 %186, i32 0, i32* null, i32* null, i32* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %178
  %193 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %194 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @device_printf(i32 %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %280

197:                                              ; preds = %178
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %229, %197
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @SGE_TX_RING_CNT, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %232

202:                                              ; preds = %198
  %203 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %204 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %203, i32 0, i32 4
  %205 = load %struct.sge_txdesc*, %struct.sge_txdesc** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %205, i64 %207
  store %struct.sge_txdesc* %208, %struct.sge_txdesc** %6, align 8
  %209 = load %struct.sge_txdesc*, %struct.sge_txdesc** %6, align 8
  %210 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %209, i32 0, i32 2
  store i32* null, i32** %210, align 8
  %211 = load %struct.sge_txdesc*, %struct.sge_txdesc** %6, align 8
  %212 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %211, i32 0, i32 0
  store i32* null, i32** %212, align 8
  %213 = load %struct.sge_txdesc*, %struct.sge_txdesc** %6, align 8
  %214 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %213, i32 0, i32 1
  store i64 0, i64* %214, align 8
  %215 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %216 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.sge_txdesc*, %struct.sge_txdesc** %6, align 8
  %219 = getelementptr inbounds %struct.sge_txdesc, %struct.sge_txdesc* %218, i32 0, i32 0
  %220 = call i32 @bus_dmamap_create(i32 %217, i32 0, i32** %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %202
  %224 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %225 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @device_printf(i32 %226, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %280

228:                                              ; preds = %202
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %198

232:                                              ; preds = %198
  %233 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %234 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %237 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %236, i32 0, i32 2
  %238 = call i32 @bus_dmamap_create(i32 %235, i32 0, i32** %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %232
  %242 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %243 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @device_printf(i32 %244, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %280

246:                                              ; preds = %232
  store i32 0, i32* %8, align 4
  br label %247

247:                                              ; preds = %276, %246
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @SGE_RX_RING_CNT, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %279

251:                                              ; preds = %247
  %252 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %253 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %252, i32 0, i32 1
  %254 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %254, i64 %256
  store %struct.sge_rxdesc* %257, %struct.sge_rxdesc** %5, align 8
  %258 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %5, align 8
  %259 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %258, i32 0, i32 1
  store i32* null, i32** %259, align 8
  %260 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %5, align 8
  %261 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %260, i32 0, i32 0
  store i32* null, i32** %261, align 8
  %262 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %263 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %5, align 8
  %266 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %265, i32 0, i32 0
  %267 = call i32 @bus_dmamap_create(i32 %264, i32 0, i32** %266)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %251
  %271 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %272 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @device_printf(i32 %273, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %280

275:                                              ; preds = %251
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %247

279:                                              ; preds = %247
  br label %280

280:                                              ; preds = %279, %270, %241, %223, %192, %173, %154, %131, %109, %67, %45, %26
  %281 = load i32, i32* %7, align 4
  ret i32 %281
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
