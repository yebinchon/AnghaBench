; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.TYPE_4__, [56 x i8] }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i32 }
%struct.hpt_iop_hba = type { i32, i32, i32, i32, i32, i32 }
%struct.hpt_iop_srb = type { i32, %union.ccb* }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"srb allocated failed\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@hptiop_post_scsi_command = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%d bus_dmamap_load error %d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"reset adapter\00", align 1
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"HPT   \00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_2 = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @hptiop_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.hpt_iop_hba*, align 8
  %6 = alloca %struct.hpt_iop_srb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %10 = call i64 @cam_sim_softc(%struct.cam_sim* %9)
  %11 = inttoptr i64 %10 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %11, %struct.hpt_iop_hba** %5, align 8
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %191 [
    i32 129, label %16
    i32 130, label %104
    i32 132, label %113
    i32 128, label %113
    i32 133, label %118
    i32 131, label %122
  ]

16:                                               ; preds = %2
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %16
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %28 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CAM_CDB_PHYS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31, %22, %16
  %40 = load i8*, i8** @CAM_TID_INVALID, align 8
  %41 = load %union.ccb*, %union.ccb** %4, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load %union.ccb*, %union.ccb** %4, align 8
  %45 = call i32 @xpt_done(%union.ccb* %44)
  br label %199

46:                                               ; preds = %31
  %47 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %48 = call %struct.hpt_iop_srb* @hptiop_get_srb(%struct.hpt_iop_hba* %47)
  store %struct.hpt_iop_srb* %48, %struct.hpt_iop_srb** %6, align 8
  %49 = icmp eq %struct.hpt_iop_srb* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %52 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %56 = load %union.ccb*, %union.ccb** %4, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = call i32 @xpt_done(%union.ccb* %59)
  br label %199

61:                                               ; preds = %46
  %62 = load %union.ccb*, %union.ccb** %4, align 8
  %63 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %64 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %63, i32 0, i32 1
  store %union.ccb* %62, %union.ccb** %64, align 8
  %65 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %66 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %69 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %union.ccb*, %union.ccb** %4, align 8
  %72 = load i32, i32* @hptiop_post_scsi_command, align 4
  %73 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %74 = call i32 @bus_dmamap_load_ccb(i32 %67, i32 %70, %union.ccb* %71, i32 %72, %struct.hpt_iop_srb* %73, i32 0)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %61
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @EINPROGRESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %83 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %86 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %91 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @xpt_freeze_simq(i32 %92, i32 1)
  %94 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %95 = load %union.ccb*, %union.ccb** %4, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_4__*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  %98 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %99 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %100 = call i32 @hptiop_free_srb(%struct.hpt_iop_hba* %98, %struct.hpt_iop_srb* %99)
  %101 = load %union.ccb*, %union.ccb** %4, align 8
  %102 = call i32 @xpt_done(%union.ccb* %101)
  br label %199

103:                                              ; preds = %77, %61
  br label %199

104:                                              ; preds = %2
  %105 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %106 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %110 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %112 = call i32 @hptiop_reset_adapter(%struct.hpt_iop_hba* %111)
  br label %196

113:                                              ; preds = %2, %2
  %114 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %115 = load %union.ccb*, %union.ccb** %4, align 8
  %116 = bitcast %union.ccb* %115 to %struct.TYPE_4__*
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  br label %196

118:                                              ; preds = %2
  %119 = load %union.ccb*, %union.ccb** %4, align 8
  %120 = bitcast %union.ccb* %119 to i32*
  %121 = call i32 @cam_calc_geometry(i32* %120, i32 1)
  br label %196

122:                                              ; preds = %2
  %123 = load %union.ccb*, %union.ccb** %4, align 8
  %124 = bitcast %union.ccb* %123 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %124, %struct.ccb_pathinq** %8, align 8
  %125 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %126 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load i32, i32* @PI_SDTR_ABLE, align 4
  %128 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %129 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %128, i32 0, i32 18
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %131 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %130, i32 0, i32 17
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* @PIM_NOBUSRESET, align 4
  %133 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %134 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %133, i32 0, i32 16
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %136 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %135, i32 0, i32 15
  store i32 0, i32* %136, align 4
  %137 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %138 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %141 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %140, i32 0, i32 14
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %143 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %142, i32 0, i32 13
  store i32 0, i32* %143, align 4
  %144 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %145 = call i32 @cam_sim_unit(%struct.cam_sim* %144)
  %146 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %147 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %146, i32 0, i32 12
  store i32 %145, i32* %147, align 4
  %148 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %149 = call i32 @cam_sim_bus(%struct.cam_sim* %148)
  %150 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %151 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %150, i32 0, i32 11
  store i32 %149, i32* %151, align 4
  %152 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %153 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %156 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %158 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %157, i32 0, i32 1
  store i32 3300, i32* %158, align 4
  %159 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %160 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SIM_IDLEN, align 4
  %163 = call i32 @strlcpy(i32 %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %165 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @HBA_IDLEN, align 4
  %168 = call i32 @strlcpy(i32 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %170 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %173 = call i8* @cam_sim_name(%struct.cam_sim* %172)
  %174 = load i32, i32* @DEV_IDLEN, align 4
  %175 = call i32 @strlcpy(i32 %171, i8* %173, i32 %174)
  %176 = load i32, i32* @XPORT_SPI, align 4
  %177 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %178 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 4
  %179 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %180 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %179, i32 0, i32 2
  store i32 2, i32* %180, align 4
  %181 = load i32, i32* @PROTO_SCSI, align 4
  %182 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %183 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @SCSI_REV_2, align 4
  %185 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %186 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @CAM_REQ_CMP, align 4
  %188 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %189 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 4
  br label %196

191:                                              ; preds = %2
  %192 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %193 = load %union.ccb*, %union.ccb** %4, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_4__*
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  store i8* %192, i8** %195, align 8
  br label %196

196:                                              ; preds = %191, %122, %118, %113, %104
  %197 = load %union.ccb*, %union.ccb** %4, align 8
  %198 = call i32 @xpt_done(%union.ccb* %197)
  br label %199

199:                                              ; preds = %196, %103, %81, %50, %39
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %struct.hpt_iop_srb* @hptiop_get_srb(%struct.hpt_iop_hba*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.hpt_iop_srb*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @hptiop_free_srb(%struct.hpt_iop_hba*, %struct.hpt_iop_srb*) #1

declare dso_local i32 @hptiop_reset_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i32 @cam_calc_geometry(i32*, i32) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
