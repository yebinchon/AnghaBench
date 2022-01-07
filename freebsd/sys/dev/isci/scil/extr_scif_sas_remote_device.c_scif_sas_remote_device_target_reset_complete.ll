; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_sas_remote_device_target_reset_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_sas_remote_device_target_reset_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"scif_sas_remote_device_target_reset_complete! fw_device:0x%x fw_request:0x%x completion_status 0x%x\0A\00", align 1
@SCI_BASE_DOMAIN_STATE_DISCOVERING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_remote_device_target_reset_complete(%struct.TYPE_17__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = call i32 @sci_base_object_get_logger(%struct.TYPE_17__* %9)
  %11 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @SCIF_LOG_INFO(i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @scif_cb_task_request_complete(i32 %21, %struct.TYPE_17__* %22, i32* %23, i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @scic_remote_device_reset_complete(i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %97

35:                                               ; preds = %3
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = call i32 @scif_sas_smp_remote_device_clear(%struct.TYPE_17__* %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = call %struct.TYPE_17__* @scif_sas_domain_find_next_ea_target_reset(%struct.TYPE_18__* %42)
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %7, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @scif_sas_smp_remote_device_start_target_reset(%struct.TYPE_17__* %48, %struct.TYPE_17__* %49, i32* %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  br label %96

56:                                               ; preds = %35
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SCI_BASE_DOMAIN_STATE_DISCOVERING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %56
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %8, align 8
  br label %70

70:                                               ; preds = %75, %66
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = icmp ne %struct.TYPE_17__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %8, align 8
  br label %70

79:                                               ; preds = %70
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = call i32 @scif_sas_domain_start_smp_discover(%struct.TYPE_18__* %82, %struct.TYPE_17__* %83)
  br label %95

85:                                               ; preds = %56
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = call i32 @scif_cb_domain_change_notification(i32 %90, %struct.TYPE_18__* %93)
  br label %95

95:                                               ; preds = %85, %79
  br label %96

96:                                               ; preds = %95, %45
  br label %107

97:                                               ; preds = %3
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = call i32 @scif_cb_domain_change_notification(i32 %102, %struct.TYPE_18__* %105)
  br label %107

107:                                              ; preds = %97, %96
  ret void
}

declare dso_local i32 @SCIF_LOG_INFO(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_17__*) #1

declare dso_local i32 @scif_cb_task_request_complete(i32, %struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @scic_remote_device_reset_complete(i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_clear(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @scif_sas_domain_find_next_ea_target_reset(%struct.TYPE_18__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_start_target_reset(%struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @scif_sas_domain_start_smp_discover(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @scif_cb_domain_change_notification(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
