; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_attach_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_attach_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.cam_sim = type { i32 }
%struct.cam_path = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.cam_path*, %struct.cam_sim*, %struct.TYPE_9__* }

@OCS_SCSI_MAX_IOS = common dso_local global i32 0, align 4
@ocs_action = common dso_local global i32 0, align 4
@ocs_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't allocate SIM\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't register bus %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Can't create path\0A\00", align 1
@ocs_ldt_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @ocs_attach_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_attach_port(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_sim*, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cam_sim* null, %struct.cam_sim** %6, align 8
  store %struct.cam_path* null, %struct.cam_path** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = load i32, i32* @OCS_SCSI_MAX_IOS, align 4
  %12 = call i32 @ocs_scsi_get_property(%struct.TYPE_9__* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_10__* @FCPORT(%struct.TYPE_9__* %13, i32 %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load i32, i32* @ocs_action, align 4
  %17 = load i32, i32* @ocs_poll, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_get_name(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_get_unit(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.cam_sim* @cam_sim_alloc(i32 %16, i32 %17, i32 %21, %struct.TYPE_9__* %22, i32 %26, i32* %28, i32 %29, i32 %30, i32 %33)
  store %struct.cam_sim* %34, %struct.cam_sim** %6, align 8
  %35 = icmp eq %struct.cam_sim* null, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %109

41:                                               ; preds = %2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = call i32 @mtx_lock(i32* %43)
  %45 = load i64, i64* @CAM_SUCCESS, align 8
  %46 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @xpt_bus_register(%struct.cam_sim* %46, i32 %49, i32 %50)
  %52 = icmp ne i64 %45, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @cam_sim_free(%struct.cam_sim* %61, i32 %62)
  store i32 1, i32* %3, align 4
  br label %109

64:                                               ; preds = %41
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i32 @mtx_unlock(i32* %66)
  %68 = load i64, i64* @CAM_REQ_CMP, align 8
  %69 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %70 = call i32 @cam_sim_path(%struct.cam_sim* %69)
  %71 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %72 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %73 = call i64 @xpt_create_path(%struct.cam_path** %7, i32* null, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %64
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %81 = call i32 @cam_sim_path(%struct.cam_sim* %80)
  %82 = call i32 @xpt_bus_deregister(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 @mtx_unlock(i32* %84)
  %86 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @cam_sim_free(%struct.cam_sim* %86, i32 %87)
  store i32 1, i32* %3, align 4
  br label %109

89:                                               ; preds = %64
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %92, align 8
  %93 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  store %struct.cam_sim* %93, %struct.cam_sim** %95, align 8
  %96 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store %struct.cam_path* %96, %struct.cam_path** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = call i32 @callout_init_mtx(i32* %100, i32* %102, i32 0)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* @ocs_ldt_task, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = call i32 @TASK_INIT(i32* %105, i32 1, i32 %106, %struct.TYPE_10__* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %89, %75, %53, %36
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @ocs_scsi_get_property(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_10__* @FCPORT(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
