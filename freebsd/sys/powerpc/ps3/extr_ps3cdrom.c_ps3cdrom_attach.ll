; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3cdrom_softc = type { i32, i64, i32, i32, i32, i64, i32, i32, %struct.ps3cdrom_xfer*, i32, i32 }
%struct.ps3cdrom_xfer = type { i32, %struct.ps3cdrom_softc* }
%struct.cam_devq = type { i32 }
%struct.ccb_setasync = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not allocate IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@ps3cdrom_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not setup IRQ\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not create DMA tag\0A\00", align 1
@PS3CDROM_MAX_XFERS = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not create DMA map (%d)\0A\00", align 1
@x_queue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not allocate SIM queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ps3cdrom_action = common dso_local global i32 0, align 4
@ps3cdrom_poll = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"ps3cdrom\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Could not allocate SIM\0A\00", align 1
@CAM_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not register XPT bus\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Could not create XPT path\0A\00", align 1
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@ps3cdrom_async = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"registered SIM for ps3cdrom%d\0A\00", align 1
@BUS_PROBE_SPECIFIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ps3cdrom_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3cdrom_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps3cdrom_softc*, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca %struct.ps3cdrom_xfer*, align 8
  %7 = alloca %struct.ccb_setasync, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ps3cdrom_softc* @device_get_softc(i32 %10)
  store %struct.ps3cdrom_softc* %11, %struct.ps3cdrom_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %16 = call i32 @PS3CDROM_LOCK_INIT(%struct.ps3cdrom_softc* %15)
  %17 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_IRQ, align 4
  %21 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %21, i32 0, i32 1
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = call i32 @bus_alloc_resource_any(i32 %19, i32 %20, i64* %22, i32 %23)
  %25 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %9, align 4
  br label %275

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @INTR_TYPE_CAM, align 4
  %41 = load i32, i32* @INTR_MPSAFE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @INTR_ENTROPY, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ps3cdrom_intr, align 4
  %46 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %47 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %47, i32 0, i32 2
  %49 = call i32 @bus_setup_intr(i32 %36, i32 %39, i32 %44, i32* null, i32 %45, %struct.ps3cdrom_softc* %46, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %9, align 4
  br label %265

56:                                               ; preds = %35
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @bus_get_dma_tag(i32 %57)
  %59 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %60 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %61 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* @busdma_lock_mutex, align 4
  %64 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %64, i32 0, i32 7
  %66 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %66, i32 0, i32 3
  %68 = call i32 @bus_dma_tag_create(i32 %58, i32 4096, i32 0, i32 %59, i32 %60, i32* null, i32* null, i32 %61, i32 1, i32 %62, i32 0, i32 %63, i32* %65, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %9, align 4
  br label %256

75:                                               ; preds = %56
  %76 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %76, i32 0, i32 9
  %78 = call i32 @TAILQ_INIT(i32* %77)
  %79 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %79, i32 0, i32 4
  %81 = call i32 @TAILQ_INIT(i32* %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %115, %75
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PS3CDROM_MAX_XFERS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %82
  %87 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %88 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %87, i32 0, i32 8
  %89 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ps3cdrom_xfer, %struct.ps3cdrom_xfer* %89, i64 %91
  store %struct.ps3cdrom_xfer* %92, %struct.ps3cdrom_xfer** %6, align 8
  %93 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %94 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %6, align 8
  %95 = getelementptr inbounds %struct.ps3cdrom_xfer, %struct.ps3cdrom_xfer* %94, i32 0, i32 1
  store %struct.ps3cdrom_softc* %93, %struct.ps3cdrom_softc** %95, align 8
  %96 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %97 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %100 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %6, align 8
  %101 = getelementptr inbounds %struct.ps3cdrom_xfer, %struct.ps3cdrom_xfer* %100, i32 0, i32 0
  %102 = call i32 @bus_dmamap_create(i32 %98, i32 %99, i32* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %86
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %231

109:                                              ; preds = %86
  %110 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %111 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %110, i32 0, i32 4
  %112 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %6, align 8
  %113 = load i32, i32* @x_queue, align 4
  %114 = call i32 @TAILQ_INSERT_TAIL(i32* %111, %struct.ps3cdrom_xfer* %112, i32 %113)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %82

118:                                              ; preds = %82
  %119 = load i32, i32* @PS3CDROM_MAX_XFERS, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call %struct.cam_devq* @cam_simq_alloc(i32 %120)
  store %struct.cam_devq* %121, %struct.cam_devq** %5, align 8
  %122 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %123 = icmp ne %struct.cam_devq* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %3, align 4
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @ENOMEM, align 4
  store i32 %127, i32* %9, align 4
  br label %251

128:                                              ; preds = %118
  %129 = load i32, i32* @ps3cdrom_action, align 4
  %130 = load i32, i32* @ps3cdrom_poll, align 4
  %131 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @device_get_unit(i32 %132)
  %134 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %135 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %134, i32 0, i32 7
  %136 = load i32, i32* @PS3CDROM_MAX_XFERS, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %139 = call i64 @cam_sim_alloc(i32 %129, i32 %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.ps3cdrom_softc* %131, i32 %133, i32* %135, i32 %137, i32 0, %struct.cam_devq* %138)
  %140 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %140, i32 0, i32 5
  store i64 %139, i64* %141, align 8
  %142 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %128
  %147 = load i32, i32* %3, align 4
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %149 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %150 = call i32 @cam_simq_free(%struct.cam_devq* %149)
  %151 = load i32, i32* @ENOMEM, align 4
  store i32 %151, i32* %9, align 4
  br label %251

152:                                              ; preds = %128
  %153 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %154 = call i32 @PS3CDROM_LOCK(%struct.ps3cdrom_softc* %153)
  %155 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @xpt_bus_register(i64 %157, i32 %158, i32 0)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @CAM_SUCCESS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %152
  %164 = load i32, i32* %3, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i32, i32* @ENXIO, align 4
  store i32 %166, i32* %9, align 4
  %167 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %168 = call i32 @PS3CDROM_UNLOCK(%struct.ps3cdrom_softc* %167)
  br label %225

169:                                              ; preds = %152
  %170 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %171 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %170, i32 0, i32 6
  %172 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %173 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @cam_sim_path(i64 %174)
  %176 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %177 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %178 = call i32 @xpt_create_path(i32* %171, i32* null, i32 %175, i32 %176, i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @CAM_REQ_CMP, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %169
  %183 = load i32, i32* %3, align 4
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %185 = load i32, i32* @ENOMEM, align 4
  store i32 %185, i32* %9, align 4
  %186 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %187 = call i32 @PS3CDROM_UNLOCK(%struct.ps3cdrom_softc* %186)
  br label %219

188:                                              ; preds = %169
  %189 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 3
  %190 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %191 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %189, i32 %192, i32 5)
  %194 = load i32, i32* @XPT_SASYNC_CB, align 4
  %195 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* @AC_LOST_DEVICE, align 4
  %198 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 2
  store i32 %197, i32* %198, align 4
  %199 = load i32, i32* @ps3cdrom_async, align 4
  %200 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 1
  store i32 %199, i32* %200, align 8
  %201 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %202 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %7, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = bitcast %struct.ccb_setasync* %7 to %union.ccb*
  %206 = call i32 @xpt_action(%union.ccb* %205)
  %207 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %208 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @device_get_unit(i32 %211)
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @CAM_DEBUG(i32 %209, i32 %210, i8* %214)
  %216 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %217 = call i32 @PS3CDROM_UNLOCK(%struct.ps3cdrom_softc* %216)
  %218 = load i32, i32* @BUS_PROBE_SPECIFIC, align 4
  store i32 %218, i32* %2, align 4
  br label %279

219:                                              ; preds = %182
  %220 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %221 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @cam_sim_path(i64 %222)
  %224 = call i32 @xpt_bus_deregister(i32 %223)
  br label %225

225:                                              ; preds = %219, %163
  %226 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %227 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @TRUE, align 4
  %230 = call i32 @cam_sim_free(i64 %228, i32 %229)
  br label %231

231:                                              ; preds = %225, %105
  br label %232

232:                                              ; preds = %237, %231
  %233 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %234 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %233, i32 0, i32 4
  %235 = call %struct.ps3cdrom_xfer* @TAILQ_FIRST(i32* %234)
  store %struct.ps3cdrom_xfer* %235, %struct.ps3cdrom_xfer** %6, align 8
  %236 = icmp ne %struct.ps3cdrom_xfer* %235, null
  br i1 %236, label %237, label %250

237:                                              ; preds = %232
  %238 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %239 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %238, i32 0, i32 4
  %240 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %6, align 8
  %241 = load i32, i32* @x_queue, align 4
  %242 = call i32 @TAILQ_REMOVE(i32* %239, %struct.ps3cdrom_xfer* %240, i32 %241)
  %243 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %244 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %6, align 8
  %247 = getelementptr inbounds %struct.ps3cdrom_xfer, %struct.ps3cdrom_xfer* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @bus_dmamap_destroy(i32 %245, i32 %248)
  br label %232

250:                                              ; preds = %232
  br label %251

251:                                              ; preds = %250, %146, %124
  %252 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %253 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @bus_dma_tag_destroy(i32 %254)
  br label %256

256:                                              ; preds = %251, %71
  %257 = load i32, i32* %3, align 4
  %258 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %259 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %262 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @bus_teardown_intr(i32 %257, i32 %260, i32 %263)
  br label %265

265:                                              ; preds = %256, %52
  %266 = load i32, i32* %3, align 4
  %267 = load i32, i32* @SYS_RES_IRQ, align 4
  %268 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %269 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %272 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @bus_release_resource(i32 %266, i32 %267, i64 %270, i32 %273)
  br label %275

275:                                              ; preds = %265, %31
  %276 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %4, align 8
  %277 = call i32 @PS3CDROM_LOCK_DESTROY(%struct.ps3cdrom_softc* %276)
  %278 = load i32, i32* %9, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %275, %188
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local %struct.ps3cdrom_softc* @device_get_softc(i32) #1

declare dso_local i32 @PS3CDROM_LOCK_INIT(%struct.ps3cdrom_softc*) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.ps3cdrom_softc*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ps3cdrom_xfer*, i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i64 @cam_sim_alloc(i32, i32, i8*, %struct.ps3cdrom_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @PS3CDROM_LOCK(%struct.ps3cdrom_softc*) #1

declare dso_local i32 @xpt_bus_register(i64, i32, i32) #1

declare dso_local i32 @PS3CDROM_UNLOCK(%struct.ps3cdrom_softc*) #1

declare dso_local i32 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i64) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_free(i64, i32) #1

declare dso_local %struct.ps3cdrom_xfer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ps3cdrom_xfer*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32) #1

declare dso_local i32 @PS3CDROM_LOCK_DESTROY(%struct.ps3cdrom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
