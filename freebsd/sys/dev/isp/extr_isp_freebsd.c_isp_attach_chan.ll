; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_attach_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_attach_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.cam_devq = type { i32 }
%struct.ccb_setasync = type { %struct.cam_sim*, i32, i32, %struct.TYPE_19__ }
%struct.cam_sim = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.cam_path = type { i32 }
%struct.isp_spi = type { i32*, i32*, i32, i32*, i32, i32, %struct.cam_path*, %struct.cam_sim* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.isp_fc = type { i32, i32, i32, i32, i32, %struct.cam_sim*, %struct.cam_path*, i32, i32*, i32*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%union.ccb = type { i32 }

@isp_action = common dso_local global i32 0, align 4
@isp_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@isp_cam_async = common dso_local global i32 0, align 4
@isp_gdt_task = common dso_local global i32 0, align 4
@isp_kthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"chan%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Virtual channel\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wwnn\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"World Wide Node Name\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"wwpn\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"World Wide Port Name\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"loop_down_limit\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Loop Down Limit\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gone_device_time\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Gone Device Time\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@isp_role_sysctl = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Current role\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Connection speed in gigabits\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"linkstate\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Link state\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"fwstate\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Firmware state\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"loopstate\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Loop state\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"topo\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Connection topology\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"use_gft_id\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [30 x i8] c"Use GFT_ID during fabric scan\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"use_gff_id\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Use GFF_ID during fabric scan\00", align 1
@ATPDPHASHSIZE = common dso_local global i32 0, align 4
@ATPDPSIZE = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.cam_devq*, i32)* @isp_attach_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_attach_chan(%struct.TYPE_17__* %0, %struct.cam_devq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.cam_devq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_setasync, align 8
  %9 = alloca %struct.cam_sim*, align 8
  %10 = alloca %struct.cam_path*, align 8
  %11 = alloca %struct.isp_spi*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.isp_fc*, align 8
  %14 = alloca %struct.sysctl_ctx_list*, align 8
  %15 = alloca %struct.sysctl_oid*, align 8
  %16 = alloca [16 x i8], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.cam_devq* %1, %struct.cam_devq** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @isp_action, align 4
  %18 = load i32, i32* @isp_poll, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_get_unit(i32 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %33 = call %struct.cam_sim* @cam_sim_alloc(i32 %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %19, i32 %23, i32* %25, i32 %28, i32 %31, %struct.cam_devq* %32)
  store %struct.cam_sim* %33, %struct.cam_sim** %9, align 8
  %34 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %35 = icmp eq %struct.cam_sim* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %4, align 4
  br label %310

38:                                               ; preds = %3
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = call i32 @ISP_LOCK(%struct.TYPE_17__* %39)
  %41 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @xpt_bus_register(%struct.cam_sim* %41, i32 %44, i32 %45)
  %47 = load i64, i64* @CAM_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = call i32 @ISP_UNLOCK(%struct.TYPE_17__* %50)
  %52 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @cam_sim_free(%struct.cam_sim* %52, i32 %53)
  %55 = load i32, i32* @EIO, align 4
  store i32 %55, i32* %4, align 4
  br label %310

56:                                               ; preds = %38
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = call i32 @ISP_UNLOCK(%struct.TYPE_17__* %57)
  %59 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %60 = call i32 @cam_sim_path(%struct.cam_sim* %59)
  %61 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %62 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %63 = call i64 @xpt_create_path(%struct.cam_path** %10, i32* null, i32 %60, i32 %61, i32 %62)
  %64 = load i64, i64* @CAM_REQ_CMP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = call i32 @ISP_LOCK(%struct.TYPE_17__* %67)
  %69 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %70 = call i32 @cam_sim_path(%struct.cam_sim* %69)
  %71 = call i32 @xpt_bus_deregister(i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = call i32 @ISP_UNLOCK(%struct.TYPE_17__* %72)
  %74 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @cam_sim_free(%struct.cam_sim* %74, i32 %75)
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %4, align 4
  br label %310

78:                                               ; preds = %56
  %79 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %8, i32 0, i32 3
  %80 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %81 = call i32 @xpt_setup_ccb(%struct.TYPE_19__* %79, %struct.cam_path* %80, i32 5)
  %82 = load i32, i32* @XPT_SASYNC_CB, align 4
  %83 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %8, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @AC_LOST_DEVICE, align 4
  %86 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %8, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @isp_cam_async, align 4
  %88 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %8, i32 0, i32 1
  store i32 %87, i32* %88, align 8
  %89 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %90 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %8, i32 0, i32 0
  store %struct.cam_sim* %89, %struct.cam_sim** %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = call i32 @ISP_LOCK(%struct.TYPE_17__* %91)
  %93 = bitcast %struct.ccb_setasync* %8 to %union.ccb*
  %94 = call i32 @xpt_action(%union.ccb* %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = call i32 @ISP_UNLOCK(%struct.TYPE_17__* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = call i64 @IS_SCSI(%struct.TYPE_17__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %78
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call %struct.isp_spi* @ISP_SPI_PC(%struct.TYPE_17__* %101, i32 %102)
  store %struct.isp_spi* %103, %struct.isp_spi** %11, align 8
  %104 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %105 = load %struct.isp_spi*, %struct.isp_spi** %11, align 8
  %106 = getelementptr inbounds %struct.isp_spi, %struct.isp_spi* %105, i32 0, i32 7
  store %struct.cam_sim* %104, %struct.cam_sim** %106, align 8
  %107 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %108 = load %struct.isp_spi*, %struct.isp_spi** %11, align 8
  %109 = getelementptr inbounds %struct.isp_spi, %struct.isp_spi* %108, i32 0, i32 6
  store %struct.cam_path* %107, %struct.cam_path** %109, align 8
  br label %309

110:                                              ; preds = %78
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call %struct.TYPE_18__* @FCPARAM(%struct.TYPE_17__* %111, i32 %112)
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %12, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_17__* %114, i32 %115)
  store %struct.isp_fc* %116, %struct.isp_fc** %13, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %120)
  store %struct.sysctl_ctx_list* %121, %struct.sysctl_ctx_list** %14, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %125)
  store %struct.sysctl_oid* %126, %struct.sysctl_oid** %15, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = call i32 @ISP_LOCK(%struct.TYPE_17__* %127)
  %129 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %130 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %131 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %130, i32 0, i32 5
  store %struct.cam_sim* %129, %struct.cam_sim** %131, align 8
  %132 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %133 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %134 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %133, i32 0, i32 6
  store %struct.cam_path* %132, %struct.cam_path** %134, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %137 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %136, i32 0, i32 16
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %137, align 8
  %138 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %139 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %145 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %144, i32 0, i32 15
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = call i32 @callout_init_mtx(i32* %145, i32* %147, i32 0)
  %149 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %150 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %149, i32 0, i32 14
  %151 = load i32, i32* @isp_gdt_task, align 4
  %152 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %153 = call i32 @TASK_INIT(i32* %150, i32 1, i32 %151, %struct.isp_fc* %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @isp_loop_changed(%struct.TYPE_17__* %154, i32 %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = call i32 @ISP_UNLOCK(%struct.TYPE_17__* %157)
  %159 = load i32, i32* @isp_kthread, align 4
  %160 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %161 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %162 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %161, i32 0, i32 7
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @device_get_nameunit(i32 %166)
  %168 = load i32, i32* %7, align 4
  %169 = call i64 @kproc_create(i32 %159, %struct.isp_fc* %160, i32* %162, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %110
  %172 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %173 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %172, i32 0, i32 6
  %174 = load %struct.cam_path*, %struct.cam_path** %173, align 8
  %175 = call i32 @xpt_free_path(%struct.cam_path* %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %177 = call i32 @ISP_LOCK(%struct.TYPE_17__* %176)
  %178 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %179 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %178, i32 0, i32 5
  %180 = load %struct.cam_sim*, %struct.cam_sim** %179, align 8
  %181 = call i32 @cam_sim_path(%struct.cam_sim* %180)
  %182 = call i32 @xpt_bus_deregister(i32 %181)
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = call i32 @ISP_UNLOCK(%struct.TYPE_17__* %183)
  %185 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %186 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %185, i32 0, i32 5
  %187 = load %struct.cam_sim*, %struct.cam_sim** %186, align 8
  %188 = load i32, i32* @FALSE, align 4
  %189 = call i32 @cam_sim_free(%struct.cam_sim* %187, i32 %188)
  %190 = load i32, i32* @ENOMEM, align 4
  store i32 %190, i32* %4, align 4
  br label %310

191:                                              ; preds = %110
  %192 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %193 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %191
  %199 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @snprintf(i8* %199, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %200)
  %202 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %203 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %204 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %203)
  %205 = load i32, i32* @OID_AUTO, align 4
  %206 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %207 = load i32, i32* @CTLFLAG_RW, align 4
  %208 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %202, i32 %204, i32 %205, i8* %206, i32 %207, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %208, %struct.sysctl_oid** %15, align 8
  br label %209

209:                                              ; preds = %198, %191
  %210 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %211 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %212 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %211)
  %213 = load i32, i32* @OID_AUTO, align 4
  %214 = load i32, i32* @CTLFLAG_RD, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 8
  %217 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %210, i32 %212, i32 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %214, i32* %216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %218 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %219 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %220 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %219)
  %221 = load i32, i32* @OID_AUTO, align 4
  %222 = load i32, i32* @CTLFLAG_RD, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 7
  %225 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %218, i32 %220, i32 %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %222, i32* %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %226 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %227 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %228 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %227)
  %229 = load i32, i32* @OID_AUTO, align 4
  %230 = load i32, i32* @CTLFLAG_RW, align 4
  %231 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %232 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %231, i32 0, i32 4
  %233 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %226, i32 %228, i32 %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %230, i32* %232, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %234 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %235 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %236 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %235)
  %237 = load i32, i32* @OID_AUTO, align 4
  %238 = load i32, i32* @CTLFLAG_RW, align 4
  %239 = load %struct.isp_fc*, %struct.isp_fc** %13, align 8
  %240 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %239, i32 0, i32 3
  %241 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %234, i32 %236, i32 %237, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %238, i32* %240, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %242 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %243 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %244 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %243)
  %245 = load i32, i32* @OID_AUTO, align 4
  %246 = load i32, i32* @CTLTYPE_INT, align 4
  %247 = load i32, i32* @CTLFLAG_RW, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @isp_role_sysctl, align 4
  %252 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %242, i32 %244, i32 %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %248, %struct.TYPE_17__* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %253 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %254 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %255 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %254)
  %256 = load i32, i32* @OID_AUTO, align 4
  %257 = load i32, i32* @CTLFLAG_RD, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 6
  %260 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %253, i32 %255, i32 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %257, i32* %259, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %261 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %262 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %263 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %262)
  %264 = load i32, i32* @OID_AUTO, align 4
  %265 = load i32, i32* @CTLFLAG_RD, align 4
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 5
  %268 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %261, i32 %263, i32 %264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %265, i32* %267, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %269 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %270 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %271 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %270)
  %272 = load i32, i32* @OID_AUTO, align 4
  %273 = load i32, i32* @CTLFLAG_RD, align 4
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 4
  %276 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %269, i32 %271, i32 %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %273, i32* %275, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %277 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %278 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %279 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %278)
  %280 = load i32, i32* @OID_AUTO, align 4
  %281 = load i32, i32* @CTLFLAG_RD, align 4
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 3
  %284 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %277, i32 %279, i32 %280, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %281, i32* %283, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %285 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %286 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %287 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %286)
  %288 = load i32, i32* @OID_AUTO, align 4
  %289 = load i32, i32* @CTLFLAG_RD, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  %292 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %285, i32 %287, i32 %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %289, i32* %291, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %293 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %294 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %295 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %294)
  %296 = load i32, i32* @OID_AUTO, align 4
  %297 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  %300 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %293, i32 %295, i32 %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %297, i32* %299, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  %301 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %302 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %303 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %302)
  %304 = load i32, i32* @OID_AUTO, align 4
  %305 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %301, i32 %303, i32 %304, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i32 %305, i32* %307, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  br label %309

309:                                              ; preds = %209, %100
  store i32 0, i32* %4, align 4
  br label %310

310:                                              ; preds = %309, %171, %66, %49, %36
  %311 = load i32, i32* %4, align 4
  ret i32 %311
}

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, %struct.TYPE_17__*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_17__*) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_19__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i64 @IS_SCSI(%struct.TYPE_17__*) #1

declare dso_local %struct.isp_spi* @ISP_SPI_PC(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_18__* @FCPARAM(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.isp_fc*) #1

declare dso_local i32 @isp_loop_changed(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @kproc_create(i32, %struct.isp_fc*, i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.TYPE_17__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
