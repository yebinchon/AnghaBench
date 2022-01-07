; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_end_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_slot = type { i32, %union.ccb*, i32, %struct.TYPE_8__, %struct.fsl_sata_channel* }
%union.ccb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__, i8*, %struct.ata_res }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ata_res = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.fsl_sata_channel = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_13__*, i32, %union.ccb*, i64, i32, %union.ccb**, i32*, i32, i32, i32*, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.fsl_sata_cmd_list = type { i32 }
%struct.fsl_sata_cmd_tab = type { i8** }
%struct.TYPE_12__ = type { i64, i32, i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i8*, i32, i8* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@FSL_SATA_P_SIG = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@CAM_ATA_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@FSL_SATA_SLOT_EMPTY = common dso_local global i32 0, align 4
@FSL_SATA_P_CCR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RECOVERY_READ_LOG = common dso_local global i64 0, align 8
@RECOVERY_REQUEST_SENSE = common dso_local global i64 0, align 8
@CAM_DIS_AUTOSENSE = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_PMREQ = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_slot*, i32)* @fsl_sata_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_end_transaction(%struct.fsl_sata_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_sata_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_sata_channel*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.fsl_sata_cmd_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_res*, align 8
  %11 = alloca %struct.fsl_sata_cmd_tab*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %union.ccb*, align 8
  store %struct.fsl_sata_slot* %0, %struct.fsl_sata_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %14, i32 0, i32 4
  %16 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %15, align 8
  store %struct.fsl_sata_channel* %16, %struct.fsl_sata_channel** %5, align 8
  %17 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %17, i32 0, i32 1
  %19 = load %union.ccb*, %union.ccb** %18, align 8
  store %union.ccb* %19, %union.ccb** %6, align 8
  %20 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %20, i32 0, i32 20
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %25 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %24, i32 0, i32 20
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %30)
  %32 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %33 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %34 = call %struct.fsl_sata_cmd_list* @FSL_SATA_CLP(%struct.fsl_sata_channel* %32, %struct.fsl_sata_slot* %33)
  store %struct.fsl_sata_cmd_list* %34, %struct.fsl_sata_cmd_list** %7, align 8
  %35 = load %union.ccb*, %union.ccb** %6, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_12__*
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XPT_ATA_IO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %199

41:                                               ; preds = %2
  %42 = load %union.ccb*, %union.ccb** %6, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_11__*
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store %struct.ata_res* %44, %struct.ata_res** %10, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load %union.ccb*, %union.ccb** %6, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_11__*
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %161

