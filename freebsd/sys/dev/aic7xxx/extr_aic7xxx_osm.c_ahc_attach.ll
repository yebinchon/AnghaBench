; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.cam_path*, %struct.cam_sim*, %struct.cam_path*, %struct.cam_sim*, i32 }
%struct.cam_path = type { i32 }
%struct.cam_sim = type { i32 }
%struct.ccb_setasync = type { %struct.cam_sim*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.cam_devq = type { i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AHC_TWIN = common dso_local global i32 0, align 4
@AHC_PRIMARY_CHANNEL = common dso_local global i32 0, align 4
@AHC_MAX_QUEUE = common dso_local global i32 0, align 4
@ahc_action = common dso_local global i32 0, align 4
@ahc_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ahc\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@XPT_SASYNC_CB = common dso_local global i8* null, align 8
@AC_LOST_DEVICE = common dso_local global i8* null, align 8
@ahc_async = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"ahc_attach: Unable to attach second bus due to resource shortage\00", align 1
@FALSE = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@ahc_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_attach(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.ccb_setasync, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_sim*, align 8
  %9 = alloca %struct.cam_sim*, align 8
  %10 = alloca %struct.cam_path*, align 8
  %11 = alloca %struct.cam_path*, align 8
  %12 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  store i32 0, i32* %12, align 4
  store %struct.cam_sim* null, %struct.cam_sim** %8, align 8
  store %struct.cam_sim* null, %struct.cam_sim** %9, align 8
  store %struct.cam_path* null, %struct.cam_path** %10, align 8
  store %struct.cam_path* null, %struct.cam_path** %11, align 8
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = call i64 @ahc_spawn_recovery_thread(%struct.ahc_softc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %183

17:                                               ; preds = %1
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %20 = call i32 @ahc_controller_info(%struct.ahc_softc* %18, i8* %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %24 = call i32 @ahc_lock(%struct.ahc_softc* %23)
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AHC_TWIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AHC_PRIMARY_CHANNEL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %40

39:                                               ; preds = %31, %17
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* @AHC_MAX_QUEUE, align 4
  %42 = call %struct.cam_devq* @cam_simq_alloc(i32 %41)
  store %struct.cam_devq* %42, %struct.cam_devq** %5, align 8
  %43 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %44 = icmp eq %struct.cam_devq* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %183

46:                                               ; preds = %40
  %47 = load i32, i32* @ahc_action, align 4
  %48 = load i32, i32* @ahc_poll, align 4
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_get_unit(i32 %52)
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i32, i32* @AHC_MAX_QUEUE, align 4
  %59 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %60 = call %struct.cam_sim* @cam_sim_alloc(i32 %47, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.ahc_softc* %49, i32 %53, i32* %57, i32 1, i32 %58, %struct.cam_devq* %59)
  store %struct.cam_sim* %60, %struct.cam_sim** %8, align 8
  %61 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %62 = icmp eq %struct.cam_sim* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %65 = call i32 @cam_simq_free(%struct.cam_devq* %64)
  br label %183

66:                                               ; preds = %46
  %67 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %69 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @xpt_bus_register(%struct.cam_sim* %67, i32 %70, i32 %71)
  %73 = load i64, i64* @CAM_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @cam_sim_free(%struct.cam_sim* %76, i32 %77)
  store %struct.cam_sim* null, %struct.cam_sim** %8, align 8
  br label %183

79:                                               ; preds = %66
  %80 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %81 = call i32 @cam_sim_path(%struct.cam_sim* %80)
  %82 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %83 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %84 = call i64 @xpt_create_path(%struct.cam_path** %10, i32* null, i32 %81, i32 %82, i32 %83)
  %85 = load i64, i64* @CAM_REQ_CMP, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %89 = call i32 @cam_sim_path(%struct.cam_sim* %88)
  %90 = call i32 @xpt_bus_deregister(i32 %89)
  %91 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @cam_sim_free(%struct.cam_sim* %91, i32 %92)
  store %struct.cam_sim* null, %struct.cam_sim** %8, align 8
  br label %183

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %96 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %97 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %95, %struct.cam_path* %96, i32 5)
  %98 = load i8*, i8** @XPT_SASYNC_CB, align 8
  %99 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @AC_LOST_DEVICE, align 8
  %102 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = load i8*, i8** @ahc_async, align 8
  %104 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %106 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 0
  store %struct.cam_sim* %105, %struct.cam_sim** %106, align 8
  %107 = bitcast %struct.ccb_setasync* %4 to %union.ccb*
  %108 = call i32 @xpt_action(%union.ccb* %107)
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @AHC_TWIN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %182

117:                                              ; preds = %94
  %118 = load i32, i32* @ahc_action, align 4
  %119 = load i32, i32* @ahc_poll, align 4
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %121 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %122 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @device_get_unit(i32 %123)
  %125 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %125, i32 0, i32 2
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  %129 = load i32, i32* @AHC_MAX_QUEUE, align 4
  %130 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %131 = call %struct.cam_sim* @cam_sim_alloc(i32 %118, i32 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.ahc_softc* %120, i32 %124, i32* %128, i32 1, i32 %129, %struct.cam_devq* %130)
  store %struct.cam_sim* %131, %struct.cam_sim** %9, align 8
  %132 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %133 = icmp eq %struct.cam_sim* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %117
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %183

136:                                              ; preds = %117
  %137 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %138 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i64 @xpt_bus_register(%struct.cam_sim* %137, i32 %140, i32 %141)
  %143 = load i64, i64* @CAM_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %148 = load i32, i32* @FALSE, align 4
  %149 = call i32 @cam_sim_free(%struct.cam_sim* %147, i32 %148)
  br label %183

150:                                              ; preds = %136
  %151 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %152 = call i32 @cam_sim_path(%struct.cam_sim* %151)
  %153 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %154 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %155 = call i64 @xpt_create_path(%struct.cam_path** %11, i32* null, i32 %152, i32 %153, i32 %154)
  %156 = load i64, i64* @CAM_REQ_CMP, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %160 = call i32 @cam_sim_path(%struct.cam_sim* %159)
  %161 = call i32 @xpt_bus_deregister(i32 %160)
  %162 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %163 = load i32, i32* @FALSE, align 4
  %164 = call i32 @cam_sim_free(%struct.cam_sim* %162, i32 %163)
  store %struct.cam_sim* null, %struct.cam_sim** %9, align 8
  br label %183

165:                                              ; preds = %150
  %166 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %167 = load %struct.cam_path*, %struct.cam_path** %11, align 8
  %168 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %166, %struct.cam_path* %167, i32 5)
  %169 = load i8*, i8** @XPT_SASYNC_CB, align 8
  %170 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @AC_LOST_DEVICE, align 8
  %173 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 2
  store i8* %172, i8** %173, align 8
  %174 = load i8*, i8** @ahc_async, align 8
  %175 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 1
  store i8* %174, i8** %175, align 8
  %176 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %177 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 0
  store %struct.cam_sim* %176, %struct.cam_sim** %177, align 8
  %178 = bitcast %struct.ccb_setasync* %4 to %union.ccb*
  %179 = call i32 @xpt_action(%union.ccb* %178)
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %165, %94
  br label %183

183:                                              ; preds = %182, %158, %145, %134, %87, %75, %63, %45, %16
  %184 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %185 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @AHC_TWIN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %183
  %191 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %192 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @AHC_PRIMARY_CHANNEL, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %190
  %198 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %199 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %200 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %199, i32 0, i32 2
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  store %struct.cam_sim* %198, %struct.cam_sim** %202, align 8
  %203 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %204 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %205 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %204, i32 0, i32 2
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  store %struct.cam_path* %203, %struct.cam_path** %207, align 8
  %208 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %209 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %210 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %209, i32 0, i32 2
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 4
  store %struct.cam_sim* %208, %struct.cam_sim** %212, align 8
  %213 = load %struct.cam_path*, %struct.cam_path** %11, align 8
  %214 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %215 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %214, i32 0, i32 2
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  store %struct.cam_path* %213, %struct.cam_path** %217, align 8
  br label %239

218:                                              ; preds = %190, %183
  %219 = load %struct.cam_sim*, %struct.cam_sim** %8, align 8
  %220 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %221 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %220, i32 0, i32 2
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 4
  store %struct.cam_sim* %219, %struct.cam_sim** %223, align 8
  %224 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  %225 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %226 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %225, i32 0, i32 2
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 3
  store %struct.cam_path* %224, %struct.cam_path** %228, align 8
  %229 = load %struct.cam_sim*, %struct.cam_sim** %9, align 8
  %230 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %231 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %230, i32 0, i32 2
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  store %struct.cam_sim* %229, %struct.cam_sim** %233, align 8
  %234 = load %struct.cam_path*, %struct.cam_path** %11, align 8
  %235 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %236 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %235, i32 0, i32 2
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  store %struct.cam_path* %234, %struct.cam_path** %238, align 8
  br label %239

239:                                              ; preds = %218, %197
  %240 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %241 = call i32 @ahc_unlock(%struct.ahc_softc* %240)
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %239
  %245 = load i32, i32* @shutdown_final, align 4
  %246 = load i32, i32* @ahc_shutdown, align 4
  %247 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %248 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %249 = call i32 @EVENTHANDLER_REGISTER(i32 %245, i32 %246, %struct.ahc_softc* %247, i32 %248)
  %250 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %251 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %250, i32 0, i32 2
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  store i32 %249, i32* %253, align 8
  %254 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %255 = load i32, i32* @TRUE, align 4
  %256 = call i32 @ahc_intr_enable(%struct.ahc_softc* %254, i32 %255)
  br label %257

257:                                              ; preds = %244, %239
  %258 = load i32, i32* %12, align 4
  ret i32 %258
}

declare dso_local i64 @ahc_spawn_recovery_thread(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_controller_info(%struct.ahc_softc*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ahc_lock(%struct.ahc_softc*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, %struct.ahc_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_intr_enable(%struct.ahc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
