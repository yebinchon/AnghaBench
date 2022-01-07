; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_execute_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_execute_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_slot = type { i32, i32, i32, %struct.TYPE_6__, %union.ccb*, %struct.ahci_channel* }
%struct.TYPE_6__ = type { i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64, i32 }
%struct.ahci_channel = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32, i64, i64 }
%struct.ahci_cmd_tab = type { i32 }
%struct.ahci_cmd_list = type { i32, i8*, i64, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64 }

@AHCI_CT_OFFSET = common dso_local global i64 0, align 8
@AHCI_CT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Setting up SATA FIS failed\0A\00", align 1
@AHCI_ERR_INVALID = common dso_local global i32 0, align 4
@AHCI_CL_OFFSET = common dso_local global i64 0, align 8
@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@AHCI_CMD_WRITE = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@AHCI_CMD_ATAPI = common dso_local global i32 0, align 4
@AHCI_CMD_PREFETCH = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@AHCI_CMD_RESET = common dso_local global i32 0, align 4
@AHCI_CMD_CLR_BUSY = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@AHCI_P_SACT = common dso_local global i32 0, align 4
@AHCI_P_FBS = common dso_local global i32 0, align 4
@AHCI_P_FBS_EN = common dso_local global i32 0, align 4
@AHCI_P_FBS_DEV_SHIFT = common dso_local global i32 0, align 4
@AHCI_SLOT_RUNNING = common dso_local global i32 0, align 4
@AHCI_P_CI = common dso_local global i32 0, align 4
@ATA_DEVICE_RESET = common dso_local global i64 0, align 8
@AHCI_ERR_NONE = common dso_local global i32 0, align 4
@AHCI_P_TFD = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@AHCI_ERR_TFE = common dso_local global i32 0, align 4
@AHCI_Q_ATI_PMP_BUG = common dso_local global i32 0, align 4
@AHCI_P_IS = common dso_local global i32 0, align 4
@AHCI_P_IX_IPM = common dso_local global i32 0, align 4
@AHCI_ERR_TIMEOUT = common dso_local global i32 0, align 4
@AHCI_Q_MRVL_SR_DEL = common dso_local global i32 0, align 4
@AHCI_Q_NOBSYRES = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Poll timeout on slot %d port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"is %08x cs %08x ss %08x rs %08x tfd %02x serr %08x cmd %08x\0A\00", align 1
@AHCI_P_SERR = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@ahci_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_slot*)* @ahci_execute_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_execute_transaction(%struct.ahci_slot* %0) #0 {
  %2 = alloca %struct.ahci_slot*, align 8
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca %struct.ahci_cmd_tab*, align 8
  %5 = alloca %struct.ahci_cmd_list*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahci_slot* %0, %struct.ahci_slot** %2, align 8
  %17 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %18 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %17, i32 0, i32 5
  %19 = load %struct.ahci_channel*, %struct.ahci_channel** %18, align 8
  store %struct.ahci_channel* %19, %struct.ahci_channel** %3, align 8
  %20 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %21 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %20, i32 0, i32 4
  %22 = load %union.ccb*, %union.ccb** %21, align 8
  store %union.ccb* %22, %union.ccb** %6, align 8
  %23 = load %union.ccb*, %union.ccb** %6, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_10__*
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 15
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %29 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 64
  store i32* %32, i32** %11, align 8
  %33 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %34 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AHCI_CT_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @AHCI_CT_SIZE, align 4
  %40 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %41 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %38, %44
  %46 = inttoptr i64 %45 to %struct.ahci_cmd_tab*
  store %struct.ahci_cmd_tab* %46, %struct.ahci_cmd_tab** %4, align 8
  %47 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %48 = load %struct.ahci_cmd_tab*, %struct.ahci_cmd_tab** %4, align 8
  %49 = load %union.ccb*, %union.ccb** %6, align 8
  %50 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %51 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ahci_setup_fis(%struct.ahci_channel* %47, %struct.ahci_cmd_tab* %48, %union.ccb* %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %1
  %56 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %57 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %61 = load i32, i32* @AHCI_ERR_INVALID, align 4
  %62 = call i32 @ahci_end_transaction(%struct.ahci_slot* %60, i32 %61)
  br label %517

63:                                               ; preds = %1
  %64 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %65 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AHCI_CL_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* @AHCI_CL_SIZE, align 4
  %71 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %72 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %69, %75
  %77 = inttoptr i64 %76 to %struct.ahci_cmd_list*
  store %struct.ahci_cmd_list* %77, %struct.ahci_cmd_list** %5, align 8
  %78 = load %union.ccb*, %union.ccb** %6, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CAM_DIR_OUT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %63
  %86 = load i32, i32* @AHCI_CMD_WRITE, align 4
  br label %88

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = load %union.ccb*, %union.ccb** %6, align 8
  %91 = bitcast %union.ccb* %90 to %struct.TYPE_10__*
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @XPT_SCSI_IO, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* @AHCI_CMD_ATAPI, align 4
  %98 = load i32, i32* @AHCI_CMD_PREFETCH, align 4
  %99 = or i32 %97, %98
  br label %101

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32 [ %99, %96 ], [ 0, %100 ]
  %103 = or i32 %89, %102
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %106, 4
  %108 = or i64 %104, %107
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 12
  %111 = sext i32 %110 to i64
  %112 = or i64 %108, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  %114 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %115 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @htole16(i32 %117)
  %119 = load %struct.ahci_cmd_list*, %struct.ahci_cmd_list** %5, align 8
  %120 = getelementptr inbounds %struct.ahci_cmd_list, %struct.ahci_cmd_list* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %union.ccb*, %union.ccb** %6, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_10__*
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @XPT_ATA_IO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %171

127:                                              ; preds = %101
  %128 = load %union.ccb*, %union.ccb** %6, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_9__*
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %171

136:                                              ; preds = %127
  %137 = load %union.ccb*, %union.ccb** %6, align 8
  %138 = bitcast %union.ccb* %137 to %struct.TYPE_9__*
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ATA_A_RESET, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %136
  store i32 1, i32* %10, align 4
  %146 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %147 = call i32 @ahci_stop(%struct.ahci_channel* %146)
  %148 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %149 = call i32 @ahci_clo(%struct.ahci_channel* %148)
  %150 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %151 = call i32 @ahci_start(%struct.ahci_channel* %150, i32 0)
  %152 = load i32, i32* @AHCI_CMD_RESET, align 4
  %153 = load i32, i32* @AHCI_CMD_CLR_BUSY, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %13, align 4
  br label %170

157:                                              ; preds = %136
  store i32 2, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %166, %157
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 20
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 255, i32* %165, align 4
  br label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %158

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %145
  br label %172

171:                                              ; preds = %127, %101
  store i32 0, i32* %10, align 4
  br label %172

172:                                              ; preds = %171, %170
  %173 = load %struct.ahci_cmd_list*, %struct.ahci_cmd_list** %5, align 8
  %174 = getelementptr inbounds %struct.ahci_cmd_list, %struct.ahci_cmd_list* %173, i32 0, i32 2
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* %13, align 4
  %176 = call i8* @htole16(i32 %175)
  %177 = load %struct.ahci_cmd_list*, %struct.ahci_cmd_list** %5, align 8
  %178 = getelementptr inbounds %struct.ahci_cmd_list, %struct.ahci_cmd_list* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %180 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @AHCI_CT_OFFSET, align 8
  %184 = add nsw i64 %182, %183
  %185 = load i32, i32* @AHCI_CT_SIZE, align 4
  %186 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %187 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %184, %190
  %192 = call i32 @htole64(i64 %191)
  %193 = load %struct.ahci_cmd_list*, %struct.ahci_cmd_list** %5, align 8
  %194 = getelementptr inbounds %struct.ahci_cmd_list, %struct.ahci_cmd_list* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %196 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %200 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %204 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @bus_dmamap_sync(i32 %198, i32 %202, i32 %205)
  %207 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %208 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %212 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %216 = call i32 @bus_dmamap_sync(i32 %210, i32 %214, i32 %215)
  %217 = load %union.ccb*, %union.ccb** %6, align 8
  %218 = bitcast %union.ccb* %217 to %struct.TYPE_10__*
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @XPT_ATA_IO, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %172
  %224 = load %union.ccb*, %union.ccb** %6, align 8
  %225 = bitcast %union.ccb* %224 to %struct.TYPE_9__*
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %223
  %233 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %234 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @AHCI_P_SACT, align 4
  %237 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %238 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = shl i32 1, %239
  %241 = call i32 @ATA_OUTL(i32 %235, i32 %236, i32 %240)
  br label %242

242:                                              ; preds = %232, %223, %172
  %243 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %244 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %242
  %248 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %249 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @AHCI_P_FBS, align 4
  %252 = load i32, i32* @AHCI_P_FBS_EN, align 4
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @AHCI_P_FBS_DEV_SHIFT, align 4
  %255 = shl i32 %253, %254
  %256 = or i32 %252, %255
  %257 = call i32 @ATA_OUTL(i32 %250, i32 %251, i32 %256)
  br label %258

258:                                              ; preds = %247, %242
  %259 = load i32, i32* @AHCI_SLOT_RUNNING, align 4
  %260 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %261 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %263 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = shl i32 1, %264
  %266 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %267 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  %270 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %271 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @AHCI_P_CI, align 4
  %274 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %275 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = shl i32 1, %276
  %278 = call i32 @ATA_OUTL(i32 %272, i32 %273, i32 %277)
  %279 = load %union.ccb*, %union.ccb** %6, align 8
  %280 = bitcast %union.ccb* %279 to %struct.TYPE_10__*
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @XPT_ATA_IO, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %503

285:                                              ; preds = %258
  %286 = load %union.ccb*, %union.ccb** %6, align 8
  %287 = bitcast %union.ccb* %286 to %struct.TYPE_9__*
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @ATA_DEVICE_RESET, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %296, label %293

293:                                              ; preds = %285
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %503

296:                                              ; preds = %293, %285
  %297 = load %union.ccb*, %union.ccb** %6, align 8
  %298 = bitcast %union.ccb* %297 to %struct.TYPE_10__*
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = mul nsw i32 %300, 100
  store i32 %301, i32* %15, align 4
  %302 = load i32, i32* @AHCI_ERR_NONE, align 4
  store i32 %302, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %303

303:                                              ; preds = %360, %296
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %15, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %363

307:                                              ; preds = %303
  %308 = call i32 @DELAY(i32 10)
  %309 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %310 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @AHCI_P_CI, align 4
  %313 = call i32 @ATA_INL(i32 %311, i32 %312)
  %314 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %315 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = shl i32 1, %316
  %318 = and i32 %313, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %307
  br label %363

321:                                              ; preds = %307
  %322 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %323 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @AHCI_P_TFD, align 4
  %326 = call i32 @ATA_INL(i32 %324, i32 %325)
  %327 = load i32, i32* @ATA_S_ERROR, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %321
  %331 = load i32, i32* %10, align 4
  %332 = icmp ne i32 %331, 1
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = load i32, i32* @AHCI_ERR_TFE, align 4
  store i32 %334, i32* %16, align 4
  br label %363

335:                                              ; preds = %330, %321
  %336 = load %union.ccb*, %union.ccb** %6, align 8
  %337 = bitcast %union.ccb* %336 to %struct.TYPE_10__*
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 15
  br i1 %340, label %341, label %359

341:                                              ; preds = %335
  %342 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %343 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @AHCI_Q_ATI_PMP_BUG, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %359

348:                                              ; preds = %341
  %349 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %350 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @AHCI_P_IS, align 4
  %353 = call i32 @ATA_INL(i32 %351, i32 %352)
  %354 = load i32, i32* @AHCI_P_IX_IPM, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %348
  %358 = load i32, i32* @AHCI_ERR_TIMEOUT, align 4
  store i32 %358, i32* %16, align 4
  br label %363

359:                                              ; preds = %348, %341, %335
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %14, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %14, align 4
  br label %303

363:                                              ; preds = %357, %333, %320, %303
  %364 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %365 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @AHCI_Q_MRVL_SR_DEL, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = call i32 @DELAY(i32 50000)
  br label %372

372:                                              ; preds = %370, %363
  %373 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %374 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @AHCI_Q_NOBSYRES, align 4
  %377 = and i32 %375, %376
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %433

379:                                              ; preds = %372
  %380 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %381 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @AHCI_Q_ATI_PMP_BUG, align 4
  %384 = and i32 %382, %383
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %433

386:                                              ; preds = %379
  %387 = load i32, i32* %10, align 4
  %388 = icmp eq i32 %387, 2
  br i1 %388, label %389, label %433

389:                                              ; preds = %386
  %390 = load i32, i32* %16, align 4
  %391 = load i32, i32* @AHCI_ERR_NONE, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %433

393:                                              ; preds = %389
  br label %394

394:                                              ; preds = %429, %393
  %395 = load i32, i32* %14, align 4
  %396 = load i32, i32* %15, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %432

398:                                              ; preds = %394
  %399 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %400 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %404 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %408 = call i32 @bus_dmamap_sync(i32 %402, i32 %406, i32 %407)
  %409 = load i32*, i32** %11, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  %411 = load i32, i32* %410, align 4
  store i32 %411, i32* %12, align 4
  %412 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %413 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %417 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %421 = call i32 @bus_dmamap_sync(i32 %415, i32 %419, i32 %420)
  %422 = load i32, i32* %12, align 4
  %423 = load i32, i32* @ATA_S_BUSY, align 4
  %424 = and i32 %422, %423
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %398
  br label %432

427:                                              ; preds = %398
  %428 = call i32 @DELAY(i32 10)
  br label %429

429:                                              ; preds = %427
  %430 = load i32, i32* %14, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %14, align 4
  br label %394

432:                                              ; preds = %426, %394
  br label %433

433:                                              ; preds = %432, %389, %386, %379, %372
  %434 = load i32, i32* %15, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %487

436:                                              ; preds = %433
  %437 = load i32, i32* %14, align 4
  %438 = load i32, i32* %15, align 4
  %439 = icmp sge i32 %437, %438
  br i1 %439, label %440, label %487

440:                                              ; preds = %436
  %441 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %442 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %445 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* %7, align 4
  %448 = call i32 (i32, i8*, ...) @device_printf(i32 %443, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %446, i32 %447)
  %449 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %450 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %453 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @AHCI_P_IS, align 4
  %456 = call i32 @ATA_INL(i32 %454, i32 %455)
  %457 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %458 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @AHCI_P_CI, align 4
  %461 = call i32 @ATA_INL(i32 %459, i32 %460)
  %462 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %463 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* @AHCI_P_SACT, align 4
  %466 = call i32 @ATA_INL(i32 %464, i32 %465)
  %467 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %468 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %471 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @AHCI_P_TFD, align 4
  %474 = call i32 @ATA_INL(i32 %472, i32 %473)
  %475 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %476 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @AHCI_P_SERR, align 4
  %479 = call i32 @ATA_INL(i32 %477, i32 %478)
  %480 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %481 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @AHCI_P_CMD, align 4
  %484 = call i32 @ATA_INL(i32 %482, i32 %483)
  %485 = call i32 (i32, i8*, ...) @device_printf(i32 %451, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %456, i32 %461, i32 %466, i32 %469, i32 %474, i32 %479, i32 %484)
  %486 = load i32, i32* @AHCI_ERR_TIMEOUT, align 4
  store i32 %486, i32* %16, align 4
  br label %487

487:                                              ; preds = %440, %436, %433
  %488 = load i32, i32* %10, align 4
  %489 = icmp eq i32 %488, 2
  br i1 %489, label %490, label %499

490:                                              ; preds = %487
  %491 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %492 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = shl i32 1, %493
  %495 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %496 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = or i32 %497, %494
  store i32 %498, i32* %496, align 8
  br label %499

499:                                              ; preds = %490, %487
  %500 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %501 = load i32, i32* %16, align 4
  %502 = call i32 @ahci_end_transaction(%struct.ahci_slot* %500, i32 %501)
  br label %517

503:                                              ; preds = %293, %258
  %504 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %505 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %504, i32 0, i32 1
  %506 = load i32, i32* @SBT_1MS, align 4
  %507 = load %union.ccb*, %union.ccb** %6, align 8
  %508 = bitcast %union.ccb* %507 to %struct.TYPE_10__*
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 3
  %510 = load i32, i32* %509, align 8
  %511 = mul nsw i32 %506, %510
  %512 = sdiv i32 %511, 2
  %513 = load i64, i64* @ahci_timeout, align 8
  %514 = inttoptr i64 %513 to i32*
  %515 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %516 = call i32 @callout_reset_sbt(i32* %505, i32 %512, i32 0, i32* %514, %struct.ahci_slot* %515, i32 0)
  br label %517

517:                                              ; preds = %503, %499, %55
  ret void
}

declare dso_local i32 @ahci_setup_fis(%struct.ahci_channel*, %struct.ahci_cmd_tab*, %union.ccb*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ahci_end_transaction(%struct.ahci_slot*, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @ahci_stop(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_clo(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_start(%struct.ahci_channel*, i32) #1

declare dso_local i32 @htole64(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.ahci_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