56:                                               ; preds = %47, %41
  %57 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %58 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %59 = call %struct.fsl_sata_cmd_tab* @FSL_SATA_CTP(%struct.fsl_sata_channel* %57, %struct.fsl_sata_slot* %58)
  store %struct.fsl_sata_cmd_tab* %59, %struct.fsl_sata_cmd_tab** %11, align 8
  %60 = load %struct.fsl_sata_cmd_tab*, %struct.fsl_sata_cmd_tab** %11, align 8
  %61 = getelementptr inbounds %struct.fsl_sata_cmd_tab, %struct.fsl_sata_cmd_tab* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  store i8** %62, i8*** %12, align 8
  %63 = load i8**, i8*** %12, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %67 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %66, i32 0, i32 10
  store i8* %65, i8** %67, align 8
  %68 = load i8**, i8*** %12, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %72 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load i8**, i8*** %12, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 4
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %78 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i8**, i8*** %12, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 5
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %84 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i8**, i8*** %12, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 6
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %90 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i8**, i8*** %12, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 7
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %95 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load i8**, i8*** %12, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 8
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %100 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load i8**, i8*** %12, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 9
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %105 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i8**, i8*** %12, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 10
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %110 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  %111 = load i8**, i8*** %12, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 12
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %116 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i8**, i8*** %12, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 13
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %121 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load %union.ccb*, %union.ccb** %6, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_11__*
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %56
  %131 = load %union.ccb*, %union.ccb** %6, align 8
  %132 = bitcast %union.ccb* %131 to %struct.TYPE_11__*
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ATA_A_RESET, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %130
  %140 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %141 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %140, i32 0, i32 18
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FSL_SATA_P_SIG, align 4
  %144 = call i32 @ATA_INL(i32 %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = ashr i32 %145, 24
  %147 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %148 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %9, align 4
  %150 = ashr i32 %149, 16
  %151 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %152 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %9, align 4
  %154 = ashr i32 %153, 8
  %155 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %156 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %159 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %139, %130, %56
  br label %164

161:                                              ; preds = %47
  %162 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %163 = call i32 @bzero(%struct.ata_res* %162, i32 72)
  br label %164

164:                                              ; preds = %161, %160
  %165 = load %union.ccb*, %union.ccb** %6, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_11__*
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %164
  %174 = load %union.ccb*, %union.ccb** %6, align 8
  %175 = bitcast %union.ccb* %174 to %struct.TYPE_12__*
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @CAM_DIR_MASK, align 4
  %179 = and i32 %177, %178
  %180 = load i32, i32* @CAM_DIR_NONE, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %173
  %183 = load %union.ccb*, %union.ccb** %6, align 8
  %184 = bitcast %union.ccb* %183 to %struct.TYPE_11__*
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.fsl_sata_cmd_list*, %struct.fsl_sata_cmd_list** %7, align 8
  %188 = getelementptr inbounds %struct.fsl_sata_cmd_list, %struct.fsl_sata_cmd_list* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @le32toh(i32 %189)
  %191 = ptrtoint i8* %186 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = inttoptr i64 %193 to i8*
  %195 = load %union.ccb*, %union.ccb** %6, align 8
  %196 = bitcast %union.ccb* %195 to %struct.TYPE_11__*
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  store i8* %194, i8** %197, align 8
  br label %198

198:                                              ; preds = %182, %173, %164
  br label %225

199:                                              ; preds = %2
  %200 = load %union.ccb*, %union.ccb** %6, align 8
  %201 = bitcast %union.ccb* %200 to %struct.TYPE_12__*
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @CAM_DIR_MASK, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @CAM_DIR_NONE, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %199
  %209 = load %union.ccb*, %union.ccb** %6, align 8
  %210 = bitcast %union.ccb* %209 to %struct.TYPE_9__*
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.fsl_sata_cmd_list*, %struct.fsl_sata_cmd_list** %7, align 8
  %214 = getelementptr inbounds %struct.fsl_sata_cmd_list, %struct.fsl_sata_cmd_list* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @le32toh(i32 %215)
  %217 = ptrtoint i8* %212 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = inttoptr i64 %219 to i8*
  %221 = load %union.ccb*, %union.ccb** %6, align 8
  %222 = bitcast %union.ccb* %221 to %struct.TYPE_9__*
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  store i8* %220, i8** %223, align 8
  br label %224

224:                                              ; preds = %208, %199
  br label %225

225:                                              ; preds = %224, %198
  %226 = load %union.ccb*, %union.ccb** %6, align 8
  %227 = bitcast %union.ccb* %226 to %struct.TYPE_12__*
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @CAM_DIR_MASK, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* @CAM_DIR_NONE, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %266

234:                                              ; preds = %225
  %235 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %236 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %235, i32 0, i32 20
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %240 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %union.ccb*, %union.ccb** %6, align 8
  %244 = bitcast %union.ccb* %243 to %struct.TYPE_12__*
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @CAM_DIR_IN, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %234
  %251 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %254

252:                                              ; preds = %234
  %253 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i32 [ %251, %250 ], [ %253, %252 ]
  %256 = call i32 @bus_dmamap_sync(i32 %238, i32 %242, i32 %255)
  %257 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %258 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %257, i32 0, i32 20
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %262 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @bus_dmamap_unload(i32 %260, i32 %264)
  br label %266

266:                                              ; preds = %254, %225
  %267 = load i32, i32* %4, align 4
  %268 = icmp ne i32 %267, 131
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %271 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = shl i32 1, %272
  %274 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %275 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  br label %278

278:                                              ; preds = %269, %266
  %279 = load i32, i32* %4, align 4
  %280 = icmp ne i32 %279, 131
  br i1 %280, label %281, label %306

281:                                              ; preds = %278
  %282 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %283 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %282, i32 0, i32 14
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %306, label %286

286:                                              ; preds = %281
  %287 = load %union.ccb*, %union.ccb** %6, align 8
  %288 = bitcast %union.ccb* %287 to %struct.TYPE_12__*
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %306, label %294

294:                                              ; preds = %286
  %295 = load %union.ccb*, %union.ccb** %6, align 8
  %296 = bitcast %union.ccb* %295 to %struct.TYPE_12__*
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @xpt_freeze_devq(i32 %298, i32 1)
  %300 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %301 = load %union.ccb*, %union.ccb** %6, align 8
  %302 = bitcast %union.ccb* %301 to %struct.TYPE_12__*
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %300
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %294, %286, %281, %278
  %307 = load i32, i32* @CAM_STATUS_MASK, align 4
  %308 = xor i32 %307, -1
  %309 = load %union.ccb*, %union.ccb** %6, align 8
  %310 = bitcast %union.ccb* %309 to %struct.TYPE_12__*
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, %308
  store i32 %313, i32* %311, align 4
  %314 = load i32, i32* %4, align 4
  switch i32 %314, label %438 [
    i32 131, label %315
    i32 133, label %334
    i32 134, label %343
    i32 129, label %350
    i32 132, label %350
    i32 130, label %376
    i32 128, label %408
  ]

315:                                              ; preds = %306
  %316 = load i32, i32* @CAM_REQ_CMP, align 4
  %317 = load %union.ccb*, %union.ccb** %6, align 8
  %318 = bitcast %union.ccb* %317 to %struct.TYPE_12__*
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %316
  store i32 %321, i32* %319, align 4
  %322 = load %union.ccb*, %union.ccb** %6, align 8
  %323 = bitcast %union.ccb* %322 to %struct.TYPE_12__*
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @XPT_SCSI_IO, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %333

328:                                              ; preds = %315
  %329 = load i32, i32* @SCSI_STATUS_OK, align 4
  %330 = load %union.ccb*, %union.ccb** %6, align 8
  %331 = bitcast %union.ccb* %330 to %struct.TYPE_9__*
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 1
  store i32 %329, i32* %332, align 8
  br label %333

333:                                              ; preds = %328, %315
  br label %447

334:                                              ; preds = %306
  %335 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %336 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %335, i32 0, i32 1
  store i32 1, i32* %336, align 4
  %337 = load i32, i32* @CAM_REQ_INVALID, align 4
  %338 = load %union.ccb*, %union.ccb** %6, align 8
  %339 = bitcast %union.ccb* %338 to %struct.TYPE_12__*
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %337
  store i32 %342, i32* %340, align 4
  br label %447

343:                                              ; preds = %306
  %344 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %345 = load %union.ccb*, %union.ccb** %6, align 8
  %346 = bitcast %union.ccb* %345 to %struct.TYPE_12__*
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %344
  store i32 %349, i32* %347, align 4
  br label %447

350:                                              ; preds = %306, %306
  %351 = load %union.ccb*, %union.ccb** %6, align 8
  %352 = bitcast %union.ccb* %351 to %struct.TYPE_12__*
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @XPT_SCSI_IO, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %368

357:                                              ; preds = %350
  %358 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %359 = load %union.ccb*, %union.ccb** %6, align 8
  %360 = bitcast %union.ccb* %359 to %struct.TYPE_12__*
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %358
  store i32 %363, i32* %361, align 4
  %364 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %365 = load %union.ccb*, %union.ccb** %6, align 8
  %366 = bitcast %union.ccb* %365 to %struct.TYPE_9__*
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 1
  store i32 %364, i32* %367, align 8
  br label %375

368:                                              ; preds = %350
  %369 = load i32, i32* @CAM_ATA_STATUS_ERROR, align 4
  %370 = load %union.ccb*, %union.ccb** %6, align 8
  %371 = bitcast %union.ccb* %370 to %struct.TYPE_12__*
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %369
  store i32 %374, i32* %372, align 4
  br label %375

375:                                              ; preds = %368, %357
  br label %447

376:                                              ; preds = %306
  %377 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %378 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %377, i32 0, i32 1
  store i32 1, i32* %378, align 4
  %379 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %380 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %379, i32 0, i32 14
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %401, label %383

383:                                              ; preds = %376
  %384 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %385 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %384, i32 0, i32 11
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @xpt_freeze_simq(i32 %386, i32 1)
  %388 = load i32, i32* @CAM_STATUS_MASK, align 4
  %389 = xor i32 %388, -1
  %390 = load %union.ccb*, %union.ccb** %6, align 8
  %391 = bitcast %union.ccb* %390 to %struct.TYPE_12__*
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, %389
  store i32 %394, i32* %392, align 4
  %395 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %396 = load %union.ccb*, %union.ccb** %6, align 8
  %397 = bitcast %union.ccb* %396 to %struct.TYPE_12__*
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %395
  store i32 %400, i32* %398, align 4
  br label %401

401:                                              ; preds = %383, %376
  %402 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %403 = load %union.ccb*, %union.ccb** %6, align 8
  %404 = bitcast %union.ccb* %403 to %struct.TYPE_12__*
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = or i32 %406, %402
  store i32 %407, i32* %405, align 4
  br label %447

408:                                              ; preds = %306
  %409 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %410 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %409, i32 0, i32 14
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %431, label %413

413:                                              ; preds = %408
  %414 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %415 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %414, i32 0, i32 11
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @xpt_freeze_simq(i32 %416, i32 1)
  %418 = load i32, i32* @CAM_STATUS_MASK, align 4
  %419 = xor i32 %418, -1
  %420 = load %union.ccb*, %union.ccb** %6, align 8
  %421 = bitcast %union.ccb* %420 to %struct.TYPE_12__*
  %422 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = and i32 %423, %419
  store i32 %424, i32* %422, align 4
  %425 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %426 = load %union.ccb*, %union.ccb** %6, align 8
  %427 = bitcast %union.ccb* %426 to %struct.TYPE_12__*
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = or i32 %429, %425
  store i32 %430, i32* %428, align 4
  br label %431

431:                                              ; preds = %413, %408
  %432 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %433 = load %union.ccb*, %union.ccb** %6, align 8
  %434 = bitcast %union.ccb* %433 to %struct.TYPE_12__*
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = or i32 %436, %432
  store i32 %437, i32* %435, align 4
  br label %447

438:                                              ; preds = %306
  %439 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %440 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %439, i32 0, i32 1
  store i32 1, i32* %440, align 4
  %441 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %442 = load %union.ccb*, %union.ccb** %6, align 8
  %443 = bitcast %union.ccb* %442 to %struct.TYPE_12__*
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = or i32 %445, %441
  store i32 %446, i32* %444, align 4
  br label %447

447:                                              ; preds = %438, %431, %401, %375, %343, %334, %333
  %448 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %449 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = shl i32 1, %450
  %452 = xor i32 %451, -1
  %453 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %454 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = and i32 %455, %452
  store i32 %456, i32* %454, align 8
  %457 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %458 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = shl i32 1, %459
  %461 = xor i32 %460, -1
  %462 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %463 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  %465 = and i32 %464, %461
  store i32 %465, i32* %463, align 4
  %466 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %467 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = shl i32 1, %468
  %470 = xor i32 %469, -1
  %471 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %472 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = and i32 %473, %470
  store i32 %474, i32* %472, align 8
  %475 = load i32, i32* @FSL_SATA_SLOT_EMPTY, align 4
  %476 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %477 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %476, i32 0, i32 2
  store i32 %475, i32* %477, align 8
  %478 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %479 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %478, i32 0, i32 1
  store %union.ccb* null, %union.ccb** %479, align 8
  %480 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %481 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %480, i32 0, i32 5
  %482 = load i64, i64* %481, align 8
  %483 = add nsw i64 %482, -1
  store i64 %483, i64* %481, align 8
  %484 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %485 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %484, i32 0, i32 19
  %486 = load i32*, i32** %485, align 8
  %487 = load %union.ccb*, %union.ccb** %6, align 8
  %488 = bitcast %union.ccb* %487 to %struct.TYPE_12__*
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = getelementptr inbounds i32, i32* %486, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = add nsw i32 %492, -1
  store i32 %493, i32* %491, align 4
  %494 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %495 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %494, i32 0, i32 18
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* @FSL_SATA_P_CCR, align 4
  %498 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %499 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = shl i32 1, %500
  %502 = call i32 @ATA_OUTL(i32 %496, i32 %497, i32 %501)
  %503 = load %union.ccb*, %union.ccb** %6, align 8
  %504 = bitcast %union.ccb* %503 to %struct.TYPE_12__*
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @XPT_ATA_IO, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %533

509:                                              ; preds = %447
  %510 = load %union.ccb*, %union.ccb** %6, align 8
  %511 = bitcast %union.ccb* %510 to %struct.TYPE_11__*
  %512 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %533

518:                                              ; preds = %509
  %519 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %520 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %519, i32 0, i32 17
  %521 = load i32, i32* %520, align 8
  %522 = add nsw i32 %521, -1
  store i32 %522, i32* %520, align 8
  %523 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %524 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %523, i32 0, i32 16
  %525 = load i32*, i32** %524, align 8
  %526 = load %union.ccb*, %union.ccb** %6, align 8
  %527 = bitcast %union.ccb* %526 to %struct.TYPE_12__*
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 3
  %529 = load i64, i64* %528, align 8
  %530 = getelementptr inbounds i32, i32* %525, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = add nsw i32 %531, -1
  store i32 %532, i32* %530, align 4
  br label %533

533:                                              ; preds = %518, %509, %447
  %534 = load i32, i32* %4, align 4
  %535 = icmp ne i32 %534, 128
  br i1 %535, label %536, label %564

536:                                              ; preds = %533
  %537 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %538 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %537, i32 0, i32 6
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %541 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = shl i32 1, %542
  %544 = icmp eq i32 %539, %543
  %545 = zext i1 %544 to i32
  store i32 %545, i32* %8, align 4
  %546 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %547 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = shl i32 1, %548
  %550 = xor i32 %549, -1
  %551 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %552 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %551, i32 0, i32 6
  %553 = load i32, i32* %552, align 8
  %554 = and i32 %553, %550
  store i32 %554, i32* %552, align 8
  %555 = load i32, i32* %8, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %563

557:                                              ; preds = %536
  %558 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %559 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %558, i32 0, i32 11
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* @TRUE, align 4
  %562 = call i32 @xpt_release_simq(i32 %560, i32 %561)
  br label %563

563:                                              ; preds = %557, %536
  br label %564

564:                                              ; preds = %563, %533
  %565 = load %union.ccb*, %union.ccb** %6, align 8
  %566 = bitcast %union.ccb* %565 to %struct.TYPE_12__*
  %567 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = load i64, i64* @XPT_ATA_IO, align 8
  %570 = icmp eq i64 %568, %569
  br i1 %570, label %571, label %604

571:                                              ; preds = %564
  %572 = load %union.ccb*, %union.ccb** %6, align 8
  %573 = bitcast %union.ccb* %572 to %struct.TYPE_11__*
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %578 = and i32 %576, %577
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %604

580:                                              ; preds = %571
  %581 = load %union.ccb*, %union.ccb** %6, align 8
  %582 = bitcast %union.ccb* %581 to %struct.TYPE_11__*
  %583 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %582, i32 0, i32 1
  %584 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* @ATA_A_RESET, align 4
  %587 = and i32 %585, %586
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %604

589:                                              ; preds = %580
  %590 = load i32, i32* %4, align 4
  %591 = icmp eq i32 %590, 131
  br i1 %591, label %592, label %604

592:                                              ; preds = %589
  %593 = load i32, i32* @ATA_A_RESET, align 4
  %594 = xor i32 %593, -1
  %595 = load %union.ccb*, %union.ccb** %6, align 8
  %596 = bitcast %union.ccb* %595 to %struct.TYPE_11__*
  %597 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = and i32 %599, %594
  store i32 %600, i32* %598, align 4
  %601 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %602 = load %union.ccb*, %union.ccb** %6, align 8
  %603 = call i32 @fsl_sata_begin_transaction(%struct.fsl_sata_channel* %601, %union.ccb* %602)
  br label %795

604:                                              ; preds = %589, %580, %571, %564
  %605 = load %union.ccb*, %union.ccb** %6, align 8
  %606 = bitcast %union.ccb* %605 to %struct.TYPE_12__*
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 4
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @RECOVERY_READ_LOG, align 8
  %610 = icmp eq i64 %608, %609
  br i1 %610, label %611, label %615

611:                                              ; preds = %604
  %612 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %613 = load %union.ccb*, %union.ccb** %6, align 8
  %614 = call i32 @fsl_sata_process_read_log(%struct.fsl_sata_channel* %612, %union.ccb* %613)
  br label %666

615:                                              ; preds = %604
  %616 = load %union.ccb*, %union.ccb** %6, align 8
  %617 = bitcast %union.ccb* %616 to %struct.TYPE_12__*
  %618 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %617, i32 0, i32 4
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* @RECOVERY_REQUEST_SENSE, align 8
  %621 = icmp eq i64 %619, %620
  br i1 %621, label %622, label %626

622:                                              ; preds = %615
  %623 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %624 = load %union.ccb*, %union.ccb** %6, align 8
  %625 = call i32 @fsl_sata_process_request_sense(%struct.fsl_sata_channel* %623, %union.ccb* %624)
  br label %665

626:                                              ; preds = %615
  %627 = load i32, i32* %4, align 4
  %628 = icmp eq i32 %627, 132
  br i1 %628, label %646, label %629

629:                                              ; preds = %626
  %630 = load %union.ccb*, %union.ccb** %6, align 8
  %631 = bitcast %union.ccb* %630 to %struct.TYPE_12__*
  %632 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @CAM_STATUS_MASK, align 4
  %635 = and i32 %633, %634
  %636 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %637 = icmp eq i32 %635, %636
  br i1 %637, label %638, label %660

638:                                              ; preds = %629
  %639 = load %union.ccb*, %union.ccb** %6, align 8
  %640 = bitcast %union.ccb* %639 to %struct.TYPE_12__*
  %641 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 8
  %643 = load i32, i32* @CAM_DIS_AUTOSENSE, align 4
  %644 = and i32 %642, %643
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %660

646:                                              ; preds = %638, %626
  %647 = load %union.ccb*, %union.ccb** %6, align 8
  %648 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %649 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %648, i32 0, i32 15
  %650 = load %union.ccb**, %union.ccb*** %649, align 8
  %651 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %3, align 8
  %652 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 8
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %union.ccb*, %union.ccb** %650, i64 %654
  store %union.ccb* %647, %union.ccb** %655, align 8
  %656 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %657 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %656, i32 0, i32 13
  %658 = load i64, i64* %657, align 8
  %659 = add nsw i64 %658, 1
  store i64 %659, i64* %657, align 8
  br label %664

660:                                              ; preds = %638, %629
  %661 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %662 = load %union.ccb*, %union.ccb** %6, align 8
  %663 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %661, %union.ccb* %662)
  br label %664

