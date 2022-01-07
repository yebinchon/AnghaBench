; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_configure_route_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_configure_route_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"scif_sas_smp_remote_device_configure_route_table(0x%x) enter\0A\00", align 1
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@scif_sas_controller_start_high_priority_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_remote_device_configure_route_table(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i32* %11, i32** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = call i32 @sci_base_object_get_logger(%struct.TYPE_15__* %12)
  %14 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %15 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = ptrtoint %struct.TYPE_15__* %17 to i32
  %19 = call i32 @SCIF_LOG_TRACE(i32 %18)
  %20 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  store i32 %20, i32* %24, align 8
  br label %25

25:                                               ; preds = %75, %1
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @sci_fast_list_get_object(i32* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %4, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32* @sci_fast_list_get_next(i32* %32)
  store i32* %33, i32** %3, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = call i64 @scif_sas_smp_remote_device_do_config_route_info(%struct.TYPE_15__* %34, %struct.TYPE_14__* %35)
  %37 = load i64, i64* @TRUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %28
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %5, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @scif_sas_smp_request_construct_config_route_info(i32 %50, %struct.TYPE_15__* %51, i32 %54, i32 %57, i32 %60, i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @scif_sas_controller_start_high_priority_io, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @scif_cb_start_internal_io_task_schedule(i32 %67, i32 %68, i32 %73)
  br label %76

75:                                               ; preds = %28
  br label %25

76:                                               ; preds = %39, %25
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_15__*) #1

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32* @sci_fast_list_get_next(i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_do_config_route_info(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @scif_sas_smp_request_construct_config_route_info(i32, %struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @scif_cb_start_internal_io_task_schedule(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
