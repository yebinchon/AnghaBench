; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, %struct.tw_osli_req_context*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.tw_osli_req_context = type { i32*, i32, i32, %struct.twa_softc* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_MAX_32BIT_SG_ELEMENTS = common dso_local global i32 0, align 4
@TW_OSLI_MAX_NUM_REQUESTS = common dso_local global i32 0, align 4
@TW_OSLI_MAX_NUM_AENS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Can't get Common Layer's memory requirements\00", align 1
@TW_OSLI_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't allocate non-dma memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TW_OSLI_DMA_BOUNDARY = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@TW_CL_MAX_IO_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Can't allocate parent DMA tag\00", align 1
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"Can't allocate DMA tag for Common Layer's DMA'able memory\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Can't allocate DMA'able memory for theCommon Layer\00", align 1
@twa_map_load_callback = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@twa_busdma_lock = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"Can't allocate DMA tag for data buffers\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Can't allocate DMA tag for ioctl data buffers\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Can't create ioctl map\00", align 1
@TW_OSLI_FREE_Q = common dso_local global i32 0, align 4
@TW_OSLI_BUSY_Q = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to allocate request packets\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"request # = %d, error = %d\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Can't create dma map\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"tw_ioctl_wake_timeout_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@TW_CL_64BIT_ADDRESSES = common dso_local global i32 0, align 4
@TW_CL_64BIT_SG_LENGTH = common dso_local global i32 0, align 4
@TW_CL_MAX_64BIT_SG_ELEMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twa_softc*)* @tw_osli_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_osli_alloc_mem(%struct.twa_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twa_softc*, align 8
  %4 = alloca %struct.tw_osli_req_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.twa_softc* %0, %struct.twa_softc** %3, align 8
  %10 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %11 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %13 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %13, align 8
  %15 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %16 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %15, i32 0, i32 15
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %16, align 8
  %18 = load i32, i32* @TW_CL_MAX_32BIT_SG_ELEMENTS, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %20 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %19, i32 0, i32 16
  %21 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %22 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %25 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TW_OSLI_MAX_NUM_REQUESTS, align 4
  %28 = load i32, i32* @TW_OSLI_MAX_NUM_AENS, align 4
  %29 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %30 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %29, i32 0, i32 5
  %31 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %32 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %31, i32 0, i32 13
  %33 = call i32 @tw_cl_get_mem_requirements(i32* %20, i32 %23, i32 %26, i32 %27, i32 %28, i32* %30, i32* %32, i32* %6, i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %37 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %38 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 8200, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %299

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call i32* @malloc(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %48 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %47, i32 0, i32 12
  store i32* %46, i32** %48, align 8
  %49 = icmp eq i32* %46, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %52 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %53 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 8201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %299

57:                                               ; preds = %42
  %58 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %59 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_get_dma_tag(i32 %60)
  %62 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %63 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TW_OSLI_DMA_BOUNDARY, align 4
  %66 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %67 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %68 = load i32, i32* @TW_CL_MAX_IO_SIZE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @TW_CL_MAX_IO_SIZE, align 4
  %71 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %72 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %71, i32 0, i32 6
  %73 = call i64 @bus_dma_tag_create(i32 %61, i32 %64, i32 %65, i32 %66, i32 %67, i32* null, i32* null, i32 %68, i32 %69, i32 %70, i32 0, i32* null, i32* null, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %57
  %76 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %77 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %78 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 8202, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %2, align 4
  br label %299

82:                                               ; preds = %57
  %83 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %84 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %87 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %90 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %93 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %94 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %93, i32 0, i32 10
  %95 = call i64 @bus_dma_tag_create(i32 %85, i32 %88, i32 0, i32 %89, i32 %90, i32* null, i32* null, i32 %91, i32 1, i32 %92, i32 0, i32* null, i32* null, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %82
  %98 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %99 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %100 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 8203, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @ENOMEM, align 4
  store i32 %103, i32* %2, align 4
  br label %299

104:                                              ; preds = %82
  %105 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %106 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %109 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %108, i32 0, i32 8
  %110 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %111 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %112 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %111, i32 0, i32 9
  %113 = call i64 @bus_dmamem_alloc(i32 %107, i32* %109, i32 %110, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %104
  %116 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %117 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %120 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %119, i32 0, i32 8
  %121 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %122 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %123 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %122, i32 0, i32 9
  %124 = call i64 @bus_dmamem_alloc(i32 %118, i32* %120, i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %128 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %129 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129, i32 8204, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENOMEM, align 4
  store i32 %132, i32* %2, align 4
  br label %299

133:                                              ; preds = %115
  br label %134

134:                                              ; preds = %133, %104
  %135 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %136 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %139 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %142 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @twa_map_load_callback, align 4
  %146 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %147 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %146, i32 0, i32 7
  %148 = call i32 @bus_dmamap_load(i32 %137, i32 %140, i32 %143, i32 %144, i32 %145, i32* %147, i32 0)
  %149 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %150 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %153 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %156 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %157 = load i32, i32* @TW_CL_MAX_IO_SIZE, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @TW_CL_MAX_IO_SIZE, align 4
  %160 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %161 = load i32*, i32** @twa_busdma_lock, align 8
  %162 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %163 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %166 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %165, i32 0, i32 0
  %167 = call i64 @bus_dma_tag_create(i32 %151, i32 %154, i32 0, i32 %155, i32 %156, i32* null, i32* null, i32 %157, i32 %158, i32 %159, i32 %160, i32* %161, i32* %164, i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %134
  %170 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %171 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %172 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %172, i32 8207, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @ENOMEM, align 4
  store i32 %175, i32* %2, align 4
  br label %299

176:                                              ; preds = %134
  %177 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %178 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %181 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %184 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %185 = load i32, i32* @TW_CL_MAX_IO_SIZE, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @TW_CL_MAX_IO_SIZE, align 4
  %188 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %189 = load i32*, i32** @twa_busdma_lock, align 8
  %190 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %191 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %194 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %193, i32 0, i32 3
  %195 = call i64 @bus_dma_tag_create(i32 %179, i32 %182, i32 0, i32 %183, i32 %184, i32* null, i32* null, i32 %185, i32 %186, i32 %187, i32 %188, i32* %189, i32* %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %176
  %198 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %199 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %200 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %199, i32 %200, i32 8208, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* @ENOMEM, align 4
  store i32 %203, i32* %2, align 4
  br label %299

204:                                              ; preds = %176
  %205 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %206 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %209 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %208, i32 0, i32 2
  %210 = call i64 @bus_dmamap_create(i32 %207, i32 0, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %204
  %213 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %214 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %215 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %214, i32 %215, i32 8209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @ENOMEM, align 4
  store i32 %218, i32* %2, align 4
  br label %299

219:                                              ; preds = %204
  %220 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %221 = load i32, i32* @TW_OSLI_FREE_Q, align 4
  %222 = call i32 @tw_osli_req_q_init(%struct.twa_softc* %220, i32 %221)
  %223 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %224 = load i32, i32* @TW_OSLI_BUSY_Q, align 4
  %225 = call i32 @tw_osli_req_q_init(%struct.twa_softc* %223, i32 %224)
  %226 = load i32, i32* @TW_OSLI_MAX_NUM_REQUESTS, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 24, %227
  %229 = trunc i64 %228 to i32
  %230 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %231 = load i32, i32* @M_WAITOK, align 4
  %232 = call i32* @malloc(i32 %229, i32 %230, i32 %231)
  %233 = bitcast i32* %232 to %struct.tw_osli_req_context*
  %234 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %235 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %234, i32 0, i32 1
  store %struct.tw_osli_req_context* %233, %struct.tw_osli_req_context** %235, align 8
  %236 = icmp eq %struct.tw_osli_req_context* %233, null
  br i1 %236, label %237, label %244

237:                                              ; preds = %219
  %238 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %239 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %240 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %238, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %239, i32 %240, i32 8210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* @ENOMEM, align 4
  store i32 %243, i32* %2, align 4
  br label %299

244:                                              ; preds = %219
  %245 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %246 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %245, i32 0, i32 1
  %247 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %246, align 8
  %248 = load i32, i32* @TW_OSLI_MAX_NUM_REQUESTS, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 24, %249
  %251 = trunc i64 %250 to i32
  %252 = call i32 @bzero(%struct.tw_osli_req_context* %247, i32 %251)
  store i32 0, i32* %9, align 4
  br label %253

253:                                              ; preds = %295, %244
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @TW_OSLI_MAX_NUM_REQUESTS, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %298

257:                                              ; preds = %253
  %258 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %259 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %258, i32 0, i32 1
  %260 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %260, i64 %262
  store %struct.tw_osli_req_context* %263, %struct.tw_osli_req_context** %4, align 8
  %264 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %265 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %266 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %265, i32 0, i32 3
  store %struct.twa_softc* %264, %struct.twa_softc** %266, align 8
  %267 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %268 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %271 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %270, i32 0, i32 2
  %272 = call i64 @bus_dmamap_create(i32 %269, i32 0, i32* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %257
  %275 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %276 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %277 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* @ENOMEM, align 4
  %280 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) @tw_osli_printf(%struct.twa_softc* %275, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %276, i32 %277, i32 8211, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %278, i32 %279)
  %281 = load i32, i32* @ENOMEM, align 4
  store i32 %281, i32* %2, align 4
  br label %299

282:                                              ; preds = %257
  %283 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %284 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %283, i32 0, i32 1
  %285 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %286 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %285, i32 0, i32 0
  store i32* %284, i32** %286, align 8
  %287 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %288 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* @MTX_DEF, align 4
  %291 = call i32 @mtx_init(i32* %289, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 %290)
  %292 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %293 = load i32, i32* @TW_OSLI_FREE_Q, align 4
  %294 = call i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context* %292, i32 %293)
  br label %295

295:                                              ; preds = %282
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %253

298:                                              ; preds = %253
  store i32 0, i32* %2, align 4
  br label %299

299:                                              ; preds = %298, %274, %237, %212, %197, %169, %126, %97, %75, %50, %35
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32 @tw_cl_get_mem_requirements(i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @tw_osli_req_q_init(%struct.twa_softc*, i32) #1

declare dso_local i32 @bzero(%struct.tw_osli_req_context*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
