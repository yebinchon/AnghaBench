; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_6__, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.mfip_softc = type { %struct.mfi_softc* }
%struct.mfi_softc = type { i32, i32 }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ccb_trans_settings_sas = type { i32, i32 }
%struct.ccb_hdr = type { i32, i8*, %struct.mfip_softc* }
%struct.ccb_scsiio = type { i32 }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.ccb_trans_settings_sas }
%struct.TYPE_7__ = type { %struct.ccb_trans_settings_scsi }

@MA_OWNED = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@MFI_SCSI_MAX_TARGETS = common dso_local global i32 0, align 4
@MFI_SCSI_MAX_LUNS = common dso_local global i32 0, align 4
@MFI_SCSI_INITIATOR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"LSI\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SAS = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SAS_VALID_SPEED = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@CAM_REQ_INPROG = common dso_local global i8* null, align 8
@MFI_SCSI_MAX_CDB_LEN = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@sim_links = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @mfip_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfip_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mfip_softc*, align 8
  %6 = alloca %struct.mfi_softc*, align 8
  %7 = alloca %struct.ccb_pathinq*, align 8
  %8 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %9 = alloca %struct.ccb_trans_settings_sas*, align 8
  %10 = alloca %struct.ccb_hdr*, align 8
  %11 = alloca %struct.ccb_scsiio*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %12 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %13 = call %struct.mfip_softc* @cam_sim_softc(%struct.cam_sim* %12)
  store %struct.mfip_softc* %13, %struct.mfip_softc** %5, align 8
  %14 = load %struct.mfip_softc*, %struct.mfip_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %14, i32 0, i32 0
  %16 = load %struct.mfi_softc*, %struct.mfi_softc** %15, align 8
  store %struct.mfi_softc* %16, %struct.mfi_softc** %6, align 8
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %6, align 8
  %18 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %17, i32 0, i32 1
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @mtx_assert(i32* %18, i32 %19)
  %21 = load %union.ccb*, %union.ccb** %4, align 8
  %22 = bitcast %union.ccb* %21 to %struct.ccb_hdr*
  %23 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %180 [
    i32 132, label %25
    i32 131, label %95
    i32 130, label %100
    i32 133, label %105
    i32 128, label %147
    i32 129, label %152
  ]

