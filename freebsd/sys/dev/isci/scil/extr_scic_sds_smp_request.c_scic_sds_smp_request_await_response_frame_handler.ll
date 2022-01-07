; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_smp_request.c_scic_sds_smp_request_await_response_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_smp_request.c_scic_sds_smp_request_await_response_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_23__, i32, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }

@SCIC_LOG_OBJECT_SMP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"scic_sds_smp_request_await_response_frame_handler(0x%x, 0x%x) enter\0A\00", align 1
@SMP_FRAME_TYPE_RESPONSE = common dso_local global i64 0, align 8
@SMP_FUNCTION_DISCOVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"scic_sds_smp_request_await_response_frame_handler(0x%x) Found SATA dev, setting STP bit.\0A\00", align 1
@SCU_TASK_DONE_GOOD = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_TC_COMPLETION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"SCIC SMP Request 0x%08x received unexpected frame %d type 0x%02x\0A\00", align 1
@SCU_TASK_DONE_SMP_FRM_TYPE_ERR = common dso_local global i32 0, align 4
@SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR = common dso_local global i32 0, align 4
@SCI_BASE_REQUEST_STATE_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32)* @scic_sds_smp_request_await_response_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_smp_request_await_response_frame_handler(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %16 = call %struct.TYPE_17__* @scic_sds_request_get_controller(%struct.TYPE_26__* %15)
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %9, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = call i32 @sci_base_object_get_logger(%struct.TYPE_26__* %17)
  %19 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @SCIC_LOG_TRACE(i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @scic_sds_unsolicited_frame_control_get_header(i32* %24, i32 %25, i8** %6)
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @scic_word_copy_with_swap(i32* %27, i8* %28, i32 4)
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %31, %struct.TYPE_25__** %7, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SMP_FRAME_TYPE_RESPONSE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @scic_sds_unsolicited_frame_control_get_buffer(i32* %39, i32 %40, i8** %10)
  store i32 %41, i32* %5, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 16
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @scic_word_copy_with_swap(i32* %43, i8* %44, i32 1)
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SMP_FUNCTION_DISCOVER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %37
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast i32* %52 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %11, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %51
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %63
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %82 = call i32 @sci_base_object_get_logger(%struct.TYPE_26__* %81)
  %83 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %85 = ptrtoint %struct.TYPE_26__* %84 to i32
  %86 = call i32 @SCIC_LOG_TRACE(i32 %85)
  br label %87

87:                                               ; preds = %73, %63, %51
  br label %88

88:                                               ; preds = %87, %37
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %90 = load i32, i32* @SCU_TASK_DONE_GOOD, align 4
  %91 = load i32, i32* @SCI_SUCCESS, align 4
  %92 = call i32 @scic_sds_request_set_status(%struct.TYPE_26__* %89, i32 %90, i32 %91)
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = load i32, i32* @SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_TC_COMPLETION, align 4
  %96 = call i32 @sci_base_state_machine_change_state(i32* %94, i32 %95)
  br label %117

97:                                               ; preds = %2
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %99 = call i32 @sci_base_object_get_logger(%struct.TYPE_26__* %98)
  %100 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @SCIC_LOG_ERROR(i32 %106)
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %109 = load i32, i32* @SCU_TASK_DONE_SMP_FRM_TYPE_ERR, align 4
  %110 = load i32, i32* @SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR, align 4
  %111 = call i32 @scic_sds_request_set_status(%struct.TYPE_26__* %108, i32 %109, i32 %110)
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32, i32* @SCI_BASE_REQUEST_STATE_COMPLETED, align 4
  %116 = call i32 @sci_base_state_machine_change_state(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %97, %88
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_17__* %118, i32 %119)
  %121 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_17__* @scic_sds_request_get_controller(%struct.TYPE_26__*) #1

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_26__*) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local i32 @scic_word_copy_with_swap(i32*, i8*, i32) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_buffer(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_request_set_status(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
