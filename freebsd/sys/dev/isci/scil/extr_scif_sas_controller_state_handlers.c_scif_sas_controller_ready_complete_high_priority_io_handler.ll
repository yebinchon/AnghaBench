; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_complete_high_priority_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_ready_complete_high_priority_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 (i32*, i32*, i32*, i8*, i32)* }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 (i32*)* }

@SCIF_SAS_RESPONSE_DATA_LENGTH = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"scif_sas_controller_ready_complete_high_priority_io_handler(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@scif_sas_controller_start_high_priority_io = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Controller:0x%x IORequest:0x%x Status:0x%x CoreStatus:0x%x failure to complete IO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*)* @scif_sas_controller_ready_complete_high_priority_io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_controller_ready_complete_high_priority_io_handler(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %9, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @scic_request_get_sci_status(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @SCIF_SAS_RESPONSE_DATA_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %30)
  %32 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %33 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = call i32 @SCIF_LOG_TRACE(i32 %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @scic_io_request_get_response_iu_address(i32 %43)
  %45 = load i32, i32* @SCIF_SAS_RESPONSE_DATA_LENGTH, align 4
  %46 = call i32 @memcpy(i32* %29, i32 %44, i32 %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @scic_controller_complete_io(i32 %49, i32 %52, i32 %56)
  store i64 %57, i64* %14, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32 (i32*)*, i32 (i32*)** %62, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = call i32 %63(i32* %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64 (i32*, i32*, i32*, i8*, i32)*, i64 (i32*, i32*, i32*, i8*, i32)** %73, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = bitcast i32* %29 to i8*
  %82 = load i32, i32* %10, align 4
  %83 = call i64 %74(i32* %78, i32* %79, i32* %80, i8* %81, i32 %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @SCI_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %3
  %88 = load i64, i64* %14, align 8
  store i64 %88, i64* %13, align 8
  br label %89

89:                                               ; preds = %87, %3
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @SCI_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sci_pool_empty(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = load i32, i32* @scif_sas_controller_start_high_priority_io, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = call i32 @scif_cb_start_internal_io_task_schedule(%struct.TYPE_19__* %101, i32 %102, %struct.TYPE_19__* %103)
  br label %105

105:                                              ; preds = %100, %93
  br label %116

106:                                              ; preds = %89
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = call i32 @sci_base_object_get_logger(%struct.TYPE_19__* %107)
  %109 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %14, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @SCIF_LOG_WARNING(i32 %114)
  br label %116

116:                                              ; preds = %106, %105
  %117 = load i64, i64* %13, align 8
  %118 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %118)
  ret i64 %117
}

declare dso_local i32 @scic_request_get_sci_status(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @scic_io_request_get_response_iu_address(i32) #1

declare dso_local i64 @scic_controller_complete_io(i32, i32, i32) #1

declare dso_local i32 @sci_pool_empty(i32) #1

declare dso_local i32 @scif_cb_start_internal_io_task_schedule(%struct.TYPE_19__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
