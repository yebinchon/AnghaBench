; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.nvme_controller = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_15__, i8*, i8*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { %struct.ccb_trans_settings_nvme }
%struct.ccb_trans_settings_nvme = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_13__ = type { %struct.ccb_trans_settings_nvme }
%struct.TYPE_16__ = type { i32, i8*, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nvme_sim_action: func= %#x\0A\00", align 1
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@PIM_NOSCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NVMe\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_NVME = common dso_local global i8* null, align 8
@vs = common dso_local global i32 0, align 4
@PROTO_NVME = common dso_local global i8* null, align 8
@PCIER_LINK_STA = common dso_local global i32 0, align 4
@PCIER_LINK_CAP = common dso_local global i32 0, align 4
@PCIER_FLAGS = common dso_local global i32 0, align 4
@CTS_NVME_VALID_SPEC = common dso_local global i32 0, align 4
@PCIEM_FLAGS_TYPE = common dso_local global i32 0, align 4
@PCIEM_TYPE_ENDPOINT = common dso_local global i32 0, align 4
@CTS_NVME_VALID_LINK = common dso_local global i32 0, align 4
@PCIEM_LINK_STA_SPEED = common dso_local global i32 0, align 4
@PCIEM_LINK_STA_WIDTH = common dso_local global i32 0, align 4
@PCIEM_LINK_CAP_MAX_SPEED = common dso_local global i32 0, align 4
@PCIEM_LINK_CAP_MAX_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @nvme_sim_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_sim_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.nvme_controller*, align 8
  %6 = alloca %struct.ccb_pathinq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.ccb_trans_settings_nvme*, align 8
  %10 = alloca %struct.ccb_trans_settings_nvme*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_16__*
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_16__*
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @CAM_DEBUG(i32 %18, i32 %19, i8* %25)
  %27 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %28 = call %struct.nvme_controller* @sim2ctrlr(%struct.cam_sim* %27)
  store %struct.nvme_controller* %28, %struct.nvme_controller** %5, align 8
  %29 = load %union.ccb*, %union.ccb** %4, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_16__*
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %252 [
    i32 136, label %33
    i32 137, label %33
    i32 129, label %38
    i32 132, label %43
    i32 135, label %163
    i32 128, label %243
    i32 130, label %243
    i32 131, label %243
    i32 133, label %248
    i32 134, label %248
  ]

33:                                               ; preds = %2, %2
  %34 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_16__*
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  br label %257

38:                                               ; preds = %2
  %39 = load i8*, i8** @CAM_REQ_CMP, align 8
  %40 = load %union.ccb*, %union.ccb** %4, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_16__*
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  br label %257

43:                                               ; preds = %2
  %44 = load %union.ccb*, %union.ccb** %4, align 8
  %45 = bitcast %union.ccb* %44 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %45, %struct.ccb_pathinq** %6, align 8
  %46 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %47 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %52 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %51, i32 0, i32 20
  store i32 0, i32* %52, align 8
  %53 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %54 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %53, i32 0, i32 19
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @PIM_UNMAPPED, align 4
  %56 = load i32, i32* @PIM_NOSCAN, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %59 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %61 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %60, i32 0, i32 18
  store i32 0, i32* %61, align 8
  %62 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %63 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %62, i32 0, i32 17
  store i32 0, i32* %63, align 4
  %64 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %65 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %69 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %68, i32 0, i32 16
  store i32 %67, i32* %69, align 8
  %70 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %71 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %74 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %73, i32 0, i32 15
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %76 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %75, i32 0, i32 14
  store i32 0, i32* %76, align 8
  %77 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %78 = call i32 @cam_sim_bus(%struct.cam_sim* %77)
  %79 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %80 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %82 = call i32 @nvme_link_kBps(%struct.nvme_controller* %81)
  %83 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %84 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %83, i32 0, i32 12
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %86 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SIM_IDLEN, align 4
  %89 = call i32 @strlcpy(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %91 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @HBA_IDLEN, align 4
  %94 = call i32 @strlcpy(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %96 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %99 = call i8* @cam_sim_name(%struct.cam_sim* %98)
  %100 = load i32, i32* @DEV_IDLEN, align 4
  %101 = call i32 @strlcpy(i32 %97, i8* %99, i32 %100)
  %102 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %103 = call i32 @cam_sim_unit(%struct.cam_sim* %102)
  %104 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %105 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load i8*, i8** @XPORT_NVME, align 8
  %107 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %108 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %110 = load i32, i32* @vs, align 4
  %111 = call i8* @nvme_mmio_read_4(%struct.nvme_controller* %109, i32 %110)
  %112 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %113 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @PROTO_NVME, align 8
  %115 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %116 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %118 = load i32, i32* @vs, align 4
  %119 = call i8* @nvme_mmio_read_4(%struct.nvme_controller* %117, i32 %118)
  %120 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %121 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load %union.ccb*, %union.ccb** %4, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_16__*
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @xpt_path_lun_id(i32 %125)
  %127 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %128 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 5
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @pci_get_domain(i32 %131)
  %133 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %134 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  store i32 %132, i32* %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @pci_get_bus(i32 %137)
  %139 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %140 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  store i32 %138, i32* %142, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @pci_get_slot(i32 %143)
  %145 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %146 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  store i32 %144, i32* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @pci_get_function(i32 %149)
  %151 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %152 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %156 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = load i8*, i8** @CAM_REQ_CMP, align 8
  %160 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %161 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  br label %257

163:                                              ; preds = %2
  %164 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %165 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %11, align 4
  %167 = load %union.ccb*, %union.ccb** %4, align 8
  %168 = bitcast %union.ccb* %167 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %168, %struct.ccb_trans_settings** %8, align 8
  %169 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %170 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store %struct.ccb_trans_settings_nvme* %171, %struct.ccb_trans_settings_nvme** %10, align 8
  %172 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %173 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  store %struct.ccb_trans_settings_nvme* %174, %struct.ccb_trans_settings_nvme** %9, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @PCIER_LINK_STA, align 4
  %177 = call i32 @pcie_read_config(i32 %175, i32 %176, i32 2)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @PCIER_LINK_CAP, align 4
  %180 = call i32 @pcie_read_config(i32 %178, i32 %179, i32 2)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @PCIER_FLAGS, align 4
  %183 = call i32 @pcie_read_config(i32 %181, i32 %182, i32 2)
  store i32 %183, i32* %14, align 4
  %184 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %185 = load i32, i32* @vs, align 4
  %186 = call i8* @nvme_mmio_read_4(%struct.nvme_controller* %184, i32 %185)
  %187 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %188 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* @CTS_NVME_VALID_SPEC, align 4
  %190 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %191 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @PCIEM_FLAGS_TYPE, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @PCIEM_TYPE_ENDPOINT, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %225

197:                                              ; preds = %163
  %198 = load i32, i32* @CTS_NVME_VALID_LINK, align 4
  %199 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %200 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @PCIEM_LINK_STA_SPEED, align 4
  %205 = and i32 %203, %204
  %206 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %207 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* @PCIEM_LINK_STA_WIDTH, align 4
  %210 = and i32 %208, %209
  %211 = ashr i32 %210, 4
  %212 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %213 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* @PCIEM_LINK_CAP_MAX_SPEED, align 4
  %216 = and i32 %214, %215
  %217 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %218 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* @PCIEM_LINK_CAP_MAX_WIDTH, align 4
  %221 = and i32 %219, %220
  %222 = ashr i32 %221, 4
  %223 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %224 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %197, %163
  %226 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %9, align 8
  %227 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  %228 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %10, align 8
  %229 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %228, i32 0, i32 5
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.ccb_trans_settings_nvme*, %struct.ccb_trans_settings_nvme** %9, align 8
  %232 = getelementptr inbounds %struct.ccb_trans_settings_nvme, %struct.ccb_trans_settings_nvme* %231, i32 0, i32 5
  store i8* %230, i8** %232, align 8
  %233 = load i8*, i8** @XPORT_NVME, align 8
  %234 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %235 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  %236 = load i8*, i8** @PROTO_NVME, align 8
  %237 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %238 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  %239 = load i8*, i8** @CAM_REQ_CMP, align 8
  %240 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %241 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  store i8* %239, i8** %242, align 8
  br label %257

243:                                              ; preds = %2, %2, %2
  %244 = load i8*, i8** @CAM_REQ_CMP, align 8
  %245 = load %union.ccb*, %union.ccb** %4, align 8
  %246 = bitcast %union.ccb* %245 to %struct.TYPE_16__*
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  store i8* %244, i8** %247, align 8
  br label %257

248:                                              ; preds = %2, %2
  %249 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %250 = load %union.ccb*, %union.ccb** %4, align 8
  %251 = call i32 @nvme_sim_nvmeio(%struct.cam_sim* %249, %union.ccb* %250)
  br label %260

252:                                              ; preds = %2
  %253 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %254 = load %union.ccb*, %union.ccb** %4, align 8
  %255 = bitcast %union.ccb* %254 to %struct.TYPE_16__*
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  store i8* %253, i8** %256, align 8
  br label %257

257:                                              ; preds = %252, %243, %225, %43, %38, %33
  %258 = load %union.ccb*, %union.ccb** %4, align 8
  %259 = call i32 @xpt_done(%union.ccb* %258)
  br label %260

260:                                              ; preds = %257, %248
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %struct.nvme_controller* @sim2ctrlr(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @nvme_link_kBps(%struct.nvme_controller*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i8* @nvme_mmio_read_4(%struct.nvme_controller*, i32) #1

declare dso_local i32 @xpt_path_lun_id(i32) #1

declare dso_local i32 @pci_get_domain(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pcie_read_config(i32, i32, i32) #1

declare dso_local i32 @nvme_sim_nvmeio(%struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