25:                                               ; preds = %2
  %26 = load %union.ccb*, %union.ccb** %4, align 8
  %27 = bitcast %union.ccb* %26 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %27, %struct.ccb_pathinq** %7, align 8
  %28 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %29 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @PI_TAG_ABLE, align 4
  %31 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %32 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %31, i32 0, i32 18
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %34 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %33, i32 0, i32 17
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @PIM_NOBUSRESET, align 4
  %36 = load i32, i32* @PIM_SEQSCAN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PIM_UNMAPPED, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %43 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %42, i32 0, i32 16
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @MFI_SCSI_MAX_TARGETS, align 4
  %45 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %46 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %45, i32 0, i32 15
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @MFI_SCSI_MAX_LUNS, align 4
  %48 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %49 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %48, i32 0, i32 14
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MFI_SCSI_INITIATOR_ID, align 4
  %51 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %52 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %54 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SIM_IDLEN, align 4
  %57 = call i32 @strlcpy(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %59 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HBA_IDLEN, align 4
  %62 = call i32 @strlcpy(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %64 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %67 = call i8* @cam_sim_name(%struct.cam_sim* %66)
  %68 = load i32, i32* @DEV_IDLEN, align 4
  %69 = call i32 @strlcpy(i32 %65, i8* %67, i32 %68)
  %70 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %71 = call i32 @cam_sim_unit(%struct.cam_sim* %70)
  %72 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %73 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 4
  %74 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %75 = call i32 @cam_sim_bus(%struct.cam_sim* %74)
  %76 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %77 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %79 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %78, i32 0, i32 2
  store i32 150000, i32* %79, align 8
  %80 = load i8*, i8** @XPORT_SAS, align 8
  %81 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %82 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %84 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %83, i32 0, i32 6
  store i32 0, i32* %84, align 8
  %85 = load i8*, i8** @PROTO_SCSI, align 8
  %86 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %87 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @SCSI_REV_2, align 8
  %89 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %90 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @CAM_REQ_CMP, align 8
  %92 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %7, align 8
  %93 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %185

95:                                               ; preds = %2
  %96 = load i8*, i8** @CAM_REQ_CMP, align 8
  %97 = load %union.ccb*, %union.ccb** %4, align 8
  %98 = bitcast %union.ccb* %97 to %struct.ccb_hdr*
  %99 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  br label %185

100:                                              ; preds = %2
  %101 = load i8*, i8** @CAM_REQ_CMP, align 8
  %102 = load %union.ccb*, %union.ccb** %4, align 8
  %103 = bitcast %union.ccb* %102 to %struct.ccb_hdr*
  %104 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  br label %185

105:                                              ; preds = %2
  %106 = load %union.ccb*, %union.ccb** %4, align 8
  %107 = bitcast %union.ccb* %106 to %struct.TYPE_9__*
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %109, %struct.ccb_trans_settings_scsi** %8, align 8
  %110 = load %union.ccb*, %union.ccb** %4, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_9__*
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store %struct.ccb_trans_settings_sas* %113, %struct.ccb_trans_settings_sas** %9, align 8
  %114 = load i8*, i8** @PROTO_SCSI, align 8
  %115 = load %union.ccb*, %union.ccb** %4, align 8
  %116 = bitcast %union.ccb* %115 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  store i8* %114, i8** %117, align 8
  %118 = load i8*, i8** @SCSI_REV_2, align 8
  %119 = load %union.ccb*, %union.ccb** %4, align 8
  %120 = bitcast %union.ccb* %119 to %struct.TYPE_9__*
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store i8* %118, i8** %121, align 8
  %122 = load i8*, i8** @XPORT_SAS, align 8
  %123 = load %union.ccb*, %union.ccb** %4, align 8
  %124 = bitcast %union.ccb* %123 to %struct.TYPE_9__*
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load %union.ccb*, %union.ccb** %4, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_9__*
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %130 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %8, align 8
  %131 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %133 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %8, align 8
  %134 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @CTS_SAS_VALID_SPEED, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %9, align 8
  %138 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.ccb_trans_settings_sas*, %struct.ccb_trans_settings_sas** %9, align 8
  %142 = getelementptr inbounds %struct.ccb_trans_settings_sas, %struct.ccb_trans_settings_sas* %141, i32 0, i32 0
  store i32 150000, i32* %142, align 4
  %143 = load i8*, i8** @CAM_REQ_CMP, align 8
  %144 = load %union.ccb*, %union.ccb** %4, align 8
  %145 = bitcast %union.ccb* %144 to %struct.ccb_hdr*
  %146 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  br label %185

147:                                              ; preds = %2
  %148 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %149 = load %union.ccb*, %union.ccb** %4, align 8
  %150 = bitcast %union.ccb* %149 to %struct.ccb_hdr*
  %151 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  br label %185

152:                                              ; preds = %2
  %153 = load %union.ccb*, %union.ccb** %4, align 8
  %154 = bitcast %union.ccb* %153 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %154, %struct.ccb_hdr** %10, align 8
  %155 = load %union.ccb*, %union.ccb** %4, align 8
  %156 = bitcast %union.ccb* %155 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %156, %struct.ccb_scsiio** %11, align 8
  %157 = load i8*, i8** @CAM_REQ_INPROG, align 8
  %158 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %159 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %161 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @MFI_SCSI_MAX_CDB_LEN, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %152
  %166 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %167 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %168 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  br label %185

169:                                              ; preds = %152
  %170 = load %struct.mfip_softc*, %struct.mfip_softc** %5, align 8
  %171 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %172 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %171, i32 0, i32 2
  store %struct.mfip_softc* %170, %struct.mfip_softc** %172, align 8
  %173 = load %struct.mfi_softc*, %struct.mfi_softc** %6, align 8
  %174 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %173, i32 0, i32 0
  %175 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %177 = call i32 @TAILQ_INSERT_TAIL(i32* %174, %struct.ccb_hdr* %175, i32 %176)
  %178 = load %struct.mfi_softc*, %struct.mfi_softc** %6, align 8
  %179 = call i32 @mfi_startio(%struct.mfi_softc* %178)
  br label %188

180:                                              ; preds = %2
  %181 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %182 = load %union.ccb*, %union.ccb** %4, align 8
  %183 = bitcast %union.ccb* %182 to %struct.ccb_hdr*
  %184 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %183, i32 0, i32 1
  store i8* %181, i8** %184, align 8
  br label %185

185:                                              ; preds = %180, %165, %147, %105, %100, %95, %25
  %186 = load %union.ccb*, %union.ccb** %4, align 8
  %187 = call i32 @xpt_done(%union.ccb* %186)
  br label %188

188:                                              ; preds = %185, %169
  ret void
}

declare dso_local %struct.mfip_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @mfi_startio(%struct.mfi_softc*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
