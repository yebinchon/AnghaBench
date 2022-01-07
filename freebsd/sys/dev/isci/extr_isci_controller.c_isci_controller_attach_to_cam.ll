; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_attach_to_cam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_attach_to_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32, i32*, i32, i32, i32, %struct.isci_softc* }
%struct.isci_softc = type { i32 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"isci_devq is NULL \0A\00", align 1
@isci_action = common dso_local global i32 0, align 4
@isci_poll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"isci\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cam_sim_alloc... fails\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"xpt_bus_register...fails \0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"xpt_create_path....fails\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_controller_attach_to_cam(%struct.ISCI_CONTROLLER* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ISCI_CONTROLLER*, align 8
  %4 = alloca %struct.isci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_devq*, align 8
  store %struct.ISCI_CONTROLLER* %0, %struct.ISCI_CONTROLLER** %3, align 8
  %8 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %9 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %8, i32 0, i32 5
  %10 = load %struct.isci_softc*, %struct.isci_softc** %9, align 8
  store %struct.isci_softc* %10, %struct.isci_softc** %4, align 8
  %11 = load %struct.isci_softc*, %struct.isci_softc** %4, align 8
  %12 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.isci_softc*, %struct.isci_softc** %4, align 8
  %16 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %20 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.cam_devq* @cam_simq_alloc(i32 %21)
  store %struct.cam_devq* %22, %struct.cam_devq** %7, align 8
  %23 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %24 = icmp eq %struct.cam_devq* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %101

27:                                               ; preds = %1
  %28 = load i32, i32* @isci_action, align 4
  %29 = load i32, i32* @isci_poll, align 4
  %30 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %33 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %32, i32 0, i32 0
  %34 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %35 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %38 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %41 = call i32* @cam_sim_alloc(i32 %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ISCI_CONTROLLER* %30, i32 %31, i32* %33, i32 %36, i32 %39, %struct.cam_devq* %40)
  %42 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %43 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %45 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.cam_devq*, %struct.cam_devq** %7, align 8
  %51 = call i32 @cam_simq_free(%struct.cam_devq* %50)
  store i32 -1, i32* %2, align 4
  br label %101

52:                                               ; preds = %27
  %53 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %54 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %58 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @xpt_bus_register(i32* %55, i32 %56, i32 %59)
  %61 = load i64, i64* @CAM_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %52
  %64 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %66 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @cam_sim_free(i32* %67, i32 %68)
  %70 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %71 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock(i32* %71)
  store i32 -1, i32* %2, align 4
  br label %101

73:                                               ; preds = %52
  %74 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %75 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %74, i32 0, i32 2
  %76 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %77 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @cam_sim_path(i32* %78)
  %80 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %81 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %82 = call i64 @xpt_create_path(i32* %75, i32* null, i32 %79, i32 %80, i32 %81)
  %83 = load i64, i64* @CAM_REQ_CMP, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %73
  %86 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %88 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @cam_sim_path(i32* %89)
  %91 = call i32 @xpt_bus_deregister(i32 %90)
  %92 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %93 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i32 @cam_sim_free(i32* %94, i32 %95)
  %97 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %98 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %97, i32 0, i32 0
  %99 = call i32 @mtx_unlock(i32* %98)
  store i32 -1, i32* %2, align 4
  br label %101

100:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %85, %63, %48, %25
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.ISCI_CONTROLLER*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

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
