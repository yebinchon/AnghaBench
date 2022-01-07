; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, %union.ccb**, %struct.TYPE_4__*, %union.ccb* }
%struct.TYPE_4__ = type { i64 }
%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ahci_controller = type { i64 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"AHCI reset...\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@AHCI_SLOT_RUNNING = common dso_local global i64 0, align 8
@AHCI_ERR_INNOCENT = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@AHCI_P_IE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"AHCI reset: device not found\0A\00", align 1
@AHCI_P_IX_CPD = common dso_local global i32 0, align 4
@AHCI_P_IX_MP = common dso_local global i32 0, align 4
@AHCI_P_IX_PRC = common dso_local global i32 0, align 4
@AHCI_P_IX_PC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"AHCI reset: device found\0A\00", align 1
@dumping = common dso_local global i64 0, align 8
@AHCI_P_IX_TFE = common dso_local global i32 0, align 4
@AHCI_P_IX_HBF = common dso_local global i32 0, align 4
@AHCI_P_IX_HBD = common dso_local global i32 0, align 4
@AHCI_P_IX_IF = common dso_local global i32 0, align 4
@AHCI_P_IX_OF = common dso_local global i32 0, align 4
@AHCI_P_IX_DP = common dso_local global i32 0, align 4
@AHCI_P_IX_UF = common dso_local global i32 0, align 4
@AHCI_P_IX_SDB = common dso_local global i32 0, align 4
@AHCI_P_IX_DS = common dso_local global i32 0, align 4
@AHCI_P_IX_PS = common dso_local global i32 0, align 4
@AHCI_P_IX_DHR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ahci_reset_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*)* @ahci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_reset(%struct.ahci_channel* %0) #0 {
  %2 = alloca %struct.ahci_channel*, align 8
  %3 = alloca %struct.ahci_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  store %struct.ahci_channel* %0, %struct.ahci_channel** %2, align 8
  %6 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %7 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call %struct.ahci_controller* @device_get_softc(i32 %9)
  store %struct.ahci_controller* %10, %struct.ahci_controller** %3, align 8
  %11 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %12 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @xpt_freeze_simq(i32 %13, i32 1)
  %15 = load i64, i64* @bootverbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %19 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %24 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %29 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %31 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %30, i32 0, i32 6
  %32 = call i32 @callout_stop(i32* %31)
  %33 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %34 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @xpt_release_simq(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %40 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %39, i32 0, i32 16
  %41 = load %union.ccb*, %union.ccb** %40, align 8
  %42 = icmp ne %union.ccb* %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  %44 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %45 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %44, i32 0, i32 16
  %46 = load %union.ccb*, %union.ccb** %45, align 8
  store %union.ccb* %46, %union.ccb** %5, align 8
  %47 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %48 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %47, i32 0, i32 16
  store %union.ccb* null, %union.ccb** %48, align 8
  %49 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %50 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %51 = or i32 %49, %50
  %52 = load %union.ccb*, %union.ccb** %5, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %union.ccb*, %union.ccb** %5, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %43
  %63 = load %union.ccb*, %union.ccb** %5, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xpt_freeze_devq(i32 %66, i32 1)
  %68 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %69 = load %union.ccb*, %union.ccb** %5, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_3__*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %62, %43
  %75 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %76 = load %union.ccb*, %union.ccb** %5, align 8
  %77 = call i32 @ahci_done(%struct.ahci_channel* %75, %union.ccb* %76)
  br label %78

78:                                               ; preds = %74, %38
  %79 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %80 = call i32 @ahci_stop(%struct.ahci_channel* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %108, %78
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %84 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %89 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %88, i32 0, i32 15
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AHCI_SLOT_RUNNING, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %108

99:                                               ; preds = %87
  %100 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %101 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %100, i32 0, i32 15
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = load i32, i32* @AHCI_ERR_INNOCENT, align 4
  %107 = call i32 @ahci_end_transaction(%struct.TYPE_4__* %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %98
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %81

111:                                              ; preds = %81
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %148, %111
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %115 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %112
  %119 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %120 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %119, i32 0, i32 14
  %121 = load %union.ccb**, %union.ccb*** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %union.ccb*, %union.ccb** %121, i64 %123
  %125 = load %union.ccb*, %union.ccb** %124, align 8
  %126 = icmp ne %union.ccb* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %118
  br label %148

128:                                              ; preds = %118
  %129 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %130 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %131 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %130, i32 0, i32 14
  %132 = load %union.ccb**, %union.ccb*** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %union.ccb*, %union.ccb** %132, i64 %134
  %136 = load %union.ccb*, %union.ccb** %135, align 8
  %137 = call i32 @ahci_done(%struct.ahci_channel* %129, %union.ccb* %136)
  %138 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %139 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %138, i32 0, i32 14
  %140 = load %union.ccb**, %union.ccb*** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %union.ccb*, %union.ccb** %140, i64 %142
  store %union.ccb* null, %union.ccb** %143, align 8
  %144 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %145 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %128, %127
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %112

151:                                              ; preds = %112
  %152 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %153 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %158 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @TRUE, align 4
  %161 = call i32 @xpt_release_simq(i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %156, %151
  %163 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %164 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %163, i32 0, i32 12
  store i64 0, i64* %164, align 8
  %165 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %166 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %168 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %167, i32 0, i32 11
  store i64 0, i64* %168, align 8
  %169 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %170 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %169, i32 0, i32 10
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* @AC_BUS_RESET, align 4
  %172 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %173 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @xpt_async(i32 %171, i32 %174, i32* null)
  %176 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %177 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @AHCI_P_IE, align 4
  %180 = call i32 @ATA_OUTL(i32 %178, i32 %179, i32 0)
  %181 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %182 = call i32 @ahci_sata_phy_reset(%struct.ahci_channel* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %220, label %184

184:                                              ; preds = %162
  %185 = load i64, i64* @bootverbose, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %189 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @device_printf(i32 %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %192

192:                                              ; preds = %187, %184
  %193 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %194 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %193, i32 0, i32 3
  store i32 0, i32* %194, align 8
  %195 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %196 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @AHCI_P_IE, align 4
  %199 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %200 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %192
  %204 = load i32, i32* @AHCI_P_IX_CPD, align 4
  %205 = load i32, i32* @AHCI_P_IX_MP, align 4
  %206 = or i32 %204, %205
  br label %208

207:                                              ; preds = %192
  br label %208

208:                                              ; preds = %207, %203
  %209 = phi i32 [ %206, %203 ], [ 0, %207 ]
  %210 = load i32, i32* @AHCI_P_IX_PRC, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @AHCI_P_IX_PC, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @ATA_OUTL(i32 %197, i32 %198, i32 %213)
  %215 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %216 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @TRUE, align 4
  %219 = call i32 @xpt_release_simq(i32 %217, i32 %218)
  br label %335

220:                                              ; preds = %162
  %221 = load i64, i64* @bootverbose, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %225 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @device_printf(i32 %226, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %228

228:                                              ; preds = %223, %220
  %229 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %230 = load i64, i64* @dumping, align 8
  %231 = icmp ne i64 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 31000, i32 0
  %234 = call i64 @ahci_wait_ready(%struct.ahci_channel* %229, i32 %233, i32 0)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %228
  %237 = load i64, i64* @dumping, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %241 = call i32 @ahci_clo(%struct.ahci_channel* %240)
  br label %245

242:                                              ; preds = %236
  %243 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %244 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %243, i32 0, i32 0
  store i32 310, i32* %244, align 8
  br label %245

245:                                              ; preds = %242, %239
  br label %246

246:                                              ; preds = %245, %228
  %247 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %248 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %247, i32 0, i32 3
  store i32 1, i32* %248, align 8
  %249 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %250 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @AHCI_P_IE, align 4
  %253 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %254 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %246
  %258 = load i32, i32* @AHCI_P_IX_CPD, align 4
  %259 = load i32, i32* @AHCI_P_IX_MP, align 4
  %260 = or i32 %258, %259
  br label %262

261:                                              ; preds = %246
  br label %262

262:                                              ; preds = %261, %257
  %263 = phi i32 [ %260, %257 ], [ 0, %261 ]
  %264 = load i32, i32* @AHCI_P_IX_TFE, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @AHCI_P_IX_HBF, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* @AHCI_P_IX_HBD, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @AHCI_P_IX_IF, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @AHCI_P_IX_OF, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %275 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %262
  %279 = load i32, i32* @AHCI_P_IX_PRC, align 4
  br label %281

280:                                              ; preds = %262
  br label %281

281:                                              ; preds = %280, %278
  %282 = phi i32 [ %279, %278 ], [ 0, %280 ]
  %283 = or i32 %273, %282
  %284 = load i32, i32* @AHCI_P_IX_PC, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @AHCI_P_IX_DP, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @AHCI_P_IX_UF, align 4
  %289 = or i32 %287, %288
  %290 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %291 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %281
  br label %297

295:                                              ; preds = %281
  %296 = load i32, i32* @AHCI_P_IX_SDB, align 4
  br label %297

297:                                              ; preds = %295, %294
  %298 = phi i32 [ 0, %294 ], [ %296, %295 ]
  %299 = or i32 %289, %298
  %300 = load i32, i32* @AHCI_P_IX_DS, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @AHCI_P_IX_PS, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %305 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %297
  br label %311

309:                                              ; preds = %297
  %310 = load i32, i32* @AHCI_P_IX_DHR, align 4
  br label %311

311:                                              ; preds = %309, %308
  %312 = phi i32 [ 0, %308 ], [ %310, %309 ]
  %313 = or i32 %303, %312
  %314 = call i32 @ATA_OUTL(i32 %251, i32 %252, i32 %313)
  %315 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %316 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %311
  %320 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %321 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %320, i32 0, i32 6
  %322 = load i32, i32* @hz, align 4
  %323 = sdiv i32 %322, 10
  %324 = load i32, i32* @ahci_reset_to, align 4
  %325 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %326 = call i32 @callout_reset(i32* %321, i32 %323, i32 %324, %struct.ahci_channel* %325)
  br label %335

327:                                              ; preds = %311
  %328 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %329 = call i32 @ahci_start(%struct.ahci_channel* %328, i32 1)
  %330 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %331 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @TRUE, align 4
  %334 = call i32 @xpt_release_simq(i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %208, %327, %319
  ret void
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_stop(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_end_transaction(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ahci_sata_phy_reset(%struct.ahci_channel*) #1

declare dso_local i64 @ahci_wait_ready(%struct.ahci_channel*, i32, i32) #1

declare dso_local i32 @ahci_clo(%struct.ahci_channel*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ahci_channel*) #1

declare dso_local i32 @ahci_start(%struct.ahci_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
