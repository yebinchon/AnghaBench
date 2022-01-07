; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.cam_path*, %struct.cam_sim*, i32 }
%struct.cam_path = type { i32 }
%struct.cam_sim = type { i32 }
%struct.ccb_setasync = type { %struct.cam_sim*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cam_devq = type { i32 }
%union.ccb = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AHD_MAX_QUEUE = common dso_local global i32 0, align 4
@ahd_action = common dso_local global i32 0, align 4
@ahd_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ahd\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@ahd_async = common dso_local global i32 0, align 4
@shutdown_final = common dso_local global i32 0, align 4
@ahd_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_attach(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.ccb_setasync, align 8
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca %struct.cam_sim*, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store i32 0, i32* %8, align 4
  store %struct.cam_devq* null, %struct.cam_devq** %5, align 8
  store %struct.cam_sim* null, %struct.cam_sim** %6, align 8
  store %struct.cam_path* null, %struct.cam_path** %7, align 8
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %10 = call i64 @ahd_spawn_recovery_thread(%struct.ahd_softc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %16 = call i32 @ahd_controller_info(%struct.ahd_softc* %14, i8* %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %18 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = call i32 @ahd_lock(%struct.ahd_softc* %19)
  %21 = load i32, i32* @AHD_MAX_QUEUE, align 4
  %22 = call %struct.cam_devq* @cam_simq_alloc(i32 %21)
  store %struct.cam_devq* %22, %struct.cam_devq** %5, align 8
  %23 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %24 = icmp eq %struct.cam_devq* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %89

26:                                               ; preds = %13
  %27 = load i32, i32* @ahd_action, align 4
  %28 = load i32, i32* @ahd_poll, align 4
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_get_unit(i32 %32)
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %39 = call %struct.cam_sim* @cam_sim_alloc(i32 %27, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.ahd_softc* %29, i32 %33, i32* %37, i32 1, i32 256, %struct.cam_devq* %38)
  store %struct.cam_sim* %39, %struct.cam_sim** %6, align 8
  %40 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %41 = icmp eq %struct.cam_sim* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %44 = call i32 @cam_simq_free(%struct.cam_devq* %43)
  br label %89

45:                                               ; preds = %26
  %46 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @xpt_bus_register(%struct.cam_sim* %46, i32 %49, i32 0)
  %51 = load i64, i64* @CAM_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @cam_sim_free(%struct.cam_sim* %54, i32 %55)
  store %struct.cam_sim* null, %struct.cam_sim** %6, align 8
  br label %89

57:                                               ; preds = %45
  %58 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %59 = call i32 @cam_sim_path(%struct.cam_sim* %58)
  %60 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %61 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %62 = call i64 @xpt_create_path(%struct.cam_path** %7, i32* null, i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* @CAM_REQ_CMP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %67 = call i32 @cam_sim_path(%struct.cam_sim* %66)
  %68 = call i32 @xpt_bus_deregister(i32 %67)
  %69 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @cam_sim_free(%struct.cam_sim* %69, i32 %70)
  store %struct.cam_sim* null, %struct.cam_sim** %6, align 8
  br label %89

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %74 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %75 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %73, %struct.cam_path* %74, i32 5)
  %76 = load i32, i32* @XPT_SASYNC_CB, align 4
  %77 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @AC_LOST_DEVICE, align 4
  %80 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @ahd_async, align 4
  %82 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %84 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 0
  store %struct.cam_sim* %83, %struct.cam_sim** %84, align 8
  %85 = bitcast %struct.ccb_setasync* %4 to %union.ccb*
  %86 = call i32 @xpt_action(%union.ccb* %85)
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %72, %65, %53, %42, %25, %12
  %90 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store %struct.cam_sim* %90, %struct.cam_sim** %94, align 8
  %95 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store %struct.cam_path* %95, %struct.cam_path** %99, align 8
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %101 = call i32 @ahd_unlock(%struct.ahd_softc* %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %89
  %105 = load i32, i32* @shutdown_final, align 4
  %106 = load i32, i32* @ahd_shutdown, align 4
  %107 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %108 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %109 = call i32 @EVENTHANDLER_REGISTER(i32 %105, i32 %106, %struct.ahd_softc* %107, i32 %108)
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %111 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %115 = load i32, i32* @TRUE, align 4
  %116 = call i32 @ahd_intr_enable(%struct.ahd_softc* %114, i32 %115)
  br label %117

117:                                              ; preds = %104, %89
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i64 @ahd_spawn_recovery_thread(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_controller_info(%struct.ahd_softc*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @ahd_lock(%struct.ahd_softc*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, %struct.ahd_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_intr_enable(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
