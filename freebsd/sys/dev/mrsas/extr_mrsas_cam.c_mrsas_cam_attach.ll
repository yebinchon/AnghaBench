; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i32*, i32, i32*, i32, i32, i32 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Cannot allocate SIM queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mrsas_action = common dso_local global i32 0, align 4
@mrsas_cam_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mrsas\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Cannot register SIM\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@mrsas_aen_handler = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"mrsas_taskq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Error in bus scan.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_cam_attach(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  %5 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  %6 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.cam_devq* @cam_simq_alloc(i32 %9)
  store %struct.cam_devq* %10, %struct.cam_devq** %4, align 8
  %11 = icmp eq %struct.cam_devq* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %214

18:                                               ; preds = %1
  %19 = load i32, i32* @mrsas_action, align 4
  %20 = load i32, i32* @mrsas_cam_poll, align 4
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_get_unit(i32 %24)
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %31 = call i8* @cam_sim_alloc(i32 %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.mrsas_softc* %21, i32 %25, i32* %27, i32 %28, i32 %29, %struct.cam_devq* %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %18
  %40 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %41 = call i32 @cam_simq_free(%struct.cam_devq* %40)
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %214

47:                                               ; preds = %18
  %48 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %48, i32 0, i32 8
  %50 = load i64, i64* @mrsas_aen_handler, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %53 = call i32 @TASK_INIT(i32* %49, i32 0, i8* %51, %struct.mrsas_softc* %52)
  %54 = load i32, i32* @M_NOWAIT, align 4
  %55 = load i32, i32* @M_ZERO, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %58 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %58, i32 0, i32 7
  %60 = call i32 @taskqueue_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i32* %59)
  %61 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %63, i32 0, i32 7
  %65 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_get_nameunit(i32 %67)
  %69 = call i32 @taskqueue_start_threads(i32* %64, i32 1, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %71 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %70, i32 0, i32 2
  %72 = call i32 @mtx_lock(i32* %71)
  %73 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %74 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @xpt_bus_register(i32* %75, i32 %78, i32 0)
  %80 = load i64, i64* @CAM_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %47
  %83 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @cam_sim_free(i32* %85, i32 %86)
  %88 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %88, i32 0, i32 2
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %214

92:                                               ; preds = %47
  %93 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %94 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %93, i32 0, i32 6
  %95 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @cam_sim_path(i32* %97)
  %99 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %100 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %101 = call i64 @xpt_create_path(i32* %94, i32* null, i32 %98, i32 %99, i32 %100)
  %102 = load i64, i64* @CAM_REQ_CMP, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %92
  %105 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %106 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @cam_sim_path(i32* %107)
  %109 = call i32 @xpt_bus_deregister(i32 %108)
  %110 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %111 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @cam_sim_free(i32* %112, i32 %113)
  %115 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %116 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %115, i32 0, i32 2
  %117 = call i32 @mtx_unlock(i32* %116)
  %118 = load i32, i32* @ENXIO, align 4
  store i32 %118, i32* %2, align 4
  br label %214

119:                                              ; preds = %92
  %120 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %121 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %120, i32 0, i32 2
  %122 = call i32 @mtx_unlock(i32* %121)
  %123 = load i32, i32* @mrsas_action, align 4
  %124 = load i32, i32* @mrsas_cam_poll, align 4
  %125 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %126 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %127 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @device_get_unit(i32 %128)
  %130 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %131 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %135 = call i8* @cam_sim_alloc(i32 %123, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.mrsas_softc* %125, i32 %129, i32* %131, i32 %132, i32 %133, %struct.cam_devq* %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %138 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %137, i32 0, i32 3
  store i32* %136, i32** %138, align 8
  %139 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %140 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %119
  %144 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %145 = call i32 @cam_simq_free(%struct.cam_devq* %144)
  %146 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %147 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %2, align 4
  br label %214

151:                                              ; preds = %119
  %152 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %153 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %152, i32 0, i32 2
  %154 = call i32 @mtx_lock(i32* %153)
  %155 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %156 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %159 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @xpt_bus_register(i32* %157, i32 %160, i32 1)
  %162 = load i64, i64* @CAM_SUCCESS, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %151
  %165 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %166 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @TRUE, align 4
  %169 = call i32 @cam_sim_free(i32* %167, i32 %168)
  %170 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %171 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %170, i32 0, i32 2
  %172 = call i32 @mtx_unlock(i32* %171)
  %173 = load i32, i32* @ENXIO, align 4
  store i32 %173, i32* %2, align 4
  br label %214

174:                                              ; preds = %151
  %175 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %176 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %175, i32 0, i32 4
  %177 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %178 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @cam_sim_path(i32* %179)
  %181 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %182 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %183 = call i64 @xpt_create_path(i32* %176, i32* null, i32 %180, i32 %181, i32 %182)
  %184 = load i64, i64* @CAM_REQ_CMP, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %174
  %187 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %188 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @cam_sim_path(i32* %189)
  %191 = call i32 @xpt_bus_deregister(i32 %190)
  %192 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %193 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* @TRUE, align 4
  %196 = call i32 @cam_sim_free(i32* %194, i32 %195)
  %197 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %198 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %197, i32 0, i32 2
  %199 = call i32 @mtx_unlock(i32* %198)
  %200 = load i32, i32* @ENXIO, align 4
  store i32 %200, i32* %2, align 4
  br label %214

201:                                              ; preds = %174
  %202 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %203 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %202, i32 0, i32 2
  %204 = call i32 @mtx_unlock(i32* %203)
  %205 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %206 = call i64 @mrsas_bus_scan(%struct.mrsas_softc* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %201
  %209 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %210 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @device_printf(i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %214

213:                                              ; preds = %201
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %213, %208, %186, %164, %143, %104, %82, %39, %12
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @cam_sim_alloc(i32, i32, i8*, %struct.mrsas_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i8*, %struct.mrsas_softc*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i64 @mrsas_bus_scan(%struct.mrsas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
