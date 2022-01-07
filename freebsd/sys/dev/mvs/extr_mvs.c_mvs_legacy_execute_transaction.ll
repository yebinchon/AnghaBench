; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_legacy_execute_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_legacy_execute_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_slot = type { i32, i32, i32, %union.ccb*, i32 }
%union.ccb = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.mvs_channel = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i64, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@MVS_SLOT_RUNNING = common dso_local global i32 0, align 4
@SATA_SATAICTL = common dso_local global i32 0, align 4
@SATA_SATAICTL_PMPTX_SHIFT = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@ATA_DEVICE_RESET = common dso_local global i64 0, align 8
@ATA_STATUS = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_READ_MUL = common dso_local global i64 0, align 8
@ATA_READ_MUL48 = common dso_local global i64 0, align 8
@ATA_WRITE_MUL = common dso_local global i64 0, align 8
@ATA_WRITE_MUL48 = common dso_local global i64 0, align 8
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@ATA_S_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for write DRQ\0A\00", align 1
@MVS_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i32 0, align 4
@ATA_F_DMA = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_PACKET_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"timeout waiting for ATAPI !BUSY\0A\00", align 1
@ATA_IREASON = common dso_local global i32 0, align 4
@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATAPI_P_CMDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"timeout waiting for ATAPI command ready\0A\00", align 1
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@MVS_EPRD_OFFSET = common dso_local global i32 0, align 4
@MVS_EPRD_SIZE = common dso_local global i32 0, align 4
@DMA_DTLBA = common dso_local global i32 0, align 4
@DMA_DTHBA = common dso_local global i32 0, align 4
@DMA_C = common dso_local global i32 0, align 4
@DMA_C_START = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@DMA_C_READ = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@mvs_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_slot*)* @mvs_legacy_execute_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_legacy_execute_transaction(%struct.mvs_slot* %0) #0 {
  %2 = alloca %struct.mvs_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mvs_slot* %0, %struct.mvs_slot** %2, align 8
  %12 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %13 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.mvs_channel* @device_get_softc(i32 %15)
  store %struct.mvs_channel* %16, %struct.mvs_channel** %4, align 8
  %17 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %18 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %17, i32 0, i32 3
  %19 = load %union.ccb*, %union.ccb** %18, align 8
  store %union.ccb* %19, %union.ccb** %6, align 8
  %20 = load %union.ccb*, %union.ccb** %6, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_13__*
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 15
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @MVS_SLOT_RUNNING, align 4
  %26 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %27 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %29 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %33 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %37 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SATA_SATAICTL, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SATA_SATAICTL_PMPTX_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @ATA_OUTB(i32 %38, i32 %39, i32 %42)
  %44 = load %union.ccb*, %union.ccb** %6, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_13__*
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XPT_ATA_IO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %217

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = load %union.ccb*, %union.ccb** %6, align 8
  %53 = call i32 @mvs_tfd_write(i32 %51, %union.ccb* %52)
  %54 = load %union.ccb*, %union.ccb** %6, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_14__*
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ATA_DEVICE_RESET, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %50
  store i32 1000000, i32* %9, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = call i32 @DELAY(i32 10)
  %64 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %65 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ATA_STATUS, align 4
  %68 = call i8* @ATA_INB(i32 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %union.ccb*, %union.ccb** %6, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_14__*
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  br label %74

74:                                               ; preds = %62
  %75 = load %union.ccb*, %union.ccb** %6, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_14__*
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ATA_S_BUSY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp ne i32 %84, 0
  br label %87

87:                                               ; preds = %83, %74
  %88 = phi i1 [ false, %74 ], [ %86, %83 ]
  br i1 %88, label %62, label %89

89:                                               ; preds = %87
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @mvs_legacy_intr(i32 %90, i32 1)
  br label %469

92:                                               ; preds = %50
  %93 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %94 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %93, i32 0, i32 9
  store i64 0, i64* %94, align 8
  %95 = load %union.ccb*, %union.ccb** %6, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_14__*
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ATA_READ_MUL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %126, label %102

102:                                              ; preds = %92
  %103 = load %union.ccb*, %union.ccb** %6, align 8
  %104 = bitcast %union.ccb* %103 to %struct.TYPE_14__*
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ATA_READ_MUL48, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %126, label %110

110:                                              ; preds = %102
  %111 = load %union.ccb*, %union.ccb** %6, align 8
  %112 = bitcast %union.ccb* %111 to %struct.TYPE_14__*
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ATA_WRITE_MUL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %110
  %119 = load %union.ccb*, %union.ccb** %6, align 8
  %120 = bitcast %union.ccb* %119 to %struct.TYPE_14__*
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ATA_WRITE_MUL48, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %118, %110, %102, %92
  %127 = load %union.ccb*, %union.ccb** %6, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_14__*
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %132 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %131, i32 0, i32 7
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @min(i32 %130, i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %142 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %152

143:                                              ; preds = %118
  %144 = load %union.ccb*, %union.ccb** %6, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_14__*
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @min(i32 %147, i32 512)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %151 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %143, %126
  %153 = load %union.ccb*, %union.ccb** %6, align 8
  %154 = bitcast %union.ccb* %153 to %struct.TYPE_13__*
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @CAM_DIR_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @CAM_DIR_NONE, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %163 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %152
  %165 = load %union.ccb*, %union.ccb** %6, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_13__*
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CAM_DIR_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @CAM_DIR_OUT, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %216

173:                                              ; preds = %164
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @ATA_S_DRQ, align 4
  %176 = load i32, i32* @ATA_S_BUSY, align 4
  %177 = call i64 @mvs_wait(i32 %174, i32 %175, i32 %176, i32 1000)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %173
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @device_printf(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %182 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %183 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @xpt_freeze_simq(i32 %184, i32 1)
  %186 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %187 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 1, %188
  %190 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %191 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %195 = load i32, i32* @MVS_ERR_TIMEOUT, align 4
  %196 = call i32 @mvs_end_transaction(%struct.mvs_slot* %194, i32 %195)
  br label %469

197:                                              ; preds = %173
  %198 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %199 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @ATA_DATA, align 4
  %202 = load %union.ccb*, %union.ccb** %6, align 8
  %203 = bitcast %union.ccb* %202 to %struct.TYPE_14__*
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %207 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %205, %208
  %210 = inttoptr i64 %209 to i32*
  %211 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %212 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sdiv i32 %213, 2
  %215 = call i32 @ATA_OUTSW_STRM(i32 %200, i32 %201, i32* %210, i32 %214)
  br label %216

216:                                              ; preds = %197, %164
  br label %456

217:                                              ; preds = %1
  %218 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %219 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %218, i32 0, i32 9
  store i64 0, i64* %219, align 8
  %220 = load %union.ccb*, %union.ccb** %6, align 8
  %221 = bitcast %union.ccb* %220 to %struct.TYPE_15__*
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %225 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %224, i32 0, i32 7
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @min(i32 %223, i32 %231)
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %235 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %237 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %217
  %241 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %242 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @ATA_FEATURE, align 4
  %245 = load i32, i32* @ATA_F_DMA, align 4
  %246 = call i32 @ATA_OUTB(i32 %243, i32 %244, i32 %245)
  %247 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %248 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @ATA_CYL_LSB, align 4
  %251 = call i32 @ATA_OUTB(i32 %249, i32 %250, i32 0)
  %252 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %253 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @ATA_CYL_MSB, align 4
  %256 = call i32 @ATA_OUTB(i32 %254, i32 %255, i32 0)
  br label %280

257:                                              ; preds = %217
  %258 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %259 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @ATA_FEATURE, align 4
  %262 = call i32 @ATA_OUTB(i32 %260, i32 %261, i32 0)
  %263 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %264 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @ATA_CYL_LSB, align 4
  %267 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %268 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @ATA_OUTB(i32 %265, i32 %266, i32 %269)
  %271 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %272 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @ATA_CYL_MSB, align 4
  %275 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %276 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = ashr i32 %277, 8
  %279 = call i32 @ATA_OUTB(i32 %273, i32 %274, i32 %278)
  br label %280

280:                                              ; preds = %257, %240
  %281 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %282 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @ATA_COMMAND, align 4
  %285 = load i32, i32* @ATA_PACKET_CMD, align 4
  %286 = call i32 @ATA_OUTB(i32 %283, i32 %284, i32 %285)
  %287 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %288 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %287, i32 0, i32 2
  store i32 1, i32* %288, align 8
  %289 = load i32, i32* %3, align 4
  %290 = load i32, i32* @ATA_S_BUSY, align 4
  %291 = call i64 @mvs_wait(i32 %289, i32 0, i32 %290, i32 1000)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %311

293:                                              ; preds = %280
  %294 = load i32, i32* %3, align 4
  %295 = call i32 @device_printf(i32 %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %296 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %297 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @xpt_freeze_simq(i32 %298, i32 1)
  %300 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %301 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = shl i32 1, %302
  %304 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %305 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 4
  %308 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %309 = load i32, i32* @MVS_ERR_TIMEOUT, align 4
  %310 = call i32 @mvs_end_transaction(%struct.mvs_slot* %308, i32 %309)
  br label %469

311:                                              ; preds = %280
  store i32 5000, i32* %8, align 4
  br label %312

312:                                              ; preds = %343, %311
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %8, align 4
  %315 = icmp ne i32 %313, 0
  br i1 %315, label %316, label %345

316:                                              ; preds = %312
  %317 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %318 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @ATA_IREASON, align 4
  %321 = call i8* @ATA_INB(i32 %319, i32 %320)
  %322 = ptrtoint i8* %321 to i32
  store i32 %322, i32* %10, align 4
  %323 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %324 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @ATA_STATUS, align 4
  %327 = call i8* @ATA_INB(i32 %325, i32 %326)
  %328 = ptrtoint i8* %327 to i32
  store i32 %328, i32* %11, align 4
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* @ATA_I_CMD, align 4
  %331 = load i32, i32* @ATA_I_IN, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %329, %332
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* @ATA_S_DRQ, align 4
  %336 = load i32, i32* @ATA_S_BUSY, align 4
  %337 = or i32 %335, %336
  %338 = and i32 %334, %337
  %339 = or i32 %333, %338
  %340 = load i32, i32* @ATAPI_P_CMDOUT, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %316
  br label %345

343:                                              ; preds = %316
  %344 = call i32 @DELAY(i32 20)
  br label %312

345:                                              ; preds = %342, %312
  %346 = load i32, i32* %8, align 4
  %347 = icmp sle i32 %346, 0
  br i1 %347, label %348, label %366

348:                                              ; preds = %345
  %349 = load i32, i32* %3, align 4
  %350 = call i32 @device_printf(i32 %349, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %351 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %352 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %351, i32 0, i32 8
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @xpt_freeze_simq(i32 %353, i32 1)
  %355 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %356 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = shl i32 1, %357
  %359 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %360 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 4
  %363 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %364 = load i32, i32* @MVS_ERR_TIMEOUT, align 4
  %365 = call i32 @mvs_end_transaction(%struct.mvs_slot* %363, i32 %364)
  br label %469

366:                                              ; preds = %345
  %367 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %368 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @ATA_DATA, align 4
  %371 = load %union.ccb*, %union.ccb** %6, align 8
  %372 = bitcast %union.ccb* %371 to %struct.TYPE_13__*
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @CAM_CDB_POINTER, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %366
  %379 = load %union.ccb*, %union.ccb** %6, align 8
  %380 = bitcast %union.ccb* %379 to %struct.TYPE_15__*
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  br label %390

384:                                              ; preds = %366
  %385 = load %union.ccb*, %union.ccb** %6, align 8
  %386 = bitcast %union.ccb* %385 to %struct.TYPE_15__*
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  br label %390

390:                                              ; preds = %384, %378
  %391 = phi i64 [ %383, %378 ], [ %389, %384 ]
  %392 = inttoptr i64 %391 to i32*
  %393 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %394 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %393, i32 0, i32 7
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %394, align 8
  %396 = load i32, i32* %7, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sdiv i32 %400, 2
  %402 = call i32 @ATA_OUTSW_STRM(i32 %369, i32 %370, i32* %392, i32 %401)
  %403 = call i32 @DELAY(i32 10)
  %404 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %405 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %404, i32 0, i32 6
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %455

408:                                              ; preds = %390
  %409 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %410 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @MVS_EPRD_OFFSET, align 4
  %414 = add nsw i32 %412, %413
  %415 = load i32, i32* @MVS_EPRD_SIZE, align 4
  %416 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %417 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = mul nsw i32 %415, %418
  %420 = add nsw i32 %414, %419
  store i32 %420, i32* %5, align 4
  %421 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %422 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @DMA_DTLBA, align 4
  %425 = load i32, i32* %5, align 4
  %426 = call i32 @ATA_OUTL(i32 %423, i32 %424, i32 %425)
  %427 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %428 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @DMA_DTHBA, align 4
  %431 = load i32, i32* %5, align 4
  %432 = ashr i32 %431, 16
  %433 = ashr i32 %432, 16
  %434 = call i32 @ATA_OUTL(i32 %429, i32 %430, i32 %433)
  %435 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %436 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %435, i32 0, i32 4
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @DMA_C, align 4
  %439 = load i32, i32* @DMA_C_START, align 4
  %440 = load %union.ccb*, %union.ccb** %6, align 8
  %441 = bitcast %union.ccb* %440 to %struct.TYPE_13__*
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @CAM_DIR_MASK, align 4
  %445 = and i32 %443, %444
  %446 = load i32, i32* @CAM_DIR_IN, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %450

448:                                              ; preds = %408
  %449 = load i32, i32* @DMA_C_READ, align 4
  br label %451

450:                                              ; preds = %408
  br label %451

451:                                              ; preds = %450, %448
  %452 = phi i32 [ %449, %448 ], [ 0, %450 ]
  %453 = or i32 %439, %452
  %454 = call i32 @ATA_OUTL(i32 %437, i32 %438, i32 %453)
  br label %455

455:                                              ; preds = %451, %390
  br label %456

456:                                              ; preds = %455, %216
  %457 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %458 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %457, i32 0, i32 1
  %459 = load i32, i32* @SBT_1MS, align 4
  %460 = load %union.ccb*, %union.ccb** %6, align 8
  %461 = bitcast %union.ccb* %460 to %struct.TYPE_13__*
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 4
  %464 = mul nsw i32 %459, %463
  %465 = load i64, i64* @mvs_timeout, align 8
  %466 = inttoptr i64 %465 to i32*
  %467 = load %struct.mvs_slot*, %struct.mvs_slot** %2, align 8
  %468 = call i32 @callout_reset_sbt(i32* %458, i32 %464, i32 0, i32* %466, %struct.mvs_slot* %467, i32 0)
  br label %469

469:                                              ; preds = %456, %348, %293, %179, %89
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

declare dso_local i32 @mvs_tfd_write(i32, %union.ccb*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i8* @ATA_INB(i32, i32) #1

declare dso_local i32 @mvs_legacy_intr(i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i64 @mvs_wait(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @mvs_end_transaction(%struct.mvs_slot*, i32) #1

declare dso_local i32 @ATA_OUTSW_STRM(i32, i32, i32*, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.mvs_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
