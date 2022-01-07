; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_task_request_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_task_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, %struct.TYPE_10__, i32, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_SSP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"scic_task_request_construct(0x%x, 0x%x, 0x02x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@scic_sds_io_request_started_task_mgmt_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_IO_REQUEST_STARTED_TASK_MGMT_SUBSTATE_AWAIT_TC_COMPLETION = common dso_local global i32 0, align 4
@SCI_FAILURE_UNSUPPORTED_PROTOCOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_task_request_construct(i64 %0, i64 %1, i32 %2, i8* %3, i8* %4, i8** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8** %5, i8*** %12, align 8
  %16 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %14, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @sci_base_object_get_logger(i64 %19)
  %21 = load i32, i32* @SCIC_LOG_OBJECT_SSP_IO_REQUEST, align 4
  %22 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %25 = or i32 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8**, i8*** %12, align 8
  %32 = ptrtoint i8** %31 to i32
  %33 = call i32 @SCIC_LOG_TRACE(i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %41 = call i32 @scic_sds_general_request_construct(i32* %35, i32* %37, i32 %38, i8* %39, %struct.TYPE_14__* %40)
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @scic_remote_device_get_protocols(i64 %42, %struct.TYPE_13__* %15)
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %6
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %51 = call i32 @scic_sds_ssp_task_request_assign_buffers(%struct.TYPE_14__* %50)
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* @scic_sds_io_request_started_task_mgmt_substate_table, align 4
  %61 = load i32, i32* @SCIC_SDS_IO_REQUEST_STARTED_TASK_MGMT_SUBSTATE_AWAIT_TC_COMPLETION, align 4
  %62 = call i32 @sci_base_state_machine_construct(i32* %56, i32* %59, i32 %60, i32 %61)
  br label %75

63:                                               ; preds = %6
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %71 = call i32 @scic_sds_stp_request_assign_buffers(%struct.TYPE_14__* %70)
  br label %74

72:                                               ; preds = %63
  %73 = load i64, i64* @SCI_FAILURE_UNSUPPORTED_PROTOCOL, align 8
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @SCI_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memset(i32 %85, i32 0, i32 4)
  %87 = load i8*, i8** %11, align 8
  %88 = load i8**, i8*** %12, align 8
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %79, %75
  %90 = load i64, i64* %13, align 8
  ret i64 %90
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i32 @scic_sds_general_request_construct(i32*, i32*, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @scic_remote_device_get_protocols(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @scic_sds_ssp_task_request_assign_buffers(%struct.TYPE_14__*) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, i32*, i32, i32) #1

declare dso_local i32 @scic_sds_stp_request_assign_buffers(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
