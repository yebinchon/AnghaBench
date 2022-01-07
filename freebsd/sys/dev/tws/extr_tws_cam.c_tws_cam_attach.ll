; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32*, i32, i32 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@tws_cam_depth = common dso_local global i32 0, align 4
@tws_queue_depth = common dso_local global i32 0, align 4
@TWS_RESERVED_REQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"depths,ctlr,cam\00", align 1
@CAM_SIMQ_ALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tws_action = common dso_local global i32 0, align 4
@tws_poll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"tws\00", align 1
@CAM_SIM_ALLOC = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@TWS_XPT_BUS_REGISTER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@TWS_XPT_CREATE_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_cam_attach(%struct.tws_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  %5 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %6 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %7 = call i32 (%struct.tws_softc*, i8*, i32, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, %struct.tws_softc* %6)
  %8 = load i32, i32* @tws_cam_depth, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* @tws_cam_depth, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, i32* @tws_cam_depth, align 4
  %13 = load i32, i32* @tws_queue_depth, align 4
  %14 = load i32, i32* @TWS_RESERVED_REQS, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @tws_queue_depth, align 4
  %19 = load i32, i32* @TWS_RESERVED_REQS, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* @tws_cam_depth, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %23 = load i32, i32* @tws_queue_depth, align 4
  %24 = load i32, i32* @tws_cam_depth, align 4
  %25 = call i32 (%struct.tws_softc*, i8*, i32, ...) @TWS_TRACE_DEBUG(%struct.tws_softc* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @tws_cam_depth, align 4
  %27 = call %struct.cam_devq* @cam_simq_alloc(i32 %26)
  store %struct.cam_devq* %27, %struct.cam_devq** %4, align 8
  %28 = icmp eq %struct.cam_devq* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %31 = load i32, i32* @CAM_SIMQ_ALLOC, align 4
  %32 = call i32 @tws_log(%struct.tws_softc* %30, i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %121

34:                                               ; preds = %21
  %35 = load i32, i32* @tws_action, align 4
  %36 = load i32, i32* @tws_poll, align 4
  %37 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %38 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %43 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %42, i32 0, i32 0
  %44 = load i32, i32* @tws_cam_depth, align 4
  %45 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %46 = call i32* @cam_sim_alloc(i32 %35, i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.tws_softc* %37, i32 %41, i32* %43, i32 %44, i32 1, %struct.cam_devq* %45)
  %47 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %48 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %50 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %34
  %54 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %55 = call i32 @cam_simq_free(%struct.cam_devq* %54)
  %56 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %57 = load i32, i32* @CAM_SIM_ALLOC, align 4
  %58 = call i32 @tws_log(%struct.tws_softc* %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %34
  %60 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %61 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %60, i32 0, i32 0
  %62 = call i32 @mtx_lock(i32* %61)
  %63 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %64 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %67 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @xpt_bus_register(i32* %65, i32 %68, i32 0)
  %70 = load i64, i64* @CAM_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %59
  %73 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %74 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @TRUE, align 4
  %77 = call i32 @cam_sim_free(i32* %75, i32 %76)
  %78 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %79 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %81 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %80, i32 0, i32 0
  %82 = call i32 @mtx_unlock(i32* %81)
  %83 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %84 = load i32, i32* @TWS_XPT_BUS_REGISTER, align 4
  %85 = call i32 @tws_log(%struct.tws_softc* %83, i32 %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %121

87:                                               ; preds = %59
  %88 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %89 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %88, i32 0, i32 2
  %90 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %91 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @cam_sim_path(i32* %92)
  %94 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %95 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %96 = call i64 @xpt_create_path(i32* %89, i32* null, i32 %93, i32 %94, i32 %95)
  %97 = load i64, i64* @CAM_REQ_CMP, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %87
  %100 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %101 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @cam_sim_path(i32* %102)
  %104 = call i32 @xpt_bus_deregister(i32 %103)
  %105 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %106 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @TRUE, align 4
  %109 = call i32 @cam_sim_free(i32* %107, i32 %108)
  %110 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %111 = load i32, i32* @TWS_XPT_CREATE_PATH, align 4
  %112 = call i32 @tws_log(%struct.tws_softc* %110, i32 %111)
  %113 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %114 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %113, i32 0, i32 0
  %115 = call i32 @mtx_unlock(i32* %114)
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %2, align 4
  br label %121

117:                                              ; preds = %87
  %118 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %119 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %118, i32 0, i32 0
  %120 = call i32 @mtx_unlock(i32* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %99, %72, %29
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, ...) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @tws_log(%struct.tws_softc*, i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.tws_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