664:                                              ; preds = %660, %646
  br label %665

665:                                              ; preds = %664, %622
  br label %666

666:                                              ; preds = %665, %611
  %667 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %668 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %667, i32 0, i32 3
  %669 = load i32, i32* %668, align 4
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %709

671:                                              ; preds = %666
  %672 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %673 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %672, i32 0, i32 6
  %674 = load i32, i32* %673, align 8
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %681, label %676

676:                                              ; preds = %671
  %677 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %678 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %684

681:                                              ; preds = %676, %671
  %682 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %683 = call i32 @fsl_sata_reset(%struct.fsl_sata_channel* %682)
  br label %708

684:                                              ; preds = %676
  %685 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %686 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 8
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %694

689:                                              ; preds = %684
  %690 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %691 = call i32 @fsl_sata_stop(%struct.fsl_sata_channel* %690)
  %692 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %693 = call i32 @fsl_sata_start(%struct.fsl_sata_channel* %692)
  br label %694

694:                                              ; preds = %689, %684
  %695 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %696 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %695, i32 0, i32 14
  %697 = load i32, i32* %696, align 8
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %707, label %699

699:                                              ; preds = %694
  %700 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %701 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %700, i32 0, i32 13
  %702 = load i64, i64* %701, align 8
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %707

704:                                              ; preds = %699
  %705 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %706 = call i32 @fsl_sata_issue_recovery(%struct.fsl_sata_channel* %705)
  br label %707

