; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i32, %struct.TYPE_3__*, i64, i64, i64, i32, i64, i64, i32, i32*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i64, i32 (%struct.hpt_iop_hba*)*, i32 (%struct.hpt_iop_hba*)*, i32 (%struct.hpt_iop_hba*)*, i64 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_set_config*)*, i64 (%struct.hpt_iop_hba*)*, i64 (%struct.hpt_iop_hba*)*, i64 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_get_config*)*, i64 (%struct.hpt_iop_hba*, i32)*, i64 (%struct.hpt_iop_hba*)* }
%struct.hpt_iop_request_set_config = type { i32, i32, i8* }
%struct.hpt_iop_request_get_config = type { i32, i32, i32, i64, i32, i32 }
%struct.cam_devq = type { i32 }
%struct.ccb_setasync = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"%d RocketRAID 3xxx/4xxx controller driver %s\0A\00", align 1
@driver_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"hptiop: attach(%d, %d/%d/%d) ops=%p\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"adapter is not ready\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"hptioplock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"alloc parent_dmat failed\0A\00", align 1
@MV_BASED_IOP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"alloc srb_dmat failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"get iop config failed.\0A\00", align 1
@MVFREY_BASED_IOP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"reset comm failed\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"alloc io_dmat failed\0A\00", align 1
@HPT_SRB_MAX_SIZE = common dso_local global i32 0, align 4
@HPT_SRB_MAX_QUEUE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"srb bus_dmamem_alloc failed!\0A\00", align 1
@hptiop_map_srb = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"bus_dmamap_load failed!\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"cam_simq_alloc failed\0A\00", align 1
@hptiop_action = common dso_local global i32 0, align 4
@hptiop_poll = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"cam_sim_alloc failed\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"xpt_bus_register failed\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"xpt_create_path failed\0A\00", align 1
@HPT_SRB_MAX_REQ_SIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"set iop config failed.\0A\00", align 1
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@AC_FOUND_DEVICE = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@hptiop_async = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"allocate irq failed!\0A\00", align 1
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@hptiop_pci_intr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [32 x i8] c"allocate intr function failed!\0A\00", align 1
@IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"fail to start background task\0A\00", align 1
@hptiop_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hptiop_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_get_config, align 8
  %6 = alloca %struct.hpt_iop_request_set_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_devq*, align 8
  %9 = alloca %struct.ccb_setasync, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @device_get_softc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %13, %struct.hpt_iop_hba** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @device_get_unit(i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* @driver_version, align 4
  %19 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_get_bus(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_get_slot(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_get_function(i32 %25)
  %27 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %28 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = bitcast %struct.TYPE_3__* %29 to i8*
  %31 = call i32 @KdPrint(i8* %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pci_enable_busmaster(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %36 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %39 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %38, i32 0, i32 20
  store i8* %37, i8** %39, align 8
  %40 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %41 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 9
  %44 = load i64 (%struct.hpt_iop_hba*)*, i64 (%struct.hpt_iop_hba*)** %43, align 8
  %45 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %46 = call i64 %44(%struct.hpt_iop_hba* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %551

50:                                               ; preds = %1
  %51 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %52 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 8
  %55 = load i64 (%struct.hpt_iop_hba*, i32)*, i64 (%struct.hpt_iop_hba*, i32)** %54, align 8
  %56 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %57 = call i64 %55(%struct.hpt_iop_hba* %56, i32 2000)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %534

62:                                               ; preds = %50
  %63 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %64 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %63, i32 0, i32 15
  %65 = load i32, i32* @MTX_DEF, align 4
  %66 = call i32 @mtx_init(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @bus_get_dma_tag(i32 %67)
  %69 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %70 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %71 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %72 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %73 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %74 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %75 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %74, i32 0, i32 3
  %76 = call i64 @bus_dma_tag_create(i64 %68, i32 1, i64 0, i64 %69, i64 %70, i32* null, i32* null, i32 %71, i32 %72, i32 %73, i32 0, i32* null, i32* null, i64* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %534

81:                                               ; preds = %62
  %82 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %83 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MV_BASED_IOP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %81
  %90 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %91 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 6
  %94 = load i64 (%struct.hpt_iop_hba*)*, i64 (%struct.hpt_iop_hba*)** %93, align 8
  %95 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %96 = call i64 %94(%struct.hpt_iop_hba* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %523

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %104 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 7
  %107 = load i64 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_get_config*)*, i64 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_get_config*)** %106, align 8
  %108 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %109 = call i64 %107(%struct.hpt_iop_hba* %108, %struct.hpt_iop_request_get_config* %5)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %3, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %515

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %5, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %118 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %117, i32 0, i32 19
  store i32 %116, i32* %118, align 8
  %119 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %5, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %122 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %121, i32 0, i32 18
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %5, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %126 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %125, i32 0, i32 14
  store i64 %124, i64* %126, align 8
  %127 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %5, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %130 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %129, i32 0, i32 17
  store i32 %128, i32* %130, align 8
  %131 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %5, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %134 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %133, i32 0, i32 16
  store i32 %132, i32* %134, align 4
  %135 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %5, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %138 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %140 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MVFREY_BASED_IOP, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %114
  %147 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %148 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %147, i32 0, i32 2
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 6
  %151 = load i64 (%struct.hpt_iop_hba*)*, i64 (%struct.hpt_iop_hba*)** %150, align 8
  %152 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %153 = call i64 %151(%struct.hpt_iop_hba* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load i32, i32* %3, align 4
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %523

158:                                              ; preds = %146
  %159 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %160 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %159, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 5
  %163 = load i64 (%struct.hpt_iop_hba*)*, i64 (%struct.hpt_iop_hba*)** %162, align 8
  %164 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %165 = call i64 %163(%struct.hpt_iop_hba* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %515

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %114
  %172 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %173 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %176 = add nsw i64 %175, 1
  %177 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %178 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %179 = load i32, i32* @PAGE_SIZE, align 4
  %180 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %181 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 1
  %184 = mul nsw i32 %179, %183
  %185 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %186 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %189 = load i32*, i32** @busdma_lock_mutex, align 8
  %190 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %191 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %190, i32 0, i32 15
  %192 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %193 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %192, i32 0, i32 4
  %194 = call i64 @bus_dma_tag_create(i64 %174, i32 4, i64 %176, i64 %177, i64 %178, i32* null, i32* null, i32 %184, i32 %187, i32 131072, i32 %188, i32* %189, i32* %191, i64* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %171
  %197 = load i32, i32* %3, align 4
  %198 = call i32 (i32, i8*, ...) @device_printf(i32 %197, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %515

199:                                              ; preds = %171
  %200 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %201 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %204 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %205 = load i32, i32* @HPT_SRB_MAX_SIZE, align 4
  %206 = load i32, i32* @HPT_SRB_MAX_QUEUE_SIZE, align 4
  %207 = mul nsw i32 %205, %206
  %208 = add nsw i32 %207, 32
  %209 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %210 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %211 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %210, i32 0, i32 5
  %212 = call i64 @bus_dma_tag_create(i64 %202, i32 1, i64 0, i64 %203, i64 %204, i32* null, i32* null, i32 %208, i32 1, i32 %209, i32 0, i32* null, i32* null, i64* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %199
  %215 = load i32, i32* %3, align 4
  %216 = call i32 (i32, i8*, ...) @device_printf(i32 %215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %504

217:                                              ; preds = %199
  %218 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %219 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %222 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %221, i32 0, i32 7
  %223 = bitcast i64* %222 to i8**
  %224 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %225 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %228 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %227, i32 0, i32 6
  %229 = call i64 @bus_dmamem_alloc(i64 %220, i8** %223, i32 %226, i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %217
  %232 = load i32, i32* %3, align 4
  %233 = call i32 (i32, i8*, ...) @device_printf(i32 %232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %493

234:                                              ; preds = %217
  %235 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %236 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %239 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %242 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* @HPT_SRB_MAX_SIZE, align 4
  %245 = load i32, i32* @HPT_SRB_MAX_QUEUE_SIZE, align 4
  %246 = mul nsw i32 %244, %245
  %247 = add nsw i32 %246, 32
  %248 = load i32, i32* @hptiop_map_srb, align 4
  %249 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %250 = call i64 @bus_dmamap_load(i64 %237, i32 %240, i64 %243, i32 %247, i32 %248, %struct.hpt_iop_hba* %249, i32 0)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %234
  %253 = load i32, i32* %3, align 4
  %254 = call i32 (i32, i8*, ...) @device_printf(i32 %253, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %476

255:                                              ; preds = %234
  %256 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %257 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %256, i32 0, i32 14
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %258, 1
  %260 = call %struct.cam_devq* @cam_simq_alloc(i64 %259)
  store %struct.cam_devq* %260, %struct.cam_devq** %8, align 8
  %261 = icmp eq %struct.cam_devq* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %255
  %263 = load i32, i32* %3, align 4
  %264 = call i32 (i32, i8*, ...) @device_printf(i32 %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %462

265:                                              ; preds = %255
  %266 = load i32, i32* @hptiop_action, align 4
  %267 = load i32, i32* @hptiop_poll, align 4
  %268 = load i32, i32* @driver_name, align 4
  %269 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %270 = load i8*, i8** %10, align 8
  %271 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %272 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %271, i32 0, i32 15
  %273 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %274 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %273, i32 0, i32 14
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %275, 1
  %277 = load %struct.cam_devq*, %struct.cam_devq** %8, align 8
  %278 = call i64 @cam_sim_alloc(i32 %266, i32 %267, i32 %268, %struct.hpt_iop_hba* %269, i8* %270, i32* %272, i64 %276, i32 1, %struct.cam_devq* %277)
  %279 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %280 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %279, i32 0, i32 8
  store i64 %278, i64* %280, align 8
  %281 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %282 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %281, i32 0, i32 8
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %265
  %286 = load i32, i32* %3, align 4
  %287 = call i32 (i32, i8*, ...) @device_printf(i32 %286, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %288 = load %struct.cam_devq*, %struct.cam_devq** %8, align 8
  %289 = call i32 @cam_simq_free(%struct.cam_devq* %288)
  br label %462

290:                                              ; preds = %265
  %291 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %292 = call i32 @hptiop_lock_adapter(%struct.hpt_iop_hba* %291)
  %293 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %294 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %293, i32 0, i32 8
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %3, align 4
  %297 = call i64 @xpt_bus_register(i64 %295, i32 %296, i32 0)
  %298 = load i64, i64* @CAM_SUCCESS, align 8
  %299 = icmp ne i64 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %290
  %301 = load i32, i32* %3, align 4
  %302 = call i32 (i32, i8*, ...) @device_printf(i32 %301, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %454

303:                                              ; preds = %290
  %304 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %305 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %304, i32 0, i32 9
  %306 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %307 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %306, i32 0, i32 8
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @cam_sim_path(i64 %308)
  %310 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %311 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %312 = call i64 @xpt_create_path(i32* %305, i32* null, i32 %309, i32 %310, i32 %311)
  %313 = load i64, i64* @CAM_REQ_CMP, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %303
  %316 = load i32, i32* %3, align 4
  %317 = call i32 (i32, i8*, ...) @device_printf(i32 %316, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %448

318:                                              ; preds = %303
  %319 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %320 = call i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba* %319)
  %321 = call i32 @bzero(%struct.hpt_iop_request_set_config* %6, i32 16)
  %322 = load i8*, i8** %10, align 8
  %323 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %6, i32 0, i32 2
  store i8* %322, i8** %323, align 8
  %324 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %325 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %324, i32 0, i32 8
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @cam_sim_path(i64 %326)
  %328 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %6, i32 0, i32 1
  store i32 %327, i32* %328, align 4
  %329 = load i32, i32* @HPT_SRB_MAX_REQ_SIZE, align 4
  %330 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %6, i32 0, i32 0
  store i32 %329, i32* %330, align 8
  %331 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %332 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %331, i32 0, i32 2
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 4
  %335 = load i64 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_set_config*)*, i64 (%struct.hpt_iop_hba*, %struct.hpt_iop_request_set_config*)** %334, align 8
  %336 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %337 = call i64 %335(%struct.hpt_iop_hba* %336, %struct.hpt_iop_request_set_config* %6)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %318
  %340 = load i32, i32* %3, align 4
  %341 = call i32 (i32, i8*, ...) @device_printf(i32 %340, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %443

342:                                              ; preds = %318
  %343 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %9, i32 0, i32 3
  %344 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %345 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %344, i32 0, i32 9
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %343, i32 %346, i32 5)
  %348 = load i32, i32* @XPT_SASYNC_CB, align 4
  %349 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %9, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* @AC_FOUND_DEVICE, align 4
  %352 = load i32, i32* @AC_LOST_DEVICE, align 4
  %353 = or i32 %351, %352
  %354 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %9, i32 0, i32 0
  store i32 %353, i32* %354, align 8
  %355 = load i32, i32* @hptiop_async, align 4
  %356 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %9, i32 0, i32 2
  store i32 %355, i32* %356, align 8
  %357 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %358 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %357, i32 0, i32 8
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %9, i32 0, i32 1
  store i64 %359, i64* %360, align 8
  %361 = bitcast %struct.ccb_setasync* %9 to %union.ccb*
  %362 = call i32 @xpt_action(%union.ccb* %361)
  store i32 0, i32* %7, align 4
  %363 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %364 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %363, i32 0, i32 13
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @SYS_RES_IRQ, align 4
  %367 = load i32, i32* @RF_SHAREABLE, align 4
  %368 = load i32, i32* @RF_ACTIVE, align 4
  %369 = or i32 %367, %368
  %370 = call i32* @bus_alloc_resource_any(i32 %365, i32 %366, i32* %7, i32 %369)
  %371 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %372 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %371, i32 0, i32 10
  store i32* %370, i32** %372, align 8
  %373 = icmp eq i32* %370, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %342
  %375 = load i32, i32* %3, align 4
  %376 = call i32 (i32, i8*, ...) @device_printf(i32 %375, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %443

377:                                              ; preds = %342
  %378 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %379 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %378, i32 0, i32 13
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %382 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %381, i32 0, i32 10
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* @INTR_TYPE_CAM, align 4
  %385 = load i32, i32* @INTR_MPSAFE, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @hptiop_pci_intr, align 4
  %388 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %389 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %390 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %389, i32 0, i32 11
  %391 = call i64 @bus_setup_intr(i32 %380, i32* %383, i32 %386, i32* null, i32 %387, %struct.hpt_iop_hba* %388, i32* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %377
  %394 = load i32, i32* %3, align 4
  %395 = call i32 (i32, i8*, ...) @device_printf(i32 %394, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  br label %434

396:                                              ; preds = %377
  %397 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %398 = load i32, i32* @IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK, align 4
  %399 = call i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba* %397, i32 %398, i32 5000)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %396
  %402 = load i32, i32* %3, align 4
  %403 = call i32 (i32, i8*, ...) @device_printf(i32 %402, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  br label %425

404:                                              ; preds = %396
  %405 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %406 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %405, i32 0, i32 2
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 3
  %409 = load i32 (%struct.hpt_iop_hba*)*, i32 (%struct.hpt_iop_hba*)** %408, align 8
  %410 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %411 = call i32 %409(%struct.hpt_iop_hba* %410)
  %412 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %413 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %412, i32 0, i32 1
  store i32 1, i32* %413, align 4
  %414 = load i8*, i8** %10, align 8
  %415 = load i32, i32* @UID_ROOT, align 4
  %416 = load i32, i32* @GID_WHEEL, align 4
  %417 = load i32, i32* @S_IRUSR, align 4
  %418 = load i32, i32* @S_IWUSR, align 4
  %419 = or i32 %417, %418
  %420 = load i32, i32* @driver_name, align 4
  %421 = load i8*, i8** %10, align 8
  %422 = call i32 @make_dev(i32* @hptiop_cdevsw, i8* %414, i32 %415, i32 %416, i32 %419, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %420, i8* %421)
  %423 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %424 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %423, i32 0, i32 12
  store i32 %422, i32* %424, align 4
  store i32 0, i32* %2, align 4
  br label %551

425:                                              ; preds = %401
  %426 = load i32, i32* %3, align 4
  %427 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %428 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %427, i32 0, i32 10
  %429 = load i32*, i32** %428, align 8
  %430 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %431 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %430, i32 0, i32 11
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @bus_teardown_intr(i32 %426, i32* %429, i32 %432)
  br label %434

434:                                              ; preds = %425, %393
  %435 = load i32, i32* %3, align 4
  %436 = load i32, i32* @SYS_RES_IRQ, align 4
  %437 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %438 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %437, i32 0, i32 10
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 @bus_release_resource(i32 %435, i32 %436, i32 0, i32* %439)
  %441 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %442 = call i32 @hptiop_lock_adapter(%struct.hpt_iop_hba* %441)
  br label %443

443:                                              ; preds = %434, %374, %339
  %444 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %445 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %444, i32 0, i32 9
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @xpt_free_path(i32 %446)
  br label %448

448:                                              ; preds = %443, %315
  %449 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %450 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %449, i32 0, i32 8
  %451 = load i64, i64* %450, align 8
  %452 = call i32 @cam_sim_path(i64 %451)
  %453 = call i32 @xpt_bus_deregister(i32 %452)
  br label %454

454:                                              ; preds = %448, %300
  %455 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %456 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %455, i32 0, i32 8
  %457 = load i64, i64* %456, align 8
  %458 = load i32, i32* @TRUE, align 4
  %459 = call i32 @cam_sim_free(i64 %457, i32 %458)
  %460 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %461 = call i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba* %460)
  br label %462

462:                                              ; preds = %454, %285, %262
  %463 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %464 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %463, i32 0, i32 7
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %475

467:                                              ; preds = %462
  %468 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %469 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %468, i32 0, i32 5
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %472 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %471, i32 0, i32 6
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @bus_dmamap_unload(i64 %470, i32 %473)
  br label %475

475:                                              ; preds = %467, %462
  br label %476

476:                                              ; preds = %475, %252
  %477 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %478 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %477, i32 0, i32 7
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %492

481:                                              ; preds = %476
  %482 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %483 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %482, i32 0, i32 5
  %484 = load i64, i64* %483, align 8
  %485 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %486 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %485, i32 0, i32 7
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %489 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @bus_dmamem_free(i64 %484, i64 %487, i32 %490)
  br label %492

492:                                              ; preds = %481, %476
  br label %493

493:                                              ; preds = %492, %231
  %494 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %495 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %494, i32 0, i32 5
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %493
  %499 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %500 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %499, i32 0, i32 5
  %501 = load i64, i64* %500, align 8
  %502 = call i32 @bus_dma_tag_destroy(i64 %501)
  br label %503

503:                                              ; preds = %498, %493
  br label %504

504:                                              ; preds = %503, %214
  %505 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %506 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %505, i32 0, i32 4
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %504
  %510 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %511 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %510, i32 0, i32 4
  %512 = load i64, i64* %511, align 8
  %513 = call i32 @bus_dma_tag_destroy(i64 %512)
  br label %514

514:                                              ; preds = %509, %504
  br label %515

515:                                              ; preds = %514, %196, %167, %111
  %516 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %517 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %516, i32 0, i32 2
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 2
  %520 = load i32 (%struct.hpt_iop_hba*)*, i32 (%struct.hpt_iop_hba*)** %519, align 8
  %521 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %522 = call i32 %520(%struct.hpt_iop_hba* %521)
  br label %523

523:                                              ; preds = %515, %155, %98
  %524 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %525 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %524, i32 0, i32 3
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %523
  %529 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %530 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = call i32 @bus_dma_tag_destroy(i64 %531)
  br label %533

533:                                              ; preds = %528, %523
  br label %534

534:                                              ; preds = %533, %78, %59
  %535 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %536 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %535, i32 0, i32 2
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 1
  %539 = load i32 (%struct.hpt_iop_hba*)*, i32 (%struct.hpt_iop_hba*)** %538, align 8
  %540 = icmp ne i32 (%struct.hpt_iop_hba*)* %539, null
  br i1 %540, label %541, label %549

541:                                              ; preds = %534
  %542 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %543 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %542, i32 0, i32 2
  %544 = load %struct.TYPE_3__*, %struct.TYPE_3__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %544, i32 0, i32 1
  %546 = load i32 (%struct.hpt_iop_hba*)*, i32 (%struct.hpt_iop_hba*)** %545, align 8
  %547 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %548 = call i32 %546(%struct.hpt_iop_hba* %547)
  br label %549

549:                                              ; preds = %541, %534
  %550 = load i32, i32* @ENXIO, align 4
  store i32 %550, i32* %2, align 4
  br label %551

551:                                              ; preds = %549, %404, %48
  %552 = load i32, i32* %2, align 4
  ret i32 %552
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i8* @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @bus_dma_tag_create(i64, i32, i64, i64, i64, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i64 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i64, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i64, i32, i64, i32, i32, %struct.hpt_iop_hba*, i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i64) #1

declare dso_local i64 @cam_sim_alloc(i32, i32, i32, %struct.hpt_iop_hba*, i8*, i32*, i64, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @hptiop_lock_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i64 @xpt_bus_register(i64, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i64) #1

declare dso_local i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i32 @bzero(%struct.hpt_iop_request_set_config*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.hpt_iop_hba*, i32*) #1

declare dso_local i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba*, i32, i32) #1

declare dso_local i32 @make_dev(i32*, i8*, i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_free(i64, i32) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
