; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_slot = type { i64, i32, %struct.TYPE_6__*, i32, %struct.ahci_channel* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ahci_channel = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i64, %union.ccb*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@AHCI_SLOT_RUNNING = common dso_local global i64 0, align 8
@AHCI_SLOT_EXECUTING = common dso_local global i64 0, align 8
@AHCI_P_SACT = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_CCS_MASK = common dso_local global i32 0, align 4
@AHCI_P_CMD_CCS_SHIFT = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Timeout on slot %d port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"is %08x cs %08x ss %08x rs %08x tfd %02x serr %08x cmd %08x\0A\00", align 1
@AHCI_P_IS = common dso_local global i32 0, align 4
@AHCI_P_CI = common dso_local global i32 0, align 4
@AHCI_P_TFD = common dso_local global i32 0, align 4
@AHCI_P_SERR = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@AHCI_ERR_TIMEOUT = common dso_local global i32 0, align 4
@AHCI_ERR_INNOCENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c" ... waiting for slots %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_slot*)* @ahci_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_timeout(%struct.ahci_slot* %0) #0 {
  %2 = alloca %struct.ahci_slot*, align 8
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  store %struct.ahci_slot* %0, %struct.ahci_slot** %2, align 8
  %9 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %10 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %9, i32 0, i32 4
  %11 = load %struct.ahci_channel*, %struct.ahci_channel** %10, align 8
  store %struct.ahci_channel* %11, %struct.ahci_channel** %3, align 8
  %12 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %16 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AHCI_SLOT_RUNNING, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %282

21:                                               ; preds = %1
  %22 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %23 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AHCI_SLOT_EXECUTING, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %21
  %28 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %29 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AHCI_P_SACT, align 4
  %32 = call i32 @ATA_INL(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %34 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AHCI_P_CMD, align 4
  %37 = call i32 @ATA_INL(i32 %35, i32 %36)
  %38 = load i32, i32* @AHCI_P_CMD_CCS_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @AHCI_P_CMD_CCS_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %44 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 1, %45
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %52 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %57 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %62 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %55, %49, %27
  %66 = load i64, i64* @AHCI_SLOT_EXECUTING, align 8
  %67 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %68 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %84

69:                                               ; preds = %60
  %70 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %71 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %79 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i64, i64* @AHCI_SLOT_EXECUTING, align 8
  %81 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %82 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %69
  br label %84

84:                                               ; preds = %83, %65
  %85 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %86 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %85, i32 0, i32 3
  %87 = load i32, i32* @SBT_1MS, align 4
  %88 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %89 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %87, %93
  %95 = sdiv i32 %94, 2
  %96 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %97 = call i32 @callout_reset_sbt(i32* %86, i32 %95, i32 0, i32* bitcast (void (%struct.ahci_slot*)* @ahci_timeout to i32*), %struct.ahci_slot* %96, i32 0)
  br label %282

98:                                               ; preds = %21
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %101 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %104 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 15
  %110 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %113 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AHCI_P_IS, align 4
  %116 = call i32 @ATA_INL(i32 %114, i32 %115)
  %117 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %118 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @AHCI_P_CI, align 4
  %121 = call i32 @ATA_INL(i32 %119, i32 %120)
  %122 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %123 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AHCI_P_SACT, align 4
  %126 = call i32 @ATA_INL(i32 %124, i32 %125)
  %127 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %128 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %131 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AHCI_P_TFD, align 4
  %134 = call i32 @ATA_INL(i32 %132, i32 %133)
  %135 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %136 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @AHCI_P_SERR, align 4
  %139 = call i32 @ATA_INL(i32 %137, i32 %138)
  %140 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %141 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @AHCI_P_CMD, align 4
  %144 = call i32 @ATA_INL(i32 %142, i32 %143)
  %145 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %121, i32 %126, i32 %129, i32 %134, i32 %139, i32 %144)
  %146 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %147 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %146, i32 0, i32 8
  %148 = load %union.ccb*, %union.ccb** %147, align 8
  %149 = icmp ne %union.ccb* %148, null
  br i1 %149, label %150, label %185

150:                                              ; preds = %98
  %151 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %152 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %151, i32 0, i32 8
  %153 = load %union.ccb*, %union.ccb** %152, align 8
  store %union.ccb* %153, %union.ccb** %8, align 8
  %154 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %155 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %154, i32 0, i32 8
  store %union.ccb* null, %union.ccb** %155, align 8
  %156 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %157 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %158 = or i32 %156, %157
  %159 = load %union.ccb*, %union.ccb** %8, align 8
  %160 = bitcast %union.ccb* %159 to %struct.TYPE_7__*
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 4
  %162 = load %union.ccb*, %union.ccb** %8, align 8
  %163 = bitcast %union.ccb* %162 to %struct.TYPE_7__*
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %150
  %170 = load %union.ccb*, %union.ccb** %8, align 8
  %171 = bitcast %union.ccb* %170 to %struct.TYPE_7__*
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @xpt_freeze_devq(i32 %173, i32 1)
  %175 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %176 = load %union.ccb*, %union.ccb** %8, align 8
  %177 = bitcast %union.ccb* %176 to %struct.TYPE_7__*
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %169, %150
  %182 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %183 = load %union.ccb*, %union.ccb** %8, align 8
  %184 = call i32 @ahci_done(%struct.ahci_channel* %182, %union.ccb* %183)
  br label %185

185:                                              ; preds = %181, %98
  %186 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %187 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %239, label %190

190:                                              ; preds = %185
  %191 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %192 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %239, label %195

195:                                              ; preds = %190
  %196 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %197 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %196, i32 0, i32 2
  store i32 1, i32* %197, align 8
  %198 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %199 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %198, i32 0, i32 6
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %202 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %204
  %206 = load i32, i32* @AHCI_ERR_TIMEOUT, align 4
  %207 = call i32 @ahci_end_transaction(%struct.TYPE_8__* %205, i32 %206)
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %235, %195
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %211 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %238

214:                                              ; preds = %208
  %215 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %216 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %215, i32 0, i32 6
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @AHCI_SLOT_RUNNING, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %214
  br label %235

226:                                              ; preds = %214
  %227 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %228 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %227, i32 0, i32 6
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %231
  %233 = load i32, i32* @AHCI_ERR_INNOCENT, align 4
  %234 = call i32 @ahci_end_transaction(%struct.TYPE_8__* %232, i32 %233)
  br label %235

235:                                              ; preds = %226, %225
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %7, align 4
  br label %208

238:                                              ; preds = %208
  br label %282

239:                                              ; preds = %190, %185
  %240 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %241 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %246 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @xpt_freeze_simq(i32 %247, i32 1)
  br label %249

249:                                              ; preds = %244, %239
  %250 = load %struct.ahci_slot*, %struct.ahci_slot** %2, align 8
  %251 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = shl i32 1, %252
  %254 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %255 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 8
  %258 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %259 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %262 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = xor i32 %263, -1
  %265 = and i32 %260, %264
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %249
  %268 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %269 = call i32 @ahci_process_timeout(%struct.ahci_channel* %268)
  br label %281

270:                                              ; preds = %249
  %271 = load i32, i32* %4, align 4
  %272 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %273 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %276 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = xor i32 %277, -1
  %279 = and i32 %274, %278
  %280 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %271, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %279)
  br label %281

281:                                              ; preds = %270, %267
  br label %282

282:                                              ; preds = %20, %84, %281, %238
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.ahci_slot*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_end_transaction(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @ahci_process_timeout(%struct.ahci_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