707:                                              ; preds = %704, %699, %694
  br label %708

708:                                              ; preds = %707, %681
  br label %726

709:                                              ; preds = %666
  %710 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %711 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %710, i32 0, i32 3
  %712 = load i32, i32* %711, align 4
  %713 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %714 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %713, i32 0, i32 6
  %715 = load i32, i32* %714, align 8
  %716 = xor i32 %715, -1
  %717 = and i32 %712, %716
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %725

719:                                              ; preds = %709
  %720 = load i32, i32* %4, align 4
  %721 = icmp ne i32 %720, 128
  br i1 %721, label %722, label %725

722:                                              ; preds = %719
  %723 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %724 = call i32 @fsl_sata_rearm_timeout(%struct.fsl_sata_channel* %723)
  br label %725

725:                                              ; preds = %722, %719, %709
  br label %726

726:                                              ; preds = %725, %708
  %727 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %728 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %727, i32 0, i32 12
  %729 = load %union.ccb*, %union.ccb** %728, align 8
  %730 = icmp ne %union.ccb* %729, null
  br i1 %730, label %731, label %752

731:                                              ; preds = %726
  %732 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %733 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %734 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %733, i32 0, i32 12
  %735 = load %union.ccb*, %union.ccb** %734, align 8
  %736 = call i32 @fsl_sata_check_collision(%struct.fsl_sata_channel* %732, %union.ccb* %735)
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %752, label %738

