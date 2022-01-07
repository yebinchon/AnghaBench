; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_register_sim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_register_sim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.cam_sim*, i32, i32*, i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ccb_setasync = type { %struct.TYPE_6__, %struct.pqisrc_softstate*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cam_simq_alloc failed txns = %d\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@smartpqi_cam_action = common dso_local global i32 0, align 4
@smartpqi_poll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"smartpqi\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cam_sim_alloc failed txns = %d\0A\00", align 1
@CAM_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"xpt_bus_register failed status=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"xpt_create_path failed\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@AC_FOUND_DEVICE = common dso_local global i32 0, align 4
@smartpqi_async = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Unable to register smartpqi_aysnc handler: %d!\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_sim(%struct.pqisrc_softstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqisrc_softstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccb_setasync, align 8
  %11 = alloca %struct.cam_sim*, align 8
  store %struct.pqisrc_softstate* %0, %struct.pqisrc_softstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %union.ccb* null, %union.ccb** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %14 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @cam_simq_alloc(i32 %16)
  %18 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %19 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32* %17, i32** %20, align 8
  %21 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %22 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %180

30:                                               ; preds = %2
  %31 = load i32, i32* @smartpqi_cam_action, align 4
  %32 = load i32, i32* @smartpqi_poll, align 4
  %33 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %36 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %40 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call %struct.cam_sim* @cam_sim_alloc(i32 %31, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.pqisrc_softstate* %33, i32 %34, i32* %37, i32 1, i32 %38, i32* %42)
  store %struct.cam_sim* %43, %struct.cam_sim** %11, align 8
  %44 = load %struct.cam_sim*, %struct.cam_sim** %11, align 8
  %45 = icmp eq %struct.cam_sim* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %30
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %50 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @cam_simq_free(i32* %52)
  %54 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %54, i32* %3, align 4
  br label %180

55:                                               ; preds = %30
  %56 = load %struct.cam_sim*, %struct.cam_sim** %11, align 8
  %57 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %58 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store %struct.cam_sim* %56, %struct.cam_sim** %59, align 8
  %60 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %61 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @mtx_lock(i32* %62)
  %64 = load %struct.cam_sim*, %struct.cam_sim** %11, align 8
  %65 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %66 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @xpt_bus_register(%struct.cam_sim* %64, i32 %68, i32 0)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CAM_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %55
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %77 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.cam_sim*, %struct.cam_sim** %78, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @cam_sim_free(%struct.cam_sim* %79, i32 %80)
  %82 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %83 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @cam_simq_free(i32* %85)
  %87 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %88 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %91, i32* %3, align 4
  br label %180

92:                                               ; preds = %55
  %93 = load i32, i32* @TRUE, align 4
  %94 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %95 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  %97 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %97, %union.ccb** %8, align 8
  %98 = load %union.ccb*, %union.ccb** %8, align 8
  %99 = icmp eq %union.ccb* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %102, i32* %3, align 4
  br label %180

103:                                              ; preds = %92
  %104 = load %union.ccb*, %union.ccb** %8, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %108 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load %struct.cam_sim*, %struct.cam_sim** %109, align 8
  %111 = call i32 @cam_sim_path(%struct.cam_sim* %110)
  %112 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %113 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %114 = call i64 @xpt_create_path(i32* %106, i32* null, i32 %111, i32 %112, i32 %113)
  %115 = load i64, i64* @CAM_REQ_CMP, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %103
  %118 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %union.ccb*, %union.ccb** %8, align 8
  %120 = call i32 @xpt_free_ccb(%union.ccb* %119)
  %121 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %122 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load %struct.cam_sim*, %struct.cam_sim** %123, align 8
  %125 = call i32 @cam_sim_path(%struct.cam_sim* %124)
  %126 = call i32 @xpt_bus_deregister(i32 %125)
  %127 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %128 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load %struct.cam_sim*, %struct.cam_sim** %129, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = call i32 @cam_sim_free(%struct.cam_sim* %130, i32 %131)
  %133 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %134 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = call i32 @mtx_unlock(i32* %135)
  %137 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %137, i32* %3, align 4
  br label %180

138:                                              ; preds = %103
  %139 = load %union.ccb*, %union.ccb** %8, align 8
  %140 = bitcast %union.ccb* %139 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %144 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 0
  %147 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %148 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %146, i32 %150, i32 5)
  %152 = load i32, i32* @XPT_SASYNC_CB, align 4
  %153 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @AC_FOUND_DEVICE, align 4
  %156 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @smartpqi_async, align 4
  %158 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 2
  store i32 %157, i32* %158, align 8
  %159 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %160 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 1
  store %struct.pqisrc_softstate* %159, %struct.pqisrc_softstate** %160, align 8
  %161 = bitcast %struct.ccb_setasync* %10 to %union.ccb*
  %162 = call i32 @xpt_action(%union.ccb* %161)
  %163 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CAM_REQ_CMP, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %138
  %169 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %10, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %171)
  br label %173

173:                                              ; preds = %168, %138
  %174 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %4, align 8
  %175 = getelementptr inbounds %struct.pqisrc_softstate, %struct.pqisrc_softstate* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = call i32 @mtx_unlock(i32* %176)
  %178 = call i32 @DBG_INFO(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %173, %117, %100, %73, %46, %26
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32* @cam_simq_alloc(i32) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, %struct.pqisrc_softstate*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @DBG_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
