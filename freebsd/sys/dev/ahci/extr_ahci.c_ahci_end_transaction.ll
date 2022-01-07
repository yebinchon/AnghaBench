; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_end_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_slot = type { i32, %union.ccb*, i32, %struct.TYPE_9__, %struct.ahci_channel* }
%union.ccb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__, i8*, %struct.ata_res }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ata_res = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.ahci_channel = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_14__*, i32, %union.ccb*, i64, i32, %union.ccb**, i32*, i32, i32*, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { i8**, i32, i32, i32, i64, i32, i32 }
%struct.ahci_cmd_list = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i8*, i32, i8* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@AHCI_CL_OFFSET = common dso_local global i64 0, align 8
@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@AHCI_P_TFD = common dso_local global i32 0, align 4
@AHCI_Q_ALTSIG = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@AHCI_P_SIG = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AHCI_Q_NOCOUNT = common dso_local global i32 0, align 4
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
@AHCI_SLOT_EMPTY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RECOVERY_READ_LOG = common dso_local global i64 0, align 8
@RECOVERY_REQUEST_SENSE = common dso_local global i64 0, align 8
@CAM_DIS_AUTOSENSE = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_PMREQ = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_slot*, i32)* @ahci_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_end_transaction(%struct.ahci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.ahci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_channel*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.ahci_cmd_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_res*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.ccb*, align 8
  store %struct.ahci_slot* %0, %struct.ahci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %15 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %14, i32 0, i32 4
  %16 = load %struct.ahci_channel*, %struct.ahci_channel** %15, align 8
  store %struct.ahci_channel* %16, %struct.ahci_channel** %5, align 8
  %17 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %18 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %17, i32 0, i32 1
  %19 = load %union.ccb*, %union.ccb** %18, align 8
  store %union.ccb* %19, %union.ccb** %6, align 8
  %20 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %20, i32 0, i32 20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %25 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %24, i32 0, i32 20
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %30)
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %33 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %32, i32 0, i32 20
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AHCI_CL_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @AHCI_CL_SIZE, align 4
  %39 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %40 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = inttoptr i64 %44 to %struct.ahci_cmd_list*
  store %struct.ahci_cmd_list* %45, %struct.ahci_cmd_list** %7, align 8
  %46 = load %union.ccb*, %union.ccb** %6, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_13__*
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XPT_ATA_IO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %262

52:                                               ; preds = %2
  %53 = load %union.ccb*, %union.ccb** %6, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_12__*
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store %struct.ata_res* %55, %struct.ata_res** %10, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load %union.ccb*, %union.ccb** %6, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_12__*
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %217

67:                                               ; preds = %58, %52
  %68 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %69 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %68, i32 0, i32 20
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 64
  store i8** %72, i8*** %11, align 8
  %73 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %74 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %73, i32 0, i32 20
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %78 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %77, i32 0, i32 20
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %76, i32 %80, i32 %81)
  %83 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %84 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %83, i32 0, i32 22
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %67
  %88 = load %union.ccb*, %union.ccb** %6, align 8
  %89 = bitcast %union.ccb* %88 to %struct.TYPE_13__*
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 256
  %93 = load i8**, i8*** %11, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8** %95, i8*** %11, align 8
  %96 = load i8**, i8*** %11, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %101 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i8**, i8*** %11, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 3
  %104 = load i8*, i8** %103, align 8
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %107 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %121

