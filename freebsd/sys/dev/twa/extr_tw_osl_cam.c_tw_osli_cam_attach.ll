; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, i32*, i32, i32 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSLI_MAX_NUM_IOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create SIM device queue\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Calling cam_sim_alloc\00", align 1
@twa_action = common dso_local global i32 0, align 4
@twa_poll = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"twa\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to create a SIM entry\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Calling xpt_bus_register\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to register the bus\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Calling xpt_create_path\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed to create path\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"exiting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osli_cam_attach(%struct.twa_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twa_softc*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  store %struct.twa_softc* %0, %struct.twa_softc** %3, align 8
  %5 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %6 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @TW_OSLI_MAX_NUM_IOS, align 4
  %8 = call %struct.cam_devq* @cam_simq_alloc(i32 %7)
  store %struct.cam_devq* %8, %struct.cam_devq** %4, align 8
  %9 = icmp eq %struct.cam_devq* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %12 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %13 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = call i32 @tw_osli_printf(%struct.twa_softc* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13, i32 8448, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %19 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @twa_action, align 4
  %21 = load i32, i32* @twa_poll, align 4
  %22 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %23 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %24 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_get_unit(i32 %25)
  %27 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %28 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TW_OSLI_MAX_NUM_IOS, align 4
  %31 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %32 = call i32* @cam_sim_alloc(i32 %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.twa_softc* %22, i32 %26, i32 %29, i32 %30, i32 1, %struct.cam_devq* %31)
  %33 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %34 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %36 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %17
  %40 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %41 = call i32 @cam_simq_free(%struct.cam_devq* %40)
  %42 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %43 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %44 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @tw_osli_printf(%struct.twa_softc* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44, i32 8449, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  br label %124

48:                                               ; preds = %17
  %49 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %50 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %51 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %52 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mtx_lock(i32 %53)
  %55 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %56 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %59 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @xpt_bus_register(i32* %57, i32 %60, i32 0)
  %62 = load i64, i64* @CAM_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %48
  %65 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %66 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @cam_sim_free(i32* %67, i32 %68)
  %70 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %71 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %73 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %74 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %75 = load i32, i32* @ENXIO, align 4
  %76 = call i32 @tw_osli_printf(%struct.twa_softc* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74, i32 8450, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  %77 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %78 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mtx_unlock(i32 %79)
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %2, align 4
  br label %124

82:                                               ; preds = %48
  %83 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %84 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %85 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %86 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %85, i32 0, i32 2
  %87 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %88 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @cam_sim_path(i32* %89)
  %91 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %92 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %93 = call i64 @xpt_create_path(i32* %86, i32* null, i32 %90, i32 %91, i32 %92)
  %94 = load i64, i64* @CAM_REQ_CMP, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %82
  %97 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %98 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @cam_sim_path(i32* %99)
  %101 = call i32 @xpt_bus_deregister(i32 %100)
  %102 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %103 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @cam_sim_free(i32* %104, i32 %105)
  %107 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %108 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %109 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %110 = load i32, i32* @ENXIO, align 4
  %111 = call i32 @tw_osli_printf(%struct.twa_softc* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109, i32 8451, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  %112 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %113 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @mtx_unlock(i32 %114)
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %2, align 4
  br label %124

117:                                              ; preds = %82
  %118 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %119 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mtx_unlock(i32 %120)
  %122 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %123 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %117, %96, %64, %39, %10
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.twa_softc*, i32, i32, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
