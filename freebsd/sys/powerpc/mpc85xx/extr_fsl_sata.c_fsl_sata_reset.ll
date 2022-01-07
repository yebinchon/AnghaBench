; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i64, i32, i32, i32, i32, i32, i64, i64, i32, %union.ccb**, %struct.TYPE_4__*, %union.ccb* }
%struct.TYPE_4__ = type { i64 }
%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"FSL SATA reset...\0A\00", align 1
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@FSL_SATA_SLOT_RUNNING = common dso_local global i64 0, align 8
@FSL_SATA_ERR_INNOCENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL = common dso_local global i32 0, align 4
@FSL_SATA_P_HSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"FSL SATA reset: device not found\0A\00", align 1
@FSL_SATA_P_HCTRL_PHYRDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"FSL SATA reset: device found\0A\00", align 1
@FSL_SATA_P_HCTRL_FATAL = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_SIG = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_SNTFY = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_DE = common dso_local global i32 0, align 4
@FSL_SATA_P_HCTRL_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*)* @fsl_sata_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_reset(%struct.fsl_sata_channel* %0) #0 {
  %2 = alloca %struct.fsl_sata_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %2, align 8
  %6 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @xpt_freeze_simq(i32 %8, i32 1)
  %10 = load i64, i64* @bootverbose, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %19 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %18, i32 0, i32 11
  %20 = load %union.ccb*, %union.ccb** %19, align 8
  %21 = icmp ne %union.ccb* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %24 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %23, i32 0, i32 11
  %25 = load %union.ccb*, %union.ccb** %24, align 8
  store %union.ccb* %25, %union.ccb** %5, align 8
  %26 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %27 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %26, i32 0, i32 11
  store %union.ccb* null, %union.ccb** %27, align 8
  %28 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %29 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %30 = or i32 %28, %29
  %31 = load %union.ccb*, %union.ccb** %5, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %union.ccb*, %union.ccb** %5, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %22
  %42 = load %union.ccb*, %union.ccb** %5, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xpt_freeze_devq(i32 %45, i32 1)
  %47 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %48 = load %union.ccb*, %union.ccb** %5, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %41, %22
  %54 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %55 = load %union.ccb*, %union.ccb** %5, align 8
  %56 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %54, %union.ccb* %55)
  br label %57

57:                                               ; preds = %53, %17
  %58 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %59 = call i32 @fsl_sata_stop(%struct.fsl_sata_channel* %58)
  %60 = call i32 @DELAY(i32 1000)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %86, %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %67 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %66, i32 0, i32 10
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FSL_SATA_SLOT_RUNNING, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %86

77:                                               ; preds = %65
  %78 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %79 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %78, i32 0, i32 10
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = load i32, i32* @FSL_SATA_ERR_INNOCENT, align 4
  %85 = call i32 @fsl_sata_end_transaction(%struct.TYPE_4__* %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %76
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %61

89:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %124, %89
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %90
  %95 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %96 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %95, i32 0, i32 9
  %97 = load %union.ccb**, %union.ccb*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %union.ccb*, %union.ccb** %97, i64 %99
  %101 = load %union.ccb*, %union.ccb** %100, align 8
  %102 = icmp ne %union.ccb* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %124

104:                                              ; preds = %94
  %105 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %106 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %107 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %106, i32 0, i32 9
  %108 = load %union.ccb**, %union.ccb*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %union.ccb*, %union.ccb** %108, i64 %110
  %112 = load %union.ccb*, %union.ccb** %111, align 8
  %113 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %105, %union.ccb* %112)
  %114 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %115 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %114, i32 0, i32 9
  %116 = load %union.ccb**, %union.ccb*** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %union.ccb*, %union.ccb** %116, i64 %118
  store %union.ccb* null, %union.ccb** %119, align 8
  %120 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %121 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %104, %103
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %90

127:                                              ; preds = %90
  %128 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %129 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %134 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i32 @xpt_release_simq(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %140 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %139, i32 0, i32 7
  store i64 0, i64* %140, align 8
  %141 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %142 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %144 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %143, i32 0, i32 6
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* @AC_BUS_RESET, align 4
  %146 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %147 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @xpt_async(i32 %145, i32 %148, i32* null)
  %150 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %151 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %154 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %155 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %158 = call i32 @ATA_INL(i32 %156, i32 %157)
  %159 = and i32 %158, -64
  %160 = call i32 @ATA_OUTL(i32 %152, i32 %153, i32 %159)
  %161 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %162 = call i32 @fsl_sata_start(%struct.fsl_sata_channel* %161)
  %163 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %164 = load i32, i32* @FSL_SATA_P_HSTS, align 4
  %165 = call i64 @fsl_sata_wait_register(%struct.fsl_sata_channel* %163, i32 %164, i32 8, i32 8, i32 500)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %138
  %168 = load i64, i64* @bootverbose, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %172 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @device_printf(i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %175

175:                                              ; preds = %170, %167
  %176 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %177 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %176, i32 0, i32 1
  store i32 0, i32* %177, align 8
  %178 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %179 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %182 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %183 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %186 = call i32 @ATA_INL(i32 %184, i32 %185)
  %187 = load i32, i32* @FSL_SATA_P_HCTRL_PHYRDY, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @ATA_OUTL(i32 %180, i32 %181, i32 %188)
  %190 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %191 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @TRUE, align 4
  %194 = call i32 @xpt_release_simq(i32 %192, i32 %193)
  br label %235

195:                                              ; preds = %138
  %196 = load i64, i64* @bootverbose, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %200 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @device_printf(i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %203

203:                                              ; preds = %198, %195
  %204 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %205 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  %206 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %207 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %210 = call i32 @ATA_INL(i32 %208, i32 %209)
  %211 = and i32 %210, -64
  store i32 %211, i32* %3, align 4
  %212 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %213 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @FSL_SATA_P_HCTRL, align 4
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* @FSL_SATA_P_HCTRL_FATAL, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @FSL_SATA_P_HCTRL_PHYRDY, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @FSL_SATA_P_HCTRL_SIG, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @FSL_SATA_P_HCTRL_SNTFY, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @FSL_SATA_P_HCTRL_DE, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @FSL_SATA_P_HCTRL_CC, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @ATA_OUTL(i32 %214, i32 %215, i32 %228)
  %230 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %2, align 8
  %231 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i32 @xpt_release_simq(i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %203, %175
  ret void
}

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @fsl_sata_stop(%struct.fsl_sata_channel*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @fsl_sata_end_transaction(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @fsl_sata_start(%struct.fsl_sata_channel*) #1

declare dso_local i64 @fsl_sata_wait_register(%struct.fsl_sata_channel*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
