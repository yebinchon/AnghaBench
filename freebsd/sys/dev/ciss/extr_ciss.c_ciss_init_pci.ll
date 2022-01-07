; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_pci.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ciss_softc = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, %struct.ciss_perf_config*, %struct.ciss_config_table*, i32, i32*, i32*, i32, i32 }
%struct.ciss_perf_config = type { i32 }
%struct.ciss_config_table = type { i32, i32, i32, i32, i32, i32, i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unknown adapter type\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ciss_vendor_data = common dso_local global %struct.TYPE_2__* null, align 8
@CISS_BOARD_SA5 = common dso_local global i32 0, align 4
@CISS_TL_SIMPLE_INTR_OPQ_SA5 = common dso_local global i32 0, align 4
@CISS_BOARD_SA5B = common dso_local global i32 0, align 4
@CISS_TL_SIMPLE_INTR_OPQ_SA5B = common dso_local global i32 0, align 4
@CISS_TL_SIMPLE_BAR_REGS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't allocate register window\0A\00", align 1
@CISS_TL_SIMPLE_CFG_BAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"can't allocate config window\0A\00", align 1
@CISS_TL_SIMPLE_CFG_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"config table outside window\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"config struct at %p\00", align 1
@CISS_MAX_REQUESTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"CISS\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"config signature mismatch (got '%c%c%c%c')\0A\00", align 1
@CISS_TRANSPORT_METHOD_SIMPLE = common dso_local global i32 0, align 4
@CISS_TRANSPORT_METHOD_PERF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"No supported transport layers: 0x%x\0A\00", align 1
@ciss_force_transport = common dso_local global i32 0, align 4
@CISS_BOARD_SIMPLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"No supported transport methods: 0x%x\0A\00", align 1
@CISS_INTERRUPT_COALESCE_DELAY = common dso_local global i32 0, align 4
@CISS_INTERRUPT_COALESCE_COUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"adapter refuses to accept config update (IDBR 0x%x)\0A\00", align 1
@CISS_TL_SIMPLE_IDBR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [67 x i8] c"adapter refuses to go into available transports mode (0x%x, 0x%x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"PERFORMANT Transport\0A\00", align 1
@ciss_force_interrupt = common dso_local global i32 0, align 4
@ciss_perf_msi_intr = common dso_local global i8* null, align 8
@ciss_perf_intr = common dso_local global i8* null, align 8
@CISS_TL_PERF_INTR_OPQ = common dso_local global i32 0, align 4
@CISS_TL_PERF_INTR_MSI = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"SIMPLE Transport\0A\00", align 1
@ciss_intr = common dso_local global i8* null, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CISS_MAX_SG_ELEMENTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [31 x i8] c"can't allocate buffer DMA tag\0A\00", align 1
@CISS_DRIVER_SCSI_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_init_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_init_pci(%struct.ciss_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  %13 = call i32 @debug_called(i32 1)
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ciss_lookup(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %22 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %499

24:                                               ; preds = %1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciss_vendor_data, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CISS_BOARD_SA5, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @CISS_TL_SIMPLE_INTR_OPQ_SA5, align 4
  store i32 %35, i32* %10, align 4
  br label %50

36:                                               ; preds = %24
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciss_vendor_data, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CISS_BOARD_SA5B, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @CISS_TL_SIMPLE_INTR_OPQ_SA5B, align 4
  store i32 %47, i32* %10, align 4
  br label %49

48:                                               ; preds = %36
  store i32 -1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %46
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @CISS_TL_SIMPLE_BAR_REGS, align 4
  %53 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %59, i32 0, i32 0
  %61 = load i32, i32* @RF_ACTIVE, align 4
  %62 = call i8* @bus_alloc_resource_any(i32 %57, i32 %58, i32* %60, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %64, i32 0, i32 13
  store i32* %63, i32** %65, align 8
  %66 = icmp eq i32* %63, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %69 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %499

71:                                               ; preds = %50
  %72 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %72, i32 0, i32 13
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @rman_get_bushandle(i32* %74)
  %76 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %76, i32 0, i32 16
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %78, i32 0, i32 13
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @rman_get_bustag(i32* %80)
  %82 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %82, i32 0, i32 15
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %85 = load i32, i32* @CISS_TL_SIMPLE_CFG_BAR, align 4
  %86 = call i32 @CISS_TL_SIMPLE_READ(%struct.ciss_softc* %84, i32 %85)
  %87 = and i32 %86, 65535
  %88 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %71
  %98 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SYS_RES_MEMORY, align 4
  %102 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %102, i32 0, i32 1
  %104 = load i32, i32* @RF_ACTIVE, align 4
  %105 = call i8* @bus_alloc_resource_any(i32 %100, i32 %101, i32* %103, i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %108 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %107, i32 0, i32 14
  store i32* %106, i32** %108, align 8
  %109 = icmp eq i32* %106, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %112 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %499

114:                                              ; preds = %97
  %115 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %116 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %115, i32 0, i32 14
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @rman_get_virtual(i32* %117)
  store i64 %118, i64* %4, align 8
  %119 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %119, i32 0, i32 14
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @rman_get_end(i32* %121)
  %123 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %123, i32 0, i32 14
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @rman_get_start(i32* %125)
  %127 = sub nsw i32 %122, %126
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %5, align 8
  br label %146

130:                                              ; preds = %71
  %131 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %132 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %131, i32 0, i32 13
  %133 = load i32*, i32** %132, align 8
  %134 = call i64 @rman_get_virtual(i32* %133)
  store i64 %134, i64* %4, align 8
  %135 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %136 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %135, i32 0, i32 13
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @rman_get_end(i32* %137)
  %139 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %139, i32 0, i32 13
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @rman_get_start(i32* %141)
  %143 = sub nsw i32 %138, %142
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %130, %114
  %147 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %148 = load i32, i32* @CISS_TL_SIMPLE_CFG_OFF, align 4
  %149 = call i32 @CISS_TL_SIMPLE_READ(%struct.ciss_softc* %147, i32 %148)
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, 56
  %153 = load i64, i64* %5, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %146
  %156 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %157 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* @ENXIO, align 4
  store i32 %158, i32* %2, align 4
  br label %499

159:                                              ; preds = %146
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* %6, align 8
  %162 = add i64 %160, %161
  %163 = inttoptr i64 %162 to %struct.ciss_config_table*
  %164 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %164, i32 0, i32 11
  store %struct.ciss_config_table* %163, %struct.ciss_config_table** %165, align 8
  %166 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %167 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %166, i32 0, i32 11
  %168 = load %struct.ciss_config_table*, %struct.ciss_config_table** %167, align 8
  %169 = call i32 @debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.ciss_config_table* %168)
  %170 = load i32, i32* @CISS_MAX_REQUESTS, align 4
  %171 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %172 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %171, i32 0, i32 11
  %173 = load %struct.ciss_config_table*, %struct.ciss_config_table** %172, align 8
  %174 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @min(i32 %170, i32 %175)
  %177 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %178 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %177, i32 0, i32 12
  store i32 %176, i32* %178, align 8
  %179 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %180 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %179, i32 0, i32 11
  %181 = load %struct.ciss_config_table*, %struct.ciss_config_table** %180, align 8
  %182 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %181, i32 0, i32 8
  %183 = load i32*, i32** %182, align 8
  %184 = call i64 @strncmp(i32* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %218

186:                                              ; preds = %159
  %187 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %188 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %188, i32 0, i32 11
  %190 = load %struct.ciss_config_table*, %struct.ciss_config_table** %189, align 8
  %191 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %190, i32 0, i32 8
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %196 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %195, i32 0, i32 11
  %197 = load %struct.ciss_config_table*, %struct.ciss_config_table** %196, align 8
  %198 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %197, i32 0, i32 8
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %203 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %202, i32 0, i32 11
  %204 = load %struct.ciss_config_table*, %struct.ciss_config_table** %203, align 8
  %205 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %204, i32 0, i32 8
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %210 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %209, i32 0, i32 11
  %211 = load %struct.ciss_config_table*, %struct.ciss_config_table** %210, align 8
  %212 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %211, i32 0, i32 8
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %187, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %194, i32 %201, i32 %208, i32 %215)
  %217 = load i32, i32* @ENXIO, align 4
  store i32 %217, i32* %2, align 4
  br label %499

218:                                              ; preds = %159
  %219 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %219, i32 0, i32 11
  %221 = load %struct.ciss_config_table*, %struct.ciss_config_table** %220, align 8
  %222 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @CISS_TRANSPORT_METHOD_SIMPLE, align 4
  %225 = load i32, i32* @CISS_TRANSPORT_METHOD_PERF, align 4
  %226 = or i32 %224, %225
  %227 = and i32 %223, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %218
  %230 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %231 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %232 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %231, i32 0, i32 11
  %233 = load %struct.ciss_config_table*, %struct.ciss_config_table** %232, align 8
  %234 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %230, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %229, %218
  %238 = load i32, i32* @ciss_force_transport, align 4
  switch i32 %238, label %243 [
    i32 1, label %239
    i32 2, label %241
  ]

239:                                              ; preds = %237
  %240 = load i32, i32* @CISS_TRANSPORT_METHOD_SIMPLE, align 4
  store i32 %240, i32* %8, align 4
  br label %262

241:                                              ; preds = %237
  %242 = load i32, i32* @CISS_TRANSPORT_METHOD_PERF, align 4
  store i32 %242, i32* %8, align 4
  br label %262

243:                                              ; preds = %237
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciss_vendor_data, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @CISS_BOARD_SIMPLE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %243
  %254 = load i32, i32* @CISS_TRANSPORT_METHOD_SIMPLE, align 4
  store i32 %254, i32* %8, align 4
  br label %261

255:                                              ; preds = %243
  %256 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %257 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %256, i32 0, i32 11
  %258 = load %struct.ciss_config_table*, %struct.ciss_config_table** %257, align 8
  %259 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %255, %253
  br label %262

262:                                              ; preds = %261, %241, %239
  br label %263

263:                                              ; preds = %364, %285, %262
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @CISS_TRANSPORT_METHOD_PERF, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %291

268:                                              ; preds = %263
  %269 = load i32, i32* @CISS_TRANSPORT_METHOD_PERF, align 4
  store i32 %269, i32* %7, align 4
  %270 = load i64, i64* %4, align 8
  %271 = load i64, i64* %6, align 8
  %272 = add i64 %270, %271
  %273 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %274 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %273, i32 0, i32 11
  %275 = load %struct.ciss_config_table*, %struct.ciss_config_table** %274, align 8
  %276 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = add i64 %272, %277
  %279 = inttoptr i64 %278 to %struct.ciss_perf_config*
  %280 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %281 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %280, i32 0, i32 10
  store %struct.ciss_perf_config* %279, %struct.ciss_perf_config** %281, align 8
  %282 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %283 = call i64 @ciss_init_perf(%struct.ciss_softc* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %268
  %286 = load i32, i32* %7, align 4
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %8, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %8, align 4
  br label %263

290:                                              ; preds = %268
  br label %308

291:                                              ; preds = %263
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @CISS_TRANSPORT_METHOD_SIMPLE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = load i32, i32* @CISS_TRANSPORT_METHOD_SIMPLE, align 4
  store i32 %297, i32* %7, align 4
  br label %307

298:                                              ; preds = %291
  %299 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %300 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %301 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %300, i32 0, i32 11
  %302 = load %struct.ciss_config_table*, %struct.ciss_config_table** %301, align 8
  %303 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %299, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* @ENXIO, align 4
  store i32 %306, i32* %2, align 4
  br label %499

307:                                              ; preds = %296
  br label %308

308:                                              ; preds = %307, %290
  %309 = load i32, i32* %7, align 4
  %310 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %311 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %310, i32 0, i32 11
  %312 = load %struct.ciss_config_table*, %struct.ciss_config_table** %311, align 8
  %313 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %312, i32 0, i32 1
  store i32 %309, i32* %313, align 4
  %314 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %315 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %314, i32 0, i32 11
  %316 = load %struct.ciss_config_table*, %struct.ciss_config_table** %315, align 8
  %317 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %316, i32 0, i32 6
  store i64 0, i64* %317, align 8
  %318 = load i32, i32* @CISS_INTERRUPT_COALESCE_DELAY, align 4
  %319 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %320 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %319, i32 0, i32 11
  %321 = load %struct.ciss_config_table*, %struct.ciss_config_table** %320, align 8
  %322 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %321, i32 0, i32 5
  store i32 %318, i32* %322, align 4
  %323 = load i32, i32* @CISS_INTERRUPT_COALESCE_COUNT, align 4
  %324 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %325 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %324, i32 0, i32 11
  %326 = load %struct.ciss_config_table*, %struct.ciss_config_table** %325, align 8
  %327 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %326, i32 0, i32 4
  store i32 %323, i32* %327, align 8
  %328 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %329 = call i64 @ciss_update_config(%struct.ciss_softc* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %308
  %332 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %333 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %334 = load i32, i32* @CISS_TL_SIMPLE_IDBR, align 4
  %335 = call i32 @CISS_TL_SIMPLE_READ(%struct.ciss_softc* %333, i32 %334)
  %336 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %332, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %335)
  %337 = load i32, i32* @ENXIO, align 4
  store i32 %337, i32* %2, align 4
  br label %499

338:                                              ; preds = %308
  %339 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %340 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %339, i32 0, i32 11
  %341 = load %struct.ciss_config_table*, %struct.ciss_config_table** %340, align 8
  %342 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %7, align 4
  %345 = and i32 %343, %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %365

347:                                              ; preds = %338
  %348 = load i32, i32* %7, align 4
  %349 = xor i32 %348, -1
  %350 = load i32, i32* %8, align 4
  %351 = and i32 %350, %349
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %364

354:                                              ; preds = %347
  %355 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %356 = load i32, i32* %8, align 4
  %357 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %358 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %357, i32 0, i32 11
  %359 = load %struct.ciss_config_table*, %struct.ciss_config_table** %358, align 8
  %360 = getelementptr inbounds %struct.ciss_config_table, %struct.ciss_config_table* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %355, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %356, i32 %361)
  %363 = load i32, i32* @ENXIO, align 4
  store i32 %363, i32* %2, align 4
  br label %499

364:                                              ; preds = %347
  br label %263

365:                                              ; preds = %338
  %366 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %367 = call i32 @ciss_wait_adapter(%struct.ciss_softc* %366)
  store i32 %367, i32* %9, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = load i32, i32* %9, align 4
  store i32 %370, i32* %2, align 4
  br label %499

371:                                              ; preds = %365
  %372 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %373 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  store i32 0, i32* %375, align 4
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* @CISS_TRANSPORT_METHOD_PERF, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %398

379:                                              ; preds = %371
  %380 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %381 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %380, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %382 = load i32, i32* @ciss_force_interrupt, align 4
  %383 = icmp ne i32 %382, 1
  br i1 %383, label %384, label %390

384:                                              ; preds = %379
  %385 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %386 = call i64 @ciss_setup_msix(%struct.ciss_softc* %385)
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %384
  %389 = load i8*, i8** @ciss_perf_msi_intr, align 8
  store i8* %389, i8** %12, align 8
  br label %392

390:                                              ; preds = %384, %379
  %391 = load i8*, i8** @ciss_perf_intr, align 8
  store i8* %391, i8** %12, align 8
  br label %392

392:                                              ; preds = %390, %388
  %393 = load i32, i32* @CISS_TL_PERF_INTR_OPQ, align 4
  %394 = load i32, i32* @CISS_TL_PERF_INTR_MSI, align 4
  %395 = or i32 %393, %394
  %396 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %397 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %396, i32 0, i32 3
  store i32 %395, i32* %397, align 8
  br label %413

398:                                              ; preds = %371
  %399 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %400 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %399, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %401 = load i32, i32* @ciss_force_interrupt, align 4
  %402 = icmp eq i32 %401, 2
  br i1 %402, label %403, label %406

403:                                              ; preds = %398
  %404 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %405 = call i64 @ciss_setup_msix(%struct.ciss_softc* %404)
  br label %406

406:                                              ; preds = %403, %398
  %407 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %408 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %407, i32 0, i32 10
  store %struct.ciss_perf_config* null, %struct.ciss_perf_config** %408, align 8
  %409 = load i8*, i8** @ciss_intr, align 8
  store i8* %409, i8** %12, align 8
  %410 = load i32, i32* %10, align 4
  %411 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %412 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %411, i32 0, i32 3
  store i32 %410, i32* %412, align 8
  br label %413

413:                                              ; preds = %406, %392
  %414 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %415 = call i32 @CISS_TL_SIMPLE_DISABLE_INTERRUPTS(%struct.ciss_softc* %414)
  %416 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %417 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %416, i32 0, i32 7
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @SYS_RES_IRQ, align 4
  %420 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %421 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %420, i32 0, i32 2
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  %424 = load i32, i32* @RF_ACTIVE, align 4
  %425 = load i32, i32* @RF_SHAREABLE, align 4
  %426 = or i32 %424, %425
  %427 = call i8* @bus_alloc_resource_any(i32 %418, i32 %419, i32* %423, i32 %426)
  %428 = bitcast i8* %427 to i32*
  %429 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %430 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %429, i32 0, i32 9
  store i32* %428, i32** %430, align 8
  %431 = icmp eq i32* %428, null
  br i1 %431, label %432, label %436

432:                                              ; preds = %413
  %433 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %434 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %433, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %435 = load i32, i32* @ENXIO, align 4
  store i32 %435, i32* %2, align 4
  br label %499

436:                                              ; preds = %413
  %437 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %438 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %437, i32 0, i32 7
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %441 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %440, i32 0, i32 9
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* @INTR_TYPE_CAM, align 4
  %444 = load i32, i32* @INTR_MPSAFE, align 4
  %445 = or i32 %443, %444
  %446 = load i8*, i8** %12, align 8
  %447 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %448 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %449 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %448, i32 0, i32 8
  %450 = call i64 @bus_setup_intr(i32 %439, i32* %442, i32 %445, i32* null, i8* %446, %struct.ciss_softc* %447, i32* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %436
  %453 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %454 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %453, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %455 = load i32, i32* @ENXIO, align 4
  store i32 %455, i32* %2, align 4
  br label %499

456:                                              ; preds = %436
  %457 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %458 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %457, i32 0, i32 7
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @bus_get_dma_tag(i32 %459)
  %461 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %462 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %463 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %464 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %465 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %466 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %467 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %466, i32 0, i32 6
  %468 = call i64 @bus_dma_tag_create(i32 %460, i32 1, i32 0, i32 %461, i32 %462, i32* null, i32* null, i32 %463, i32 %464, i32 %465, i32 0, i32* null, i32* null, i32* %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %456
  %471 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %472 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %471, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %473 = load i32, i32* @ENOMEM, align 4
  store i32 %473, i32* %2, align 4
  br label %499

474:                                              ; preds = %456
  %475 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %476 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %475, i32 0, i32 6
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %479 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %480 = load i32, i32* @CISS_MAX_SG_ELEMENTS, align 4
  %481 = sub nsw i32 %480, 1
  %482 = load i32, i32* @PAGE_SIZE, align 4
  %483 = mul nsw i32 %481, %482
  %484 = load i32, i32* @CISS_MAX_SG_ELEMENTS, align 4
  %485 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %486 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %487 = load i32*, i32** @busdma_lock_mutex, align 8
  %488 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %489 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %488, i32 0, i32 5
  %490 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %491 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %490, i32 0, i32 4
  %492 = call i64 @bus_dma_tag_create(i32 %477, i32 1, i32 0, i32 %478, i32 %479, i32* null, i32* null, i32 %483, i32 %484, i32 %485, i32 %486, i32* %487, i32* %489, i32* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %474
  %495 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %496 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %495, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %497 = load i32, i32* @ENOMEM, align 4
  store i32 %497, i32* %2, align 4
  br label %499

498:                                              ; preds = %474
  store i32 0, i32* %2, align 4
  br label %499

499:                                              ; preds = %498, %494, %470, %452, %432, %369, %354, %331, %298, %186, %155, %110, %67, %20
  %500 = load i32, i32* %2, align 4
  ret i32 %500
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_lookup(i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @CISS_TL_SIMPLE_READ(%struct.ciss_softc*, i32) #1

declare dso_local i64 @rman_get_virtual(i32*) #1

declare dso_local i32 @rman_get_end(i32*) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @debug(i32, i8*, %struct.ciss_config_table*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i64 @ciss_init_perf(%struct.ciss_softc*) #1

declare dso_local i64 @ciss_update_config(%struct.ciss_softc*) #1

declare dso_local i32 @ciss_wait_adapter(%struct.ciss_softc*) #1

declare dso_local i64 @ciss_setup_msix(%struct.ciss_softc*) #1

declare dso_local i32 @CISS_TL_SIMPLE_DISABLE_INTERRUPTS(%struct.ciss_softc*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i8*, %struct.ciss_softc*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
