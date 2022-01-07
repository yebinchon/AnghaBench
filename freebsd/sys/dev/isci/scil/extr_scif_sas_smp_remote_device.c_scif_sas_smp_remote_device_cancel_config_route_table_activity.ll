; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_cancel_config_route_table_activity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_cancel_config_route_table_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"scif_sas_smp_remote_device_cancel_config_route_table_activity(0x%x) enter\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_remote_device_cancel_config_route_table_activity(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32* %11, i32** %3, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = call i32 @sci_base_object_get_logger(%struct.TYPE_14__* %12)
  %14 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %15 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = ptrtoint %struct.TYPE_14__* %17 to i32
  %19 = call i32 @SCIF_LOG_TRACE(i32 %18)
  br label %20

20:                                               ; preds = %49, %1
  %21 = load i32*, i32** %3, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @sci_fast_list_get_object(i32* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @sci_fast_list_get_next(i32* %27)
  store i32* %28, i32** %3, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = call i64 @scif_sas_smp_remote_device_do_config_route_info(%struct.TYPE_14__* %29, %struct.TYPE_13__* %30)
  %32 = load i64, i64* @TRUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = call i64 @scif_domain_get_device_by_sas_address(i32 %37, i32* %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %5, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @FALSE, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %34
  br label %49

49:                                               ; preds = %48, %23
  br label %20

50:                                               ; preds = %20
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_14__*) #1

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32* @sci_fast_list_get_next(i32*) #1

declare dso_local i64 @scif_sas_smp_remote_device_do_config_route_info(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i64 @scif_domain_get_device_by_sas_address(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