738:                                              ; preds = %731
  %739 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %740 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %739, i32 0, i32 12
  %741 = load %union.ccb*, %union.ccb** %740, align 8
  store %union.ccb* %741, %union.ccb** %13, align 8
  %742 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %743 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %742, i32 0, i32 12
  store %union.ccb* null, %union.ccb** %743, align 8
  %744 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %745 = load %union.ccb*, %union.ccb** %13, align 8
  %746 = call i32 @fsl_sata_begin_transaction(%struct.fsl_sata_channel* %744, %union.ccb* %745)
  %747 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %748 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %747, i32 0, i32 11
  %749 = load i32, i32* %748, align 8
  %750 = load i32, i32* @TRUE, align 4
  %751 = call i32 @xpt_release_simq(i32 %749, i32 %750)
  br label %752

752:                                              ; preds = %738, %731, %726
  %753 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %754 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %753, i32 0, i32 5
  %755 = load i64, i64* %754, align 8
  %756 = icmp eq i64 %755, 0
  br i1 %756, label %757, label %795

757:                                              ; preds = %752
  %758 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %759 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %758, i32 0, i32 7
  %760 = load i32, i32* %759, align 4
  %761 = icmp sgt i32 %760, 3
  br i1 %761, label %762, label %795

762:                                              ; preds = %757
  %763 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %764 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %763, i32 0, i32 10
  %765 = load %struct.TYPE_13__*, %struct.TYPE_13__** %764, align 8
  %766 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %767 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %766, i32 0, i32 9
  %768 = load i64, i64* %767, align 8
  %769 = icmp ne i64 %768, 0
  %770 = zext i1 %769 to i64
  %771 = select i1 %769, i32 15, i32 0
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %765, i64 %772
  %774 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %773, i32 0, i32 0
  %775 = load i32, i32* %774, align 4
  %776 = load i32, i32* @CTS_SATA_CAPS_D_PMREQ, align 4
  %777 = and i32 %775, %776
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %779, label %795

