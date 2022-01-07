; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_get_info_from_smp_discover_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_get_info_from_smp_discover_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_remote_device_get_info_from_smp_discover_response(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
