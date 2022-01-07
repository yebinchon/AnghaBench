; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.ste_chain_onefrag*, i32*, i32, %struct.ste_chain*, i32, i32, i32, i32, i32 }
%struct.ste_chain_onefrag = type { i32*, i32*, i32*, i32* }
%struct.ste_chain = type { i32*, i64, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.ste_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not create parent DMA tag.\0A\00", align 1
@STE_DESC_ALIGN = common dso_local global i32 0, align 4
@STE_TX_LIST_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not create Tx list DMA tag.\0A\00", align 1
@STE_RX_LIST_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"could not create Rx list DMA tag.\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@STE_MAXFRAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not create Tx DMA tag.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not create Rx DMA tag.\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Tx list.\0A\00", align 1
@ste_dmamap_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Tx list.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"could not allocate DMA'able memory for Rx list.\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"could not load DMA'able memory for Rx list.\0A\00", align 1
@STE_TX_LIST_CNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"could not create Tx dmamap.\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"could not create spare Rx dmamap.\0A\00", align 1
@STE_RX_LIST_CNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"could not create Rx dmamap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ste_softc*)* @ste_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste_dma_alloc(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ste_chain*, align 8
  %4 = alloca %struct.ste_chain_onefrag*, align 8
  %5 = alloca %struct.ste_dmamap_arg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %8 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 9
  %19 = call i32 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 0, i32 %15, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %324

27:                                               ; preds = %1
  %28 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @STE_DESC_ALIGN, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @STE_TX_LIST_SZ, align 4
  %36 = load i32, i32* @STE_TX_LIST_SZ, align 4
  %37 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 8
  %40 = call i32 @bus_dma_tag_create(i32 %31, i32 %32, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %35, i32 1, i32 %36, i32 0, i32* null, i32* null, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %324

48:                                               ; preds = %27
  %49 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @STE_DESC_ALIGN, align 4
  %54 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @STE_RX_LIST_SZ, align 4
  %57 = load i32, i32* @STE_RX_LIST_SZ, align 4
  %58 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = call i32 @bus_dma_tag_create(i32 %52, i32 %53, i32 0, i32 %54, i32 %55, i32* null, i32* null, i32 %56, i32 1, i32 %57, i32 0, i32* null, i32* null, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %324

69:                                               ; preds = %48
  %70 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i32, i32* @MCLBYTES, align 4
  %77 = load i32, i32* @STE_MAXFRAGS, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* @STE_MAXFRAGS, align 4
  %80 = load i32, i32* @MCLBYTES, align 4
  %81 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = call i32 @bus_dma_tag_create(i32 %73, i32 1, i32 0, i32 %74, i32 %75, i32* null, i32* null, i32 %78, i32 %79, i32 %80, i32 0, i32* null, i32* null, i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %69
  %88 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %89 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %324

92:                                               ; preds = %69
  %93 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %98 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %99 = load i32, i32* @MCLBYTES, align 4
  %100 = load i32, i32* @MCLBYTES, align 4
  %101 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %102 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @bus_dma_tag_create(i32 %96, i32 1, i32 0, i32 %97, i32 %98, i32* null, i32* null, i32 %99, i32 1, i32 %100, i32 0, i32* null, i32* null, i32* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %92
  %108 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %109 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %324

112:                                              ; preds = %92
  %113 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %114 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %118 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = bitcast i32* %119 to i8**
  %121 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %122 = load i32, i32* @BUS_DMA_ZERO, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %127 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 7
  %129 = call i32 @bus_dmamem_alloc(i32 %116, i8** %120, i32 %125, i32* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %112
  %133 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %324

137:                                              ; preds = %112
  %138 = getelementptr inbounds %struct.ste_dmamap_arg, %struct.ste_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %140 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %144 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %148 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @STE_TX_LIST_SZ, align 4
  %152 = load i32, i32* @ste_dmamap_cb, align 4
  %153 = call i32 @bus_dmamap_load(i32 %142, i32 %146, i32 %150, i32 %151, i32 %152, %struct.ste_dmamap_arg* %5, i32 0)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %137
  %157 = getelementptr inbounds %struct.ste_dmamap_arg, %struct.ste_dmamap_arg* %5, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156, %137
  %161 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %162 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %324

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.ste_dmamap_arg, %struct.ste_dmamap_arg* %5, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %169 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  %171 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %172 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %176 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  %178 = bitcast i32* %177 to i8**
  %179 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %180 = load i32, i32* @BUS_DMA_ZERO, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %183 = or i32 %181, %182
  %184 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %185 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 5
  %187 = call i32 @bus_dmamem_alloc(i32 %174, i8** %178, i32 %183, i32* %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %165
  %191 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %192 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @device_printf(i32 %193, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %324

195:                                              ; preds = %165
  %196 = getelementptr inbounds %struct.ste_dmamap_arg, %struct.ste_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %198 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %202 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %206 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @STE_RX_LIST_SZ, align 4
  %210 = load i32, i32* @ste_dmamap_cb, align 4
  %211 = call i32 @bus_dmamap_load(i32 %200, i32 %204, i32 %208, i32 %209, i32 %210, %struct.ste_dmamap_arg* %5, i32 0)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %195
  %215 = getelementptr inbounds %struct.ste_dmamap_arg, %struct.ste_dmamap_arg* %5, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %214, %195
  %219 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %220 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @device_printf(i32 %221, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %324

223:                                              ; preds = %214
  %224 = getelementptr inbounds %struct.ste_dmamap_arg, %struct.ste_dmamap_arg* %5, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %227 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  store i64 %225, i64* %228, align 8
  store i32 0, i32* %7, align 4
  br label %229

229:                                              ; preds = %266, %223
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* @STE_TX_LIST_CNT, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %269

233:                                              ; preds = %229
  %234 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %235 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 4
  %237 = load %struct.ste_chain*, %struct.ste_chain** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %237, i64 %239
  store %struct.ste_chain* %240, %struct.ste_chain** %3, align 8
  %241 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %242 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %241, i32 0, i32 4
  store i32* null, i32** %242, align 8
  %243 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %244 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %243, i32 0, i32 3
  store i32* null, i32** %244, align 8
  %245 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %246 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %245, i32 0, i32 2
  store i32* null, i32** %246, align 8
  %247 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %248 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %247, i32 0, i32 1
  store i64 0, i64* %248, align 8
  %249 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %250 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %249, i32 0, i32 0
  store i32* null, i32** %250, align 8
  %251 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %252 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.ste_chain*, %struct.ste_chain** %3, align 8
  %256 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %255, i32 0, i32 0
  %257 = call i32 @bus_dmamap_create(i32 %254, i32 0, i32** %256)
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %6, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %233
  %261 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %262 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @device_printf(i32 %263, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %324

265:                                              ; preds = %233
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %229

269:                                              ; preds = %229
  %270 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %271 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %275 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 2
  %277 = call i32 @bus_dmamap_create(i32 %273, i32 0, i32** %276)
  store i32 %277, i32* %6, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %269
  %280 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %281 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @device_printf(i32 %282, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %324

284:                                              ; preds = %269
  store i32 0, i32* %7, align 4
  br label %285

285:                                              ; preds = %320, %284
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @STE_RX_LIST_CNT, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %323

289:                                              ; preds = %285
  %290 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %291 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %293, i64 %295
  store %struct.ste_chain_onefrag* %296, %struct.ste_chain_onefrag** %4, align 8
  %297 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %298 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %297, i32 0, i32 3
  store i32* null, i32** %298, align 8
  %299 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %300 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %299, i32 0, i32 2
  store i32* null, i32** %300, align 8
  %301 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %302 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %301, i32 0, i32 1
  store i32* null, i32** %302, align 8
  %303 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %304 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %303, i32 0, i32 0
  store i32* null, i32** %304, align 8
  %305 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %306 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %310 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %309, i32 0, i32 0
  %311 = call i32 @bus_dmamap_create(i32 %308, i32 0, i32** %310)
  store i32 %311, i32* %6, align 4
  %312 = load i32, i32* %6, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %289
  %315 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %316 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @device_printf(i32 %317, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %324

319:                                              ; preds = %289
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %7, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %7, align 4
  br label %285

323:                                              ; preds = %285
  br label %324

324:                                              ; preds = %323, %314, %279, %260, %218, %190, %160, %132, %107, %87, %64, %43, %22
  %325 = load i32, i32* %6, align 4
  ret i32 %325
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.ste_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
