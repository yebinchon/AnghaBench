; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_activity_clear_affiliation.c_scif_sas_smp_remote_device_continue_clear_affiliation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_activity_clear_affiliation.c_scif_sas_smp_remote_device_continue_clear_affiliation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_12__*, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@PHY_OPERATION_CLEAR_AFFILIATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_remote_device_continue_clear_affiliation(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_17__* @scif_sas_smp_remote_device_find_next_smp_phy_link_to_sata(i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %4, align 8
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = load i32, i32* @PHY_OPERATION_CLEAR_AFFILIATION, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @scif_sas_smp_request_construct_phy_control(i32 %36, %struct.TYPE_18__* %37, i32 %38, i32 %41, i32* null, i32* null)
  br label %46

43:                                               ; preds = %25
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %45 = call i32 @scif_sas_smp_remote_device_finish_clear_affiliation(%struct.TYPE_18__* %44)
  br label %46

46:                                               ; preds = %43, %28
  ret void
}

declare dso_local %struct.TYPE_17__* @scif_sas_smp_remote_device_find_next_smp_phy_link_to_sata(i32) #1

declare dso_local i32 @scif_sas_smp_request_construct_phy_control(i32, %struct.TYPE_18__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @scif_sas_smp_remote_device_finish_clear_affiliation(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
