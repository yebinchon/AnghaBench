; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_ready_substate_handlers.c_scif_sas_remote_device_ready_operational_start_task_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_ready_substate_handlers.c_scif_sas_remote_device_ready_operational_start_task_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }

@SCI_FAILURE = common dso_local global i64 0, align 8
@SCI_SAS_ABORT_TASK_SET = common dso_local global i64 0, align 8
@SCI_SAS_CLEAR_TASK_SET = common dso_local global i64 0, align 8
@SCI_SAS_LOGICAL_UNIT_RESET = common dso_local global i64 0, align 8
@SCI_SAS_I_T_NEXUS_RESET = common dso_local global i64 0, align 8
@SCI_SAS_HARD_RESET = common dso_local global i64 0, align 8
@SCI_SAS_CLEAR_ACA = common dso_local global i64 0, align 8
@SCI_SAS_QUERY_TASK = common dso_local global i64 0, align 8
@SCI_SAS_QUERY_TASK_SET = common dso_local global i64 0, align 8
@SCI_SAS_QUERY_ASYNCHRONOUS_EVENT = common dso_local global i64 0, align 8
@SCI_SAS_ABORT_TASK = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_IO_TAG = common dso_local global i64 0, align 8
@SCI_FAILURE_UNSUPPORTED_PROTOCOL = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Controller:0x%x TaskRequest:0x%x Status:0x%x start task failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @scif_sas_remote_device_ready_operational_start_task_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_remote_device_ready_operational_start_task_handler(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = call i64 @scif_sas_task_request_get_function(%struct.TYPE_16__* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @scic_remote_device_get_protocols(i32 %20, %struct.TYPE_15__* %9)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %122

33:                                               ; preds = %27, %2
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @SCI_SAS_ABORT_TASK_SET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @SCI_SAS_CLEAR_TASK_SET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @SCI_SAS_LOGICAL_UNIT_RESET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @SCI_SAS_I_T_NEXUS_RESET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @SCI_SAS_HARD_RESET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49, %45, %41, %37, %33
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = call i32 @scif_sas_domain_terminate_requests(i32 %56, %struct.TYPE_17__* %57, i32* null, %struct.TYPE_16__* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = call i64 @scif_sas_remote_device_start_task_request(%struct.TYPE_17__* %60, %struct.TYPE_16__* %61)
  store i64 %62, i64* %5, align 8
  br label %121

63:                                               ; preds = %49
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @SCI_SAS_CLEAR_ACA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @SCI_SAS_QUERY_TASK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @SCI_SAS_QUERY_TASK_SET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @SCI_SAS_QUERY_ASYNCHRONOUS_EVENT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75, %71, %67, %63
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = call i64 @scif_sas_remote_device_start_task_request(%struct.TYPE_17__* %88, %struct.TYPE_16__* %89)
  store i64 %90, i64* %5, align 8
  br label %120

91:                                               ; preds = %75
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @SCI_SAS_ABORT_TASK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32* @scif_sas_domain_get_request_by_io_tag(i32 %98, i32 %101)
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %95
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = call i32 @scif_sas_domain_terminate_requests(i32 %108, %struct.TYPE_17__* %109, i32* %110, %struct.TYPE_16__* %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = call i64 @scif_sas_remote_device_start_task_request(%struct.TYPE_17__* %113, %struct.TYPE_16__* %114)
  store i64 %115, i64* %5, align 8
  br label %118

116:                                              ; preds = %95
  %117 = load i64, i64* @SCI_FAILURE_INVALID_IO_TAG, align 8
  store i64 %117, i64* %5, align 8
  br label %118

118:                                              ; preds = %116, %105
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120, %53
  br label %124

122:                                              ; preds = %27
  %123 = load i64, i64* @SCI_FAILURE_UNSUPPORTED_PROTOCOL, align 8
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %122, %121
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @SCI_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = call i32 @sci_base_object_get_logger(%struct.TYPE_17__* %129)
  %131 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %132 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %136 = load i64, i64* %5, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @SCIF_LOG_ERROR(i32 %137)
  br label %139

139:                                              ; preds = %128, %124
  %140 = load i64, i64* %5, align 8
  ret i64 %140
}

declare dso_local i64 @scif_sas_task_request_get_function(%struct.TYPE_16__*) #1

declare dso_local i32 @scic_remote_device_get_protocols(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @scif_sas_domain_terminate_requests(i32, %struct.TYPE_17__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @scif_sas_remote_device_start_task_request(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @scif_sas_domain_get_request_by_io_tag(i32, i32) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