779:                                              ; preds = %762
  %780 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %781 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %780, i32 0, i32 8
  %782 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %783 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %782, i32 0, i32 7
  %784 = load i32, i32* %783, align 4
  %785 = icmp eq i32 %784, 4
  br i1 %785, label %786, label %789

786:                                              ; preds = %779
  %787 = load i32, i32* @hz, align 4
  %788 = sdiv i32 %787, 1000
  br label %792

789:                                              ; preds = %779
  %790 = load i32, i32* @hz, align 4
  %791 = sdiv i32 %790, 8
  br label %792

792:                                              ; preds = %789, %786
  %793 = phi i32 [ %788, %786 ], [ %791, %789 ]
  %794 = call i32 @callout_schedule(i32* %781, i32 %793)
  br label %795

795:                                              ; preds = %592, %792, %762, %757, %752
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local %struct.fsl_sata_cmd_list* @FSL_SATA_CLP(%struct.fsl_sata_channel*, %struct.fsl_sata_slot*) #1

declare dso_local %struct.fsl_sata_cmd_tab* @FSL_SATA_CTP(%struct.fsl_sata_channel*, %struct.fsl_sata_slot*) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @bzero(%struct.ata_res*, i32) #1

declare dso_local i8* @le32toh(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @fsl_sata_begin_transaction(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @fsl_sata_process_read_log(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @fsl_sata_process_request_sense(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @fsl_sata_reset(%struct.fsl_sata_channel*) #1

declare dso_local i32 @fsl_sata_stop(%struct.fsl_sata_channel*) #1

declare dso_local i32 @fsl_sata_start(%struct.fsl_sata_channel*) #1

declare dso_local i32 @fsl_sata_issue_recovery(%struct.fsl_sata_channel*) #1

declare dso_local i32 @fsl_sata_rearm_timeout(%struct.fsl_sata_channel*) #1

declare dso_local i32 @fsl_sata_check_collision(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
