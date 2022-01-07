; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_fail_discover.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_remote_device.c_scif_sas_smp_remote_device_fail_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"scif_sas_smp_remote_device_fail_discover(0x%x) enter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_remote_device_fail_discover(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %3)
  %5 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %6 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = ptrtoint %struct.TYPE_10__* %8 to i32
  %10 = call i32 @SCIF_LOG_TRACE(i32 %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %26 [
    i32 130, label %16
    i32 129, label %16
    i32 131, label %19
    i32 128, label %19
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = call i32 @scif_sas_smp_remote_device_finish_discover(%struct.TYPE_10__* %17)
  br label %27

19:                                               ; preds = %1, %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 131, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = call i32 @scif_sas_smp_remote_device_continue_discover(%struct.TYPE_10__* %24)
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %19, %16
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_10__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_finish_discover(%struct.TYPE_10__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_continue_discover(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
