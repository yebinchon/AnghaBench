; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_execute_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_execute_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_slot = type { i32, i32, i32, i32, %struct.TYPE_6__, %union.ccb*, %struct.fsl_sata_channel* }
%struct.TYPE_6__ = type { i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }
%struct.fsl_sata_channel = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fsl_sata_cmd_tab = type { i32* }
%struct.fsl_sata_cmd_list = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64 }

@FSL_SATA_CMD_WRITE = common dso_local global i32 0, align 4
@FSL_SATA_CMD_SNOOP = common dso_local global i32 0, align 4
@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fsl_sata_execute_transaction func_code=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Setting up SATA FIS failed\0A\00", align 1
@FSL_SATA_ERR_INVALID = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@FSL_SATA_CMD_RESET = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@FSL_SATA_CMD_QUEUED = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@FSL_SATA_CMD_ATAPI = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@FSL_SATA_SLOT_RUNNING = common dso_local global i32 0, align 4
@FSL_SATA_P_CQPMP = common dso_local global i32 0, align 4
@FSL_SATA_P_CQR = common dso_local global i32 0, align 4
@ATA_DEVICE_RESET = common dso_local global i64 0, align 8
@FSL_SATA_ERR_NONE = common dso_local global i32 0, align 4
@FSL_SATA_P_SIG = common dso_local global i32 0, align 4
@FSL_SATA_P_CCR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Poll timeout on slot %d port %d (round %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"hsts %08x cqr %08x ccr %08x ss %08x rs %08x cer %08x der %08x serr %08x car %08x sig %08x\0A\00", align 1
@FSL_SATA_P_HSTS = common dso_local global i32 0, align 4
@FSL_SATA_P_SSTS = common dso_local global i32 0, align 4
@FSL_SATA_P_CER = common dso_local global i32 0, align 4
@FSL_SATA_P_DER = common dso_local global i32 0, align 4
@FSL_SATA_P_SERR = common dso_local global i32 0, align 4
@FSL_SATA_P_CAR = common dso_local global i32 0, align 4
@FSL_SATA_ERR_TIMEOUT = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@fsl_sata_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_slot*)* @fsl_sata_execute_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_execute_transaction(%struct.fsl_sata_slot* %0) #0 {
  %2 = alloca %struct.fsl_sata_slot*, align 8
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca %struct.fsl_sata_cmd_tab*, align 8
  %5 = alloca %struct.fsl_sata_cmd_list*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fsl_sata_slot* %0, %struct.fsl_sata_slot** %2, align 8
  %16 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %16, i32 0, i32 6
  %18 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %17, align 8
  store %struct.fsl_sata_channel* %18, %struct.fsl_sata_channel** %3, align 8
  %19 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %19, i32 0, i32 5
  %21 = load %union.ccb*, %union.ccb** %20, align 8
  store %union.ccb* %21, %union.ccb** %6, align 8
  %22 = load %union.ccb*, %union.ccb** %6, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_10__*
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 15
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @FSL_SATA_CMD_WRITE, align 4
  %28 = load i32, i32* @FSL_SATA_CMD_SNOOP, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %30 = load %union.ccb*, %union.ccb** %6, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %35 = load %union.ccb*, %union.ccb** %6, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @CAM_DEBUG(i32 %33, i32 %34, i8* %39)
  %41 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %42 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %43 = call %struct.fsl_sata_cmd_tab* @FSL_SATA_CTP(%struct.fsl_sata_channel* %41, %struct.fsl_sata_slot* %42)
  store %struct.fsl_sata_cmd_tab* %43, %struct.fsl_sata_cmd_tab** %4, align 8
  %44 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %45 = load %struct.fsl_sata_cmd_tab*, %struct.fsl_sata_cmd_tab** %4, align 8
  %46 = load %union.ccb*, %union.ccb** %6, align 8
  %47 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %48 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @fsl_sata_setup_fis(%struct.fsl_sata_channel* %44, %struct.fsl_sata_cmd_tab* %45, %union.ccb* %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %1
  %53 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %58 = load i32, i32* @FSL_SATA_ERR_INVALID, align 4
  %59 = call i32 @fsl_sata_end_transaction(%struct.fsl_sata_slot* %57, i32 %58)
  br label %353

60:                                               ; preds = %1
  %61 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %62 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %63 = call %struct.fsl_sata_cmd_list* @FSL_SATA_CLP(%struct.fsl_sata_channel* %61, %struct.fsl_sata_slot* %62)
  store %struct.fsl_sata_cmd_list* %63, %struct.fsl_sata_cmd_list** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @htole16(i32 %64)
  %66 = load %struct.fsl_sata_cmd_list*, %struct.fsl_sata_cmd_list** %5, align 8
  %67 = getelementptr inbounds %struct.fsl_sata_cmd_list, %struct.fsl_sata_cmd_list* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %69 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @htole16(i32 %71)
  %73 = load %struct.fsl_sata_cmd_list*, %struct.fsl_sata_cmd_list** %5, align 8
  %74 = getelementptr inbounds %struct.fsl_sata_cmd_list, %struct.fsl_sata_cmd_list* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %union.ccb*, %union.ccb** %6, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_10__*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @XPT_ATA_IO, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %119

81:                                               ; preds = %60
  %82 = load %union.ccb*, %union.ccb** %6, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_9__*
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %81
  %91 = load %union.ccb*, %union.ccb** %6, align 8
  %92 = bitcast %union.ccb* %91 to %struct.TYPE_9__*
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ATA_A_RESET, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  store i32 1, i32* %10, align 4
  %100 = load i32, i32* @FSL_SATA_CMD_RESET, align 4
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %118

103:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %114, %103
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 32
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.fsl_sata_cmd_tab*, %struct.fsl_sata_cmd_tab** %4, align 8
  %109 = getelementptr inbounds %struct.fsl_sata_cmd_tab, %struct.fsl_sata_cmd_tab* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 255, i32* %113, align 4
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %104

117:                                              ; preds = %104
  store i32 2, i32* %10, align 4
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %81, %60
  %120 = load %union.ccb*, %union.ccb** %6, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_9__*
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load i32, i32* @FSL_SATA_CMD_QUEUED, align 4
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %128, %119
  %133 = load i32, i32* %12, align 4
  %134 = load %union.ccb*, %union.ccb** %6, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_10__*
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @XPT_SCSI_IO, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* @FSL_SATA_CMD_ATAPI, align 4
  br label %143

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = or i32 %133, %144
  %146 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %147 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %145, %148
  %150 = call i8* @htole32(i32 %149)
  %151 = load %struct.fsl_sata_cmd_list*, %struct.fsl_sata_cmd_list** %5, align 8
  %152 = getelementptr inbounds %struct.fsl_sata_cmd_list, %struct.fsl_sata_cmd_list* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %154 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @htole32(i32 %155)
  %157 = load %struct.fsl_sata_cmd_list*, %struct.fsl_sata_cmd_list** %5, align 8
  %158 = getelementptr inbounds %struct.fsl_sata_cmd_list, %struct.fsl_sata_cmd_list* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %160 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %161 = call i32 @FSL_SATA_CTP_BUS(%struct.fsl_sata_channel* %159, %struct.fsl_sata_slot* %160)
  %162 = call i8* @htole32(i32 %161)
  %163 = load %struct.fsl_sata_cmd_list*, %struct.fsl_sata_cmd_list** %5, align 8
  %164 = getelementptr inbounds %struct.fsl_sata_cmd_list, %struct.fsl_sata_cmd_list* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %166 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %170 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %174 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @bus_dmamap_sync(i32 %168, i32 %172, i32 %175)
  %177 = load i32, i32* @FSL_SATA_SLOT_RUNNING, align 4
  %178 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %179 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %181 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = shl i32 1, %182
  %184 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %185 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %189 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @FSL_SATA_P_CQPMP, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @ATA_OUTL(i32 %190, i32 %191, i32 %192)
  %194 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %195 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @FSL_SATA_P_CQR, align 4
  %198 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %199 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = shl i32 1, %200
  %202 = call i32 @ATA_OUTL(i32 %196, i32 %197, i32 %201)
  %203 = load %union.ccb*, %union.ccb** %6, align 8
  %204 = bitcast %union.ccb* %203 to %struct.TYPE_10__*
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @XPT_ATA_IO, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %339

209:                                              ; preds = %143
  %210 = load %union.ccb*, %union.ccb** %6, align 8
  %211 = bitcast %union.ccb* %210 to %struct.TYPE_9__*
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @ATA_DEVICE_RESET, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %220, label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %339

220:                                              ; preds = %217, %209
  %221 = load %union.ccb*, %union.ccb** %6, align 8
  %222 = bitcast %union.ccb* %221 to %struct.TYPE_10__*
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %224, 100
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* @FSL_SATA_ERR_NONE, align 4
  store i32 %226, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %262, %220
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %265

231:                                              ; preds = %227
  %232 = call i32 @DELAY(i32 10)
  store i32 0, i32* %11, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %248

235:                                              ; preds = %231
  %236 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %237 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @FSL_SATA_P_SIG, align 4
  %240 = call i32 @ATA_INL(i32 %238, i32 %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %235
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, -1
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  br label %265

247:                                              ; preds = %243, %235
  br label %262

248:                                              ; preds = %231
  %249 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %250 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @FSL_SATA_P_CCR, align 4
  %253 = call i32 @ATA_INL(i32 %251, i32 %252)
  %254 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %255 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = shl i32 1, %256
  %258 = and i32 %253, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %248
  br label %265

261:                                              ; preds = %248
  br label %262

262:                                              ; preds = %261, %247
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %13, align 4
  br label %227

265:                                              ; preds = %260, %246, %227
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %335

268:                                              ; preds = %265
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %272, label %335

272:                                              ; preds = %268
  %273 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %274 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %277 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 (i32, i8*, ...) @device_printf(i32 %275, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %278, i32 %279, i32 %280)
  %282 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %283 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %286 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %289 = call i32 @ATA_INL(i32 %287, i32 %288)
  %290 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %291 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @FSL_SATA_P_CQR, align 4
  %294 = call i32 @ATA_INL(i32 %292, i32 %293)
  %295 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %296 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @FSL_SATA_P_CCR, align 4
  %299 = call i32 @ATA_INL(i32 %297, i32 %298)
  %300 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %301 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @FSL_SATA_P_SSTS, align 4
  %304 = call i32 @ATA_INL(i32 %302, i32 %303)
  %305 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %306 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %309 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @FSL_SATA_P_CER, align 4
  %312 = call i32 @ATA_INL(i32 %310, i32 %311)
  %313 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %314 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @FSL_SATA_P_DER, align 4
  %317 = call i32 @ATA_INL(i32 %315, i32 %316)
  %318 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %319 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @FSL_SATA_P_SERR, align 4
  %322 = call i32 @ATA_INL(i32 %320, i32 %321)
  %323 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %324 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @FSL_SATA_P_CAR, align 4
  %327 = call i32 @ATA_INL(i32 %325, i32 %326)
  %328 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %329 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @FSL_SATA_P_SIG, align 4
  %332 = call i32 @ATA_INL(i32 %330, i32 %331)
  %333 = call i32 (i32, i8*, ...) @device_printf(i32 %284, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i32 %289, i32 %294, i32 %299, i32 %304, i32 %307, i32 %312, i32 %317, i32 %322, i32 %327, i32 %332)
  %334 = load i32, i32* @FSL_SATA_ERR_TIMEOUT, align 4
  store i32 %334, i32* %15, align 4
  br label %335

335:                                              ; preds = %272, %268, %265
  %336 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %337 = load i32, i32* %15, align 4
  %338 = call i32 @fsl_sata_end_transaction(%struct.fsl_sata_slot* %336, i32 %337)
  br label %353

339:                                              ; preds = %217, %143
  %340 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %341 = getelementptr inbounds %struct.fsl_sata_slot, %struct.fsl_sata_slot* %340, i32 0, i32 2
  %342 = load i32, i32* @SBT_1MS, align 4
  %343 = load %union.ccb*, %union.ccb** %6, align 8
  %344 = bitcast %union.ccb* %343 to %struct.TYPE_10__*
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = mul nsw i32 %342, %346
  %348 = sdiv i32 %347, 2
  %349 = load i64, i64* @fsl_sata_timeout, align 8
  %350 = inttoptr i64 %349 to i32*
  %351 = load %struct.fsl_sata_slot*, %struct.fsl_sata_slot** %2, align 8
  %352 = call i32 @callout_reset_sbt(i32* %341, i32 %348, i32 0, i32* %350, %struct.fsl_sata_slot* %351, i32 0)
  br label %353

353:                                              ; preds = %339, %335, %52
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %struct.fsl_sata_cmd_tab* @FSL_SATA_CTP(%struct.fsl_sata_channel*, %struct.fsl_sata_slot*) #1

declare dso_local i32 @fsl_sata_setup_fis(%struct.fsl_sata_channel*, %struct.fsl_sata_cmd_tab*, %union.ccb*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @fsl_sata_end_transaction(%struct.fsl_sata_slot*, i32) #1

declare dso_local %struct.fsl_sata_cmd_list* @FSL_SATA_CLP(%struct.fsl_sata_channel*, %struct.fsl_sata_slot*) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @FSL_SATA_CTP_BUS(%struct.fsl_sata_channel*, %struct.fsl_sata_slot*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.fsl_sata_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