108:                                              ; preds = %67
  %109 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %110 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %109, i32 0, i32 21
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @AHCI_P_TFD, align 4
  %113 = call i32 @ATA_INL(i32 %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %116 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = ashr i32 %117, 8
  %119 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %120 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %108, %87
  %122 = load i8**, i8*** %11, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 4
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %127 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i8**, i8*** %11, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 5
  %130 = load i8*, i8** %129, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %133 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i8**, i8*** %11, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 6
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %139 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load i8**, i8*** %11, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 7
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %144 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %143, i32 0, i32 10
  store i8* %142, i8** %144, align 8
  %145 = load i8**, i8*** %11, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 8
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %149 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %148, i32 0, i32 9
  store i8* %147, i8** %149, align 8
  %150 = load i8**, i8*** %11, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 9
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %154 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %153, i32 0, i32 8
  store i8* %152, i8** %154, align 8
  %155 = load i8**, i8*** %11, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 10
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %159 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %158, i32 0, i32 7
  store i8* %157, i8** %159, align 8
  %160 = load i8**, i8*** %11, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 12
  %162 = load i8*, i8** %161, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %165 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 4
  %166 = load i8**, i8*** %11, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 13
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %170 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %169, i32 0, i32 6
  store i8* %168, i8** %170, align 8
  %171 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %172 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @AHCI_Q_ALTSIG, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %216

177:                                              ; preds = %121
  %178 = load %union.ccb*, %union.ccb** %6, align 8
  %179 = bitcast %union.ccb* %178 to %struct.TYPE_12__*
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %216

186:                                              ; preds = %177
  %187 = load %union.ccb*, %union.ccb** %6, align 8
  %188 = bitcast %union.ccb* %187 to %struct.TYPE_12__*
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ATA_A_RESET, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %186
  %196 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %197 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %196, i32 0, i32 21
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @AHCI_P_SIG, align 4
  %200 = call i32 @ATA_INL(i32 %198, i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = ashr i32 %201, 24
  %203 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %204 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %9, align 4
  %206 = ashr i32 %205, 16
  %207 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %208 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %9, align 4
  %210 = ashr i32 %209, 8
  %211 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %212 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %215 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %195, %186, %177, %121
  br label %220

217:                                              ; preds = %58
  %218 = load %struct.ata_res*, %struct.ata_res** %10, align 8
  %219 = call i32 @bzero(%struct.ata_res* %218, i32 64)
  br label %220

220:                                              ; preds = %217, %216
  %221 = load %union.ccb*, %union.ccb** %6, align 8
  %222 = bitcast %union.ccb* %221 to %struct.TYPE_12__*
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %227 = and i32 %225, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %261

229:                                              ; preds = %220
  %230 = load %union.ccb*, %union.ccb** %6, align 8
  %231 = bitcast %union.ccb* %230 to %struct.TYPE_13__*
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @CAM_DIR_MASK, align 4
  %235 = and i32 %233, %234
  %236 = load i32, i32* @CAM_DIR_NONE, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %229
  %239 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %240 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @AHCI_Q_NOCOUNT, align 4
  %243 = and i32 %241, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %238
  %246 = load %union.ccb*, %union.ccb** %6, align 8
  %247 = bitcast %union.ccb* %246 to %struct.TYPE_12__*
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.ahci_cmd_list*, %struct.ahci_cmd_list** %7, align 8
  %251 = getelementptr inbounds %struct.ahci_cmd_list, %struct.ahci_cmd_list* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i8* @le32toh(i32 %252)
  %254 = ptrtoint i8* %249 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = inttoptr i64 %256 to i8*
  %258 = load %union.ccb*, %union.ccb** %6, align 8
  %259 = bitcast %union.ccb* %258 to %struct.TYPE_12__*
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 2
  store i8* %257, i8** %260, align 8
  br label %261

261:                                              ; preds = %245, %238, %229, %220
  br label %295

262:                                              ; preds = %2
  %263 = load %union.ccb*, %union.ccb** %6, align 8
  %264 = bitcast %union.ccb* %263 to %struct.TYPE_13__*
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @CAM_DIR_MASK, align 4
  %268 = and i32 %266, %267
  %269 = load i32, i32* @CAM_DIR_NONE, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %294

271:                                              ; preds = %262
  %272 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %273 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @AHCI_Q_NOCOUNT, align 4
  %276 = and i32 %274, %275
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %294

278:                                              ; preds = %271
  %279 = load %union.ccb*, %union.ccb** %6, align 8
  %280 = bitcast %union.ccb* %279 to %struct.TYPE_10__*
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.ahci_cmd_list*, %struct.ahci_cmd_list** %7, align 8
  %284 = getelementptr inbounds %struct.ahci_cmd_list, %struct.ahci_cmd_list* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i8* @le32toh(i32 %285)
  %287 = ptrtoint i8* %282 to i64
  %288 = ptrtoint i8* %286 to i64
  %289 = sub i64 %287, %288
  %290 = inttoptr i64 %289 to i8*
  %291 = load %union.ccb*, %union.ccb** %6, align 8
  %292 = bitcast %union.ccb* %291 to %struct.TYPE_10__*
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  store i8* %290, i8** %293, align 8
  br label %294

294:                                              ; preds = %278, %271, %262
  br label %295

295:                                              ; preds = %294, %261
  %296 = load %union.ccb*, %union.ccb** %6, align 8
  %297 = bitcast %union.ccb* %296 to %struct.TYPE_13__*
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @CAM_DIR_MASK, align 4
  %301 = and i32 %299, %300
  %302 = load i32, i32* @CAM_DIR_NONE, align 4
  %303 = icmp ne i32 %301, %302
  br i1 %303, label %304, label %336

304:                                              ; preds = %295
  %305 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %306 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %305, i32 0, i32 20
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %310 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %union.ccb*, %union.ccb** %6, align 8
  %314 = bitcast %union.ccb* %313 to %struct.TYPE_13__*
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @CAM_DIR_IN, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %304
  %321 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %324

322:                                              ; preds = %304
  %323 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i32 [ %321, %320 ], [ %323, %322 ]
  %326 = call i32 @bus_dmamap_sync(i32 %308, i32 %312, i32 %325)
  %327 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %328 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %327, i32 0, i32 20
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %332 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @bus_dmamap_unload(i32 %330, i32 %334)
  br label %336

336:                                              ; preds = %324, %295
  %337 = load i32, i32* %4, align 4
  %338 = icmp ne i32 %337, 131
  br i1 %338, label %339, label %348

339:                                              ; preds = %336
  %340 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %341 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = shl i32 1, %342
  %344 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %345 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %339, %336
  %349 = load i32, i32* %4, align 4
  %350 = icmp ne i32 %349, 131
  br i1 %350, label %351, label %376

351:                                              ; preds = %348
  %352 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %353 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %352, i32 0, i32 15
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %376, label %356

356:                                              ; preds = %351
  %357 = load %union.ccb*, %union.ccb** %6, align 8
  %358 = bitcast %union.ccb* %357 to %struct.TYPE_13__*
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %376, label %364

364:                                              ; preds = %356
  %365 = load %union.ccb*, %union.ccb** %6, align 8
  %366 = bitcast %union.ccb* %365 to %struct.TYPE_13__*
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 5
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @xpt_freeze_devq(i32 %368, i32 1)
  %370 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %371 = load %union.ccb*, %union.ccb** %6, align 8
  %372 = bitcast %union.ccb* %371 to %struct.TYPE_13__*
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = or i32 %374, %370
  store i32 %375, i32* %373, align 8
  br label %376

376:                                              ; preds = %364, %356, %351, %348
  %377 = load i32, i32* @CAM_STATUS_MASK, align 4
  %378 = xor i32 %377, -1
  %379 = load %union.ccb*, %union.ccb** %6, align 8
  %380 = bitcast %union.ccb* %379 to %struct.TYPE_13__*
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = and i32 %382, %378
  store i32 %383, i32* %381, align 8
  %384 = load i32, i32* %4, align 4
  switch i32 %384, label %508 [
    i32 131, label %385
    i32 133, label %404
    i32 134, label %413
    i32 129, label %420
    i32 132, label %420
    i32 130, label %446
    i32 128, label %478
  ]

385:                                              ; preds = %376
  %386 = load i32, i32* @CAM_REQ_CMP, align 4
  %387 = load %union.ccb*, %union.ccb** %6, align 8
  %388 = bitcast %union.ccb* %387 to %struct.TYPE_13__*
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = or i32 %390, %386
  store i32 %391, i32* %389, align 8
  %392 = load %union.ccb*, %union.ccb** %6, align 8
  %393 = bitcast %union.ccb* %392 to %struct.TYPE_13__*
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @XPT_SCSI_IO, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %403

398:                                              ; preds = %385
  %399 = load i32, i32* @SCSI_STATUS_OK, align 4
  %400 = load %union.ccb*, %union.ccb** %6, align 8
  %401 = bitcast %union.ccb* %400 to %struct.TYPE_10__*
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 1
  store i32 %399, i32* %402, align 8
  br label %403

403:                                              ; preds = %398, %385
  br label %517

404:                                              ; preds = %376
  %405 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %406 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %405, i32 0, i32 2
  store i32 1, i32* %406, align 8
  %407 = load i32, i32* @CAM_REQ_INVALID, align 4
  %408 = load %union.ccb*, %union.ccb** %6, align 8
  %409 = bitcast %union.ccb* %408 to %struct.TYPE_13__*
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %407
  store i32 %412, i32* %410, align 8
  br label %517

413:                                              ; preds = %376
  %414 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %415 = load %union.ccb*, %union.ccb** %6, align 8
  %416 = bitcast %union.ccb* %415 to %struct.TYPE_13__*
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 8
  %419 = or i32 %418, %414
  store i32 %419, i32* %417, align 8
  br label %517

420:                                              ; preds = %376, %376
  %421 = load %union.ccb*, %union.ccb** %6, align 8
  %422 = bitcast %union.ccb* %421 to %struct.TYPE_13__*
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @XPT_SCSI_IO, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %438

427:                                              ; preds = %420
  %428 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %429 = load %union.ccb*, %union.ccb** %6, align 8
  %430 = bitcast %union.ccb* %429 to %struct.TYPE_13__*
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 8
  %433 = or i32 %432, %428
  store i32 %433, i32* %431, align 8
  %434 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %435 = load %union.ccb*, %union.ccb** %6, align 8
  %436 = bitcast %union.ccb* %435 to %struct.TYPE_10__*
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 1
  store i32 %434, i32* %437, align 8
  br label %445

438:                                              ; preds = %420
  %439 = load i32, i32* @CAM_ATA_STATUS_ERROR, align 4
  %440 = load %union.ccb*, %union.ccb** %6, align 8
  %441 = bitcast %union.ccb* %440 to %struct.TYPE_13__*
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = or i32 %443, %439
  store i32 %444, i32* %442, align 8
  br label %445

445:                                              ; preds = %438, %427
  br label %517

446:                                              ; preds = %376
  %447 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %448 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %447, i32 0, i32 2
  store i32 1, i32* %448, align 8
  %449 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %450 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %449, i32 0, i32 15
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %471, label %453

453:                                              ; preds = %446
  %454 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %455 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %454, i32 0, i32 12
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @xpt_freeze_simq(i32 %456, i32 1)
  %458 = load i32, i32* @CAM_STATUS_MASK, align 4
  %459 = xor i32 %458, -1
  %460 = load %union.ccb*, %union.ccb** %6, align 8
  %461 = bitcast %union.ccb* %460 to %struct.TYPE_13__*
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = and i32 %463, %459
  store i32 %464, i32* %462, align 8
  %465 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %466 = load %union.ccb*, %union.ccb** %6, align 8
  %467 = bitcast %union.ccb* %466 to %struct.TYPE_13__*
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 8
  %470 = or i32 %469, %465
  store i32 %470, i32* %468, align 8
  br label %471

471:                                              ; preds = %453, %446
  %472 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %473 = load %union.ccb*, %union.ccb** %6, align 8
  %474 = bitcast %union.ccb* %473 to %struct.TYPE_13__*
  %475 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 8
  %477 = or i32 %476, %472
  store i32 %477, i32* %475, align 8
  br label %517

478:                                              ; preds = %376
  %479 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %480 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %479, i32 0, i32 15
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %501, label %483

483:                                              ; preds = %478
  %484 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %485 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %484, i32 0, i32 12
  %486 = load i32, i32* %485, align 8
  %487 = call i32 @xpt_freeze_simq(i32 %486, i32 1)
  %488 = load i32, i32* @CAM_STATUS_MASK, align 4
  %489 = xor i32 %488, -1
  %490 = load %union.ccb*, %union.ccb** %6, align 8
  %491 = bitcast %union.ccb* %490 to %struct.TYPE_13__*
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 8
  %494 = and i32 %493, %489
  store i32 %494, i32* %492, align 8
  %495 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %496 = load %union.ccb*, %union.ccb** %6, align 8
  %497 = bitcast %union.ccb* %496 to %struct.TYPE_13__*
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, %495
  store i32 %500, i32* %498, align 8
  br label %501

501:                                              ; preds = %483, %478
  %502 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %503 = load %union.ccb*, %union.ccb** %6, align 8
  %504 = bitcast %union.ccb* %503 to %struct.TYPE_13__*
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 8
  %507 = or i32 %506, %502
  store i32 %507, i32* %505, align 8
  br label %517

508:                                              ; preds = %376
  %509 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %510 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %509, i32 0, i32 2
  store i32 1, i32* %510, align 8
  %511 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %512 = load %union.ccb*, %union.ccb** %6, align 8
  %513 = bitcast %union.ccb* %512 to %struct.TYPE_13__*
  %514 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 8
  %516 = or i32 %515, %511
  store i32 %516, i32* %514, align 8
  br label %517

517:                                              ; preds = %508, %501, %471, %445, %413, %404, %403
  %518 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %519 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = shl i32 1, %520
  %522 = xor i32 %521, -1
  %523 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %524 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %525, %522
  store i32 %526, i32* %524, align 4
  %527 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %528 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = shl i32 1, %529
  %531 = xor i32 %530, -1
  %532 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %533 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 8
  %535 = and i32 %534, %531
  store i32 %535, i32* %533, align 8
  %536 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %537 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = shl i32 1, %538
  %540 = xor i32 %539, -1
  %541 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %542 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %541, i32 0, i32 5
  %543 = load i32, i32* %542, align 4
  %544 = and i32 %543, %540
  store i32 %544, i32* %542, align 4
  %545 = load i32, i32* @AHCI_SLOT_EMPTY, align 4
  %546 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %547 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %546, i32 0, i32 2
  store i32 %545, i32* %547, align 8
  %548 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %549 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %548, i32 0, i32 1
  store %union.ccb* null, %union.ccb** %549, align 8
  %550 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %551 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %550, i32 0, i32 6
  %552 = load i64, i64* %551, align 8
  %553 = add nsw i64 %552, -1
  store i64 %553, i64* %551, align 8
  %554 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %555 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %554, i32 0, i32 19
  %556 = load i32*, i32** %555, align 8
  %557 = load %union.ccb*, %union.ccb** %6, align 8
  %558 = bitcast %union.ccb* %557 to %struct.TYPE_13__*
  %559 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 8
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %556, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %562, align 4
  %565 = load %union.ccb*, %union.ccb** %6, align 8
  %566 = bitcast %union.ccb* %565 to %struct.TYPE_13__*
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = load i64, i64* @XPT_ATA_IO, align 8
  %570 = icmp eq i64 %568, %569
  br i1 %570, label %571, label %596

571:                                              ; preds = %517
  %572 = load %union.ccb*, %union.ccb** %6, align 8
  %573 = bitcast %union.ccb* %572 to %struct.TYPE_12__*
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %578 = and i32 %576, %577
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %596

580:                                              ; preds = %571
  %581 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %582 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %581, i32 0, i32 18
  %583 = load i32, i32* %582, align 8
  %584 = add nsw i32 %583, -1
  store i32 %584, i32* %582, align 8
  %585 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %586 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %585, i32 0, i32 17
  %587 = load i32*, i32** %586, align 8
  %588 = load %union.ccb*, %union.ccb** %6, align 8
  %589 = bitcast %union.ccb* %588 to %struct.TYPE_13__*
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 8
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %587, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = add nsw i32 %594, -1
  store i32 %595, i32* %593, align 4
  br label %596

596:                                              ; preds = %580, %571, %517
  %597 = load i32, i32* %4, align 4
  %598 = icmp ne i32 %597, 128
  br i1 %598, label %599, label %627

599:                                              ; preds = %596
  %600 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %601 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %600, i32 0, i32 7
  %602 = load i32, i32* %601, align 8
  %603 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %604 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = shl i32 1, %605
  %607 = icmp eq i32 %602, %606
  %608 = zext i1 %607 to i32
  store i32 %608, i32* %8, align 4
  %609 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %610 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = shl i32 1, %611
  %613 = xor i32 %612, -1
  %614 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %615 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %614, i32 0, i32 7
  %616 = load i32, i32* %615, align 8
  %617 = and i32 %616, %613
  store i32 %617, i32* %615, align 8
  %618 = load i32, i32* %8, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %626

620:                                              ; preds = %599
  %621 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %622 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %621, i32 0, i32 12
  %623 = load i32, i32* %622, align 8
  %624 = load i32, i32* @TRUE, align 4
  %625 = call i32 @xpt_release_simq(i32 %623, i32 %624)
  br label %626

626:                                              ; preds = %620, %599
  br label %627

627:                                              ; preds = %626, %596
  %628 = load %union.ccb*, %union.ccb** %6, align 8
  %629 = bitcast %union.ccb* %628 to %struct.TYPE_13__*
  %630 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %629, i32 0, i32 0
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @XPT_ATA_IO, align 8
  %633 = icmp eq i64 %631, %632
  br i1 %633, label %634, label %667

634:                                              ; preds = %627
  %635 = load %union.ccb*, %union.ccb** %6, align 8
  %636 = bitcast %union.ccb* %635 to %struct.TYPE_12__*
  %637 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %637, i32 0, i32 0
  %639 = load i32, i32* %638, align 8
  %640 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %641 = and i32 %639, %640
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %667

643:                                              ; preds = %634
  %644 = load %union.ccb*, %union.ccb** %6, align 8
  %645 = bitcast %union.ccb* %644 to %struct.TYPE_12__*
  %646 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = load i32, i32* @ATA_A_RESET, align 4
  %650 = and i32 %648, %649
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %667

652:                                              ; preds = %643
  %653 = load i32, i32* %4, align 4
  %654 = icmp eq i32 %653, 131
  br i1 %654, label %655, label %667

655:                                              ; preds = %652
  %656 = load i32, i32* @ATA_A_RESET, align 4
  %657 = xor i32 %656, -1
  %658 = load %union.ccb*, %union.ccb** %6, align 8
  %659 = bitcast %union.ccb* %658 to %struct.TYPE_12__*
  %660 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %659, i32 0, i32 1
  %661 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = and i32 %662, %657
  store i32 %663, i32* %661, align 4
  %664 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %665 = load %union.ccb*, %union.ccb** %6, align 8
  %666 = call i32 @ahci_begin_transaction(%struct.ahci_channel* %664, %union.ccb* %665)
  br label %860

667:                                              ; preds = %652, %643, %634, %627
  %668 = load %union.ccb*, %union.ccb** %6, align 8
  %669 = bitcast %union.ccb* %668 to %struct.TYPE_13__*
  %670 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %669, i32 0, i32 4
  %671 = load i64, i64* %670, align 8
  %672 = load i64, i64* @RECOVERY_READ_LOG, align 8
  %673 = icmp eq i64 %671, %672
  br i1 %673, label %674, label %678

674:                                              ; preds = %667
  %675 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %676 = load %union.ccb*, %union.ccb** %6, align 8
  %677 = call i32 @ahci_process_read_log(%struct.ahci_channel* %675, %union.ccb* %676)
  br label %729

678:                                              ; preds = %667
  %679 = load %union.ccb*, %union.ccb** %6, align 8
  %680 = bitcast %union.ccb* %679 to %struct.TYPE_13__*
  %681 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %680, i32 0, i32 4
  %682 = load i64, i64* %681, align 8
  %683 = load i64, i64* @RECOVERY_REQUEST_SENSE, align 8
  %684 = icmp eq i64 %682, %683
  br i1 %684, label %685, label %689

685:                                              ; preds = %678
  %686 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %687 = load %union.ccb*, %union.ccb** %6, align 8
  %688 = call i32 @ahci_process_request_sense(%struct.ahci_channel* %686, %union.ccb* %687)
  br label %728

689:                                              ; preds = %678
  %690 = load i32, i32* %4, align 4
  %691 = icmp eq i32 %690, 132
  br i1 %691, label %709, label %692

692:                                              ; preds = %689
  %693 = load %union.ccb*, %union.ccb** %6, align 8
  %694 = bitcast %union.ccb* %693 to %struct.TYPE_13__*
  %695 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %694, i32 0, i32 3
  %696 = load i32, i32* %695, align 8
  %697 = load i32, i32* @CAM_STATUS_MASK, align 4
  %698 = and i32 %696, %697
  %699 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %700 = icmp eq i32 %698, %699
  br i1 %700, label %701, label %723

701:                                              ; preds = %692
  %702 = load %union.ccb*, %union.ccb** %6, align 8
  %703 = bitcast %union.ccb* %702 to %struct.TYPE_13__*
  %704 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %703, i32 0, i32 2
  %705 = load i32, i32* %704, align 4
  %706 = load i32, i32* @CAM_DIS_AUTOSENSE, align 4
  %707 = and i32 %705, %706
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %723

709:                                              ; preds = %701, %689
  %710 = load %union.ccb*, %union.ccb** %6, align 8
  %711 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %712 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %711, i32 0, i32 16
  %713 = load %union.ccb**, %union.ccb*** %712, align 8
  %714 = load %struct.ahci_slot*, %struct.ahci_slot** %3, align 8
  %715 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 8
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %union.ccb*, %union.ccb** %713, i64 %717
  store %union.ccb* %710, %union.ccb** %718, align 8
  %719 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %720 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %719, i32 0, i32 14
  %721 = load i64, i64* %720, align 8
  %722 = add nsw i64 %721, 1
  store i64 %722, i64* %720, align 8
  br label %727

723:                                              ; preds = %701, %692
  %724 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %725 = load %union.ccb*, %union.ccb** %6, align 8
  %726 = call i32 @ahci_done(%struct.ahci_channel* %724, %union.ccb* %725)
  br label %727

727:                                              ; preds = %723, %709
  br label %728

728:                                              ; preds = %727, %685
  br label %729

729:                                              ; preds = %728, %674
  %730 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %731 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %730, i32 0, i32 4
  %732 = load i32, i32* %731, align 8
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %774

734:                                              ; preds = %729
  %735 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %736 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %735, i32 0, i32 7
  %737 = load i32, i32* %736, align 8
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %744, label %739

739:                                              ; preds = %734
  %740 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %741 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %740, i32 0, i32 2
  %742 = load i32, i32* %741, align 8
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %747

744:                                              ; preds = %739, %734
  %745 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %746 = call i32 @ahci_reset(%struct.ahci_channel* %745)
  br label %773

747:                                              ; preds = %739
  %748 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %749 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %748, i32 0, i32 1
  %750 = load i32, i32* %749, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %759

752:                                              ; preds = %747
  %753 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %754 = call i32 @ahci_stop(%struct.ahci_channel* %753)
  %755 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %756 = call i32 @ahci_clo(%struct.ahci_channel* %755)
  %757 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %758 = call i32 @ahci_start(%struct.ahci_channel* %757, i32 1)
  br label %759

759:                                              ; preds = %752, %747
  %760 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %761 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %760, i32 0, i32 15
  %762 = load i32, i32* %761, align 8
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %772, label %764

764:                                              ; preds = %759
  %765 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %766 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %765, i32 0, i32 14
  %767 = load i64, i64* %766, align 8
  %768 = icmp ne i64 %767, 0
  br i1 %768, label %769, label %772

769:                                              ; preds = %764
  %770 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %771 = call i32 @ahci_issue_recovery(%struct.ahci_channel* %770)
  br label %772

772:                                              ; preds = %769, %764, %759
  br label %773

773:                                              ; preds = %772, %744
  br label %791

774:                                              ; preds = %729
  %775 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %776 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %775, i32 0, i32 4
  %777 = load i32, i32* %776, align 8
  %778 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %779 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %778, i32 0, i32 7
  %780 = load i32, i32* %779, align 8
  %781 = xor i32 %780, -1
  %782 = and i32 %777, %781
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %790

784:                                              ; preds = %774
  %785 = load i32, i32* %4, align 4
  %786 = icmp ne i32 %785, 128
  br i1 %786, label %787, label %790

787:                                              ; preds = %784
  %788 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %789 = call i32 @ahci_rearm_timeout(%struct.ahci_channel* %788)
  br label %790

790:                                              ; preds = %787, %784, %774
  br label %791

791:                                              ; preds = %790, %773
  %792 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %793 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %792, i32 0, i32 13
  %794 = load %union.ccb*, %union.ccb** %793, align 8
  %795 = icmp ne %union.ccb* %794, null
  br i1 %795, label %796, label %817

796:                                              ; preds = %791
  %797 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %798 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %799 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %798, i32 0, i32 13
  %800 = load %union.ccb*, %union.ccb** %799, align 8
  %801 = call i32 @ahci_check_collision(%struct.ahci_channel* %797, %union.ccb* %800)
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %817, label %803

803:                                              ; preds = %796
  %804 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %805 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %804, i32 0, i32 13
  %806 = load %union.ccb*, %union.ccb** %805, align 8
  store %union.ccb* %806, %union.ccb** %13, align 8
  %807 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %808 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %807, i32 0, i32 13
  store %union.ccb* null, %union.ccb** %808, align 8
  %809 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %810 = load %union.ccb*, %union.ccb** %13, align 8
  %811 = call i32 @ahci_begin_transaction(%struct.ahci_channel* %809, %union.ccb* %810)
  %812 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %813 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %812, i32 0, i32 12
  %814 = load i32, i32* %813, align 8
  %815 = load i32, i32* @TRUE, align 4
  %816 = call i32 @xpt_release_simq(i32 %814, i32 %815)
  br label %817

817:                                              ; preds = %803, %796, %791
  %818 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %819 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %818, i32 0, i32 6
  %820 = load i64, i64* %819, align 8
  %821 = icmp eq i64 %820, 0
  br i1 %821, label %822, label %860

822:                                              ; preds = %817
  %823 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %824 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %823, i32 0, i32 8
  %825 = load i32, i32* %824, align 4
  %826 = icmp sgt i32 %825, 3
  br i1 %826, label %827, label %860

827:                                              ; preds = %822
  %828 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %829 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %828, i32 0, i32 11
  %830 = load %struct.TYPE_14__*, %struct.TYPE_14__** %829, align 8
  %831 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %832 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %831, i32 0, i32 10
  %833 = load i64, i64* %832, align 8
  %834 = icmp ne i64 %833, 0
  %835 = zext i1 %834 to i64
  %836 = select i1 %834, i32 15, i32 0
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %830, i64 %837
  %839 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %838, i32 0, i32 0
  %840 = load i32, i32* %839, align 4
  %841 = load i32, i32* @CTS_SATA_CAPS_D_PMREQ, align 4
  %842 = and i32 %840, %841
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %860

844:                                              ; preds = %827
  %845 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %846 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %845, i32 0, i32 9
  %847 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %848 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %847, i32 0, i32 8
  %849 = load i32, i32* %848, align 4
  %850 = icmp eq i32 %849, 4
  br i1 %850, label %851, label %854

851:                                              ; preds = %844
  %852 = load i32, i32* @hz, align 4
  %853 = sdiv i32 %852, 1000
  br label %857

854:                                              ; preds = %844
  %855 = load i32, i32* @hz, align 4
  %856 = sdiv i32 %855, 8
  br label %857

857:                                              ; preds = %854, %851
  %858 = phi i32 [ %853, %851 ], [ %856, %854 ]
  %859 = call i32 @callout_schedule(i32* %846, i32 %858)
  br label %860

860:                                              ; preds = %655, %857, %827, %822, %817
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @bzero(%struct.ata_res*, i32) #1

declare dso_local i8* @le32toh(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @ahci_begin_transaction(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_process_read_log(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_process_request_sense(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_reset(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_stop(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_clo(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_start(%struct.ahci_channel*, i32) #1

declare dso_local i32 @ahci_issue_recovery(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_rearm_timeout(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_check_collision(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
