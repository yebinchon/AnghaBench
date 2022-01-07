; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_io_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_SSP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_IO_REQUEST = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"scic_io_request_construct(0x%x, 0x%x, 0x02x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_REMOTE_DEVICE = common dso_local global i64 0, align 8
@SCI_FAILURE_UNSUPPORTED_PROTOCOL = common dso_local global i64 0, align 8
@SCU_TASK_CONTEXT_T = common dso_local global i32 0, align 4
@sgl_pair_ab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_io_request_construct(i64 %0, i64 %1, i32 %2, i8* %3, i8* %4, i8** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %15, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @sci_base_object_get_logger(i64 %20)
  %22 = load i32, i32* @SCIC_LOG_OBJECT_SSP_IO_REQUEST, align 4
  %23 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %26 = or i32 %24, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %32 = load i8**, i8*** %13, align 8
  %33 = ptrtoint i8** %32 to i32
  %34 = call i32 @SCIC_LOG_TRACE(i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i64, i64* %9, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %42 = call i32 @scic_sds_general_request_construct(i32* %36, i32* %38, i32 %39, i8* %40, %struct.TYPE_13__* %41)
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = call i64 @scic_sds_remote_device_get_index(i32* %44)
  %46 = load i64, i64* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %6
  %49 = load i64, i64* @SCI_FAILURE_INVALID_REMOTE_DEVICE, align 8
  store i64 %49, i64* %7, align 8
  br label %107

50:                                               ; preds = %6
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @scic_remote_device_get_protocols(i64 %51, %struct.TYPE_12__* %16)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %60 = call i32 @scic_sds_ssp_io_request_assign_buffers(%struct.TYPE_13__* %59)
  br label %91

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %69 = call i32 @scic_sds_stp_request_assign_buffers(%struct.TYPE_13__* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memset(i32 %72, i32 0, i32 4)
  br label %90

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %82 = call i32 @scic_sds_smp_request_assign_buffers(%struct.TYPE_13__* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memset(i32 %85, i32 0, i32 4)
  br label %89

87:                                               ; preds = %74
  %88 = load i64, i64* @SCI_FAILURE_UNSUPPORTED_PROTOCOL, align 8
  store i64 %88, i64* %14, align 8
  br label %89

89:                                               ; preds = %87, %80
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @SCI_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SCU_TASK_CONTEXT_T, align 4
  %100 = load i32, i32* @sgl_pair_ab, align 4
  %101 = call i32 @SCI_FIELD_OFFSET(i32 %99, i32 %100)
  %102 = call i32 @memset(i32 %98, i32 0, i32 %101)
  %103 = load i8*, i8** %12, align 8
  %104 = load i8**, i8*** %13, align 8
  store i8* %103, i8** %104, align 8
  br label %105

105:                                              ; preds = %95, %91
  %106 = load i64, i64* %14, align 8
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %105, %48
  %108 = load i64, i64* %7, align 8
  ret i64 %108
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i32 @scic_sds_general_request_construct(i32*, i32*, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i64 @scic_sds_remote_device_get_index(i32*) #1

declare dso_local i32 @scic_remote_device_get_protocols(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @scic_sds_ssp_io_request_assign_buffers(%struct.TYPE_13__*) #1

declare dso_local i32 @scic_sds_stp_request_assign_buffers(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @scic_sds_smp_request_assign_buffers(%struct.TYPE_13__*) #1

declare dso_local i32 @SCI_FIELD_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
