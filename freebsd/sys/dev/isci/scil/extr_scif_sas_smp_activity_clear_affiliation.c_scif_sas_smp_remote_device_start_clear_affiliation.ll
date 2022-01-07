; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_activity_clear_affiliation.c_scif_sas_smp_remote_device_start_clear_affiliation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_activity_clear_affiliation.c_scif_sas_smp_remote_device_start_clear_affiliation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION = common dso_local global i32 0, align 4
@SMP_FUNCTION_PHY_CONTROL = common dso_local global i32 0, align 4
@SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE = common dso_local global i32 0, align 4
@PHY_OPERATION_CLEAR_AFFILIATION = common dso_local global i32 0, align 4
@scif_sas_controller_start_high_priority_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_remote_device_start_clear_affiliation(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_18__*
  %21 = call %struct.TYPE_18__* @scif_sas_smp_remote_device_find_next_smp_phy_link_to_sata(%struct.TYPE_18__* %20)
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %4, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = icmp ne %struct.TYPE_18__* %23, null
  br i1 %24, label %25, label %67

25:                                               ; preds = %22
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %28, align 8
  %29 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* @SMP_FUNCTION_PHY_CONTROL, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* @SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = load i32, i32* @PHY_OPERATION_CLEAR_AFFILIATION, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scif_sas_smp_request_construct_phy_control(i32 %48, %struct.TYPE_19__* %49, i32 %50, i32 %53, i32* null, i32* null)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @scif_sas_controller_start_high_priority_io, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @scif_cb_start_internal_io_task_schedule(i32 %59, i32 %60, i32 %65)
  br label %70

67:                                               ; preds = %22
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %69 = call i32 @scif_sas_smp_remote_device_finish_clear_affiliation(%struct.TYPE_19__* %68)
  br label %70

70:                                               ; preds = %67, %25
  ret void
}

declare dso_local %struct.TYPE_18__* @scif_sas_smp_remote_device_find_next_smp_phy_link_to_sata(%struct.TYPE_18__*) #1

declare dso_local i32 @scif_sas_smp_request_construct_phy_control(i32, %struct.TYPE_19__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @scif_cb_start_internal_io_task_schedule(i32, i32, i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_finish_clear_affiliation(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
