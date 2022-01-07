; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_5__*, i64, i64, i64, i32, %union.ccb**, %struct.TYPE_6__*, %union.ccb*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"SIIS reset...\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@SIIS_SLOT_RUNNING = common dso_local global i64 0, align 8
@SIIS_ERR_INNOCENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SIIS_P_IECLR = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN1 = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN2 = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN3 = common dso_local global i32 0, align 4
@SIIS_P_SCTL = common dso_local global i32 0, align 4
@ATA_SC_DET_IDLE = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_PARTIAL = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_SLUMBER = common dso_local global i32 0, align 4
@SIIS_P_IESET = common dso_local global i32 0, align 4
@SIIS_P_IX_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"SIIS reset done: phy reset found no device\0A\00", align 1
@AC_BUS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"port ready timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"trying full port reset ...\0A\00", align 1
@SIIS_P_CTLSET = common dso_local global i32 0, align 4
@SIIS_P_CTL_PORT_RESET = common dso_local global i32 0, align 4
@SIIS_P_CTLCLR = common dso_local global i32 0, align 4
@SIIS_P_CTL_32BIT = common dso_local global i32 0, align 4
@SIIS_P_CTL_PME = common dso_local global i32 0, align 4
@SIIS_P_IS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"SIIS reset done: devices=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @siis_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.siis_channel* @device_get_softc(i32 %9)
  store %struct.siis_channel* %10, %struct.siis_channel** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %12 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @xpt_freeze_simq(i32 %13, i32 1)
  %15 = load i64, i64* @bootverbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %22 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %21, i32 0, i32 16
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %27 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %32 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %35 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @xpt_freeze_simq(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %25, %20
  %39 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %40 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %39, i32 0, i32 15
  %41 = load %union.ccb*, %union.ccb** %40, align 8
  %42 = icmp ne %union.ccb* %41, null
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  %44 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %45 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %44, i32 0, i32 15
  %46 = load %union.ccb*, %union.ccb** %45, align 8
  store %union.ccb* %46, %union.ccb** %8, align 8
  %47 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %48 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %47, i32 0, i32 15
  store %union.ccb* null, %union.ccb** %48, align 8
  %49 = load i32, i32* @CAM_STATUS_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load %union.ccb*, %union.ccb** %8, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %57 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %58 = or i32 %56, %57
  %59 = load %union.ccb*, %union.ccb** %8, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load %union.ccb*, %union.ccb** %8, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %43
  %72 = load %union.ccb*, %union.ccb** %8, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @xpt_freeze_devq(i32 %75, i32 1)
  %77 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %78 = load %union.ccb*, %union.ccb** %8, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %71, %43
  %84 = load %union.ccb*, %union.ccb** %8, align 8
  %85 = call i32 @xpt_done(%union.ccb* %84)
  br label %86

86:                                               ; preds = %83, %38
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %112, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %93 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %92, i32 0, i32 14
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SIIS_SLOT_RUNNING, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %112

103:                                              ; preds = %91
  %104 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %105 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %104, i32 0, i32 14
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = load i32, i32* @SIIS_ERR_INNOCENT, align 4
  %111 = call i32 @siis_end_transaction(%struct.TYPE_6__* %109, i32 %110)
  br label %112

112:                                              ; preds = %103, %102
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %87

115:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %149, %115
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %152

120:                                              ; preds = %116
  %121 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %122 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %121, i32 0, i32 13
  %123 = load %union.ccb**, %union.ccb*** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %union.ccb*, %union.ccb** %123, i64 %125
  %127 = load %union.ccb*, %union.ccb** %126, align 8
  %128 = icmp ne %union.ccb* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %120
  br label %149

130:                                              ; preds = %120
  %131 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %132 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %131, i32 0, i32 13
  %133 = load %union.ccb**, %union.ccb*** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %union.ccb*, %union.ccb** %133, i64 %135
  %137 = load %union.ccb*, %union.ccb** %136, align 8
  %138 = call i32 @xpt_done(%union.ccb* %137)
  %139 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %140 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %139, i32 0, i32 13
  %141 = load %union.ccb**, %union.ccb*** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %union.ccb*, %union.ccb** %141, i64 %143
  store %union.ccb* null, %union.ccb** %144, align 8
  %145 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %146 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %130, %129
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %116

152:                                              ; preds = %116
  %153 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %154 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %159 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TRUE, align 4
  %162 = call i32 @xpt_release_simq(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %152
  %164 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %165 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %164, i32 0, i32 11
  store i64 0, i64* %165, align 8
  %166 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %167 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %166, i32 0, i32 10
  store i64 0, i64* %167, align 8
  %168 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %169 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %168, i32 0, i32 1
  store i64 0, i64* %169, align 8
  %170 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %171 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %170, i32 0, i32 9
  store i64 0, i64* %171, align 8
  %172 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %173 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SIIS_P_IECLR, align 4
  %176 = call i32 @ATA_OUTL(i32 %174, i32 %175, i32 65535)
  %177 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %178 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %177, i32 0, i32 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %181 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 15, i32 0
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %194

192:                                              ; preds = %163
  %193 = load i32, i32* @ATA_SC_SPD_SPEED_GEN1, align 4
  store i32 %193, i32* %7, align 4
  br label %207

194:                                              ; preds = %163
  %195 = load i32, i32* %6, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, i32* @ATA_SC_SPD_SPEED_GEN2, align 4
  store i32 %198, i32* %7, align 4
  br label %206

199:                                              ; preds = %194
  %200 = load i32, i32* %6, align 4
  %201 = icmp eq i32 %200, 3
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i32, i32* @ATA_SC_SPD_SPEED_GEN3, align 4
  store i32 %203, i32* %7, align 4
  br label %205

204:                                              ; preds = %199
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %204, %202
  br label %206

206:                                              ; preds = %205, %197
  br label %207

207:                                              ; preds = %206, %192
  %208 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %209 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @SIIS_P_SCTL, align 4
  %212 = load i32, i32* @ATA_SC_DET_IDLE, align 4
  %213 = load i32, i32* %7, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %216 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %207
  br label %224

220:                                              ; preds = %207
  %221 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %222 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %223 = or i32 %221, %222
  br label %224

224:                                              ; preds = %220, %219
  %225 = phi i32 [ 0, %219 ], [ %223, %220 ]
  %226 = or i32 %214, %225
  %227 = call i32 @ATA_OUTL(i32 %210, i32 %211, i32 %226)
  br label %228

228:                                              ; preds = %308, %224
  %229 = load i32, i32* %2, align 4
  %230 = call i32 @siis_devreset(i32 %229)
  %231 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %232 = call i32 @siis_sata_connect(%struct.siis_channel* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %259, label %234

234:                                              ; preds = %228
  %235 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %236 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %235, i32 0, i32 3
  store i32 0, i32* %236, align 8
  %237 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %238 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @SIIS_P_IESET, align 4
  %241 = load i32, i32* @SIIS_P_IX_ENABLED, align 4
  %242 = call i32 @ATA_OUTL(i32 %239, i32 %240, i32 %241)
  %243 = load i64, i64* @bootverbose, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %234
  %246 = load i32, i32* %2, align 4
  %247 = call i32 (i32, i8*, ...) @device_printf(i32 %246, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %248

248:                                              ; preds = %245, %234
  %249 = load i32, i32* @AC_BUS_RESET, align 4
  %250 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %251 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @xpt_async(i32 %249, i32 %252, i32* null)
  %254 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %255 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @TRUE, align 4
  %258 = call i32 @xpt_release_simq(i32 %256, i32 %257)
  br label %345

259:                                              ; preds = %228
  %260 = load i32, i32* %2, align 4
  %261 = call i64 @siis_wait_ready(i32 %260, i32 1000)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %312

263:                                              ; preds = %259
  %264 = load i32, i32* %2, align 4
  %265 = call i32 (i32, i8*, ...) @device_printf(i32 %264, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %266 = load i32, i32* %5, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %311, label %268

268:                                              ; preds = %263
  %269 = load i32, i32* %2, align 4
  %270 = call i32 (i32, i8*, ...) @device_printf(i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %271 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %272 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @SIIS_P_CTLSET, align 4
  %275 = load i32, i32* @SIIS_P_CTL_PORT_RESET, align 4
  %276 = call i32 @ATA_OUTL(i32 %273, i32 %274, i32 %275)
  %277 = call i32 @DELAY(i32 10000)
  %278 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %279 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @SIIS_P_CTLCLR, align 4
  %282 = load i32, i32* @SIIS_P_CTL_PORT_RESET, align 4
  %283 = call i32 @ATA_OUTL(i32 %280, i32 %281, i32 %282)
  %284 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %285 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @SIIS_P_CTLCLR, align 4
  %288 = load i32, i32* @SIIS_P_CTL_32BIT, align 4
  %289 = call i32 @ATA_OUTL(i32 %286, i32 %287, i32 %288)
  %290 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %291 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %290, i32 0, i32 7
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %268
  %295 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %296 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @SIIS_P_CTLSET, align 4
  %299 = load i32, i32* @SIIS_P_CTL_PME, align 4
  %300 = call i32 @ATA_OUTL(i32 %297, i32 %298, i32 %299)
  br label %308

301:                                              ; preds = %268
  %302 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %303 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @SIIS_P_CTLCLR, align 4
  %306 = load i32, i32* @SIIS_P_CTL_PME, align 4
  %307 = call i32 @ATA_OUTL(i32 %304, i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %301, %294
  %309 = load i32, i32* %2, align 4
  %310 = call i64 @siis_wait_ready(i32 %309, i32 5000)
  store i32 1, i32* %5, align 4
  br label %228

311:                                              ; preds = %263
  br label %312

312:                                              ; preds = %311, %259
  %313 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %314 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %313, i32 0, i32 3
  store i32 1, i32* %314, align 8
  %315 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %316 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @SIIS_P_IS, align 4
  %319 = call i32 @ATA_OUTL(i32 %317, i32 %318, i32 -1)
  %320 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %321 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @SIIS_P_IESET, align 4
  %324 = load i32, i32* @SIIS_P_IX_ENABLED, align 4
  %325 = call i32 @ATA_OUTL(i32 %322, i32 %323, i32 %324)
  %326 = load i64, i64* @bootverbose, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %312
  %329 = load i32, i32* %2, align 4
  %330 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %331 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (i32, i8*, ...) @device_printf(i32 %329, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %328, %312
  %335 = load i32, i32* @AC_BUS_RESET, align 4
  %336 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %337 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @xpt_async(i32 %335, i32 %338, i32* null)
  %340 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %341 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @TRUE, align 4
  %344 = call i32 @xpt_release_simq(i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %334, %248
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @siis_end_transaction(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @siis_devreset(i32) #1

declare dso_local i32 @siis_sata_connect(%struct.siis_channel*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i64 @siis_wait_ready(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
