; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_internal_io_request.c_scif_sas_internal_io_request_construct_smp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_internal_io_request.c_scif_sas_internal_io_request_construct_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@scif_sas_internal_io_request_timeout_handler = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"scif_sas_internal_io_request_construct_smp, high priority queue full!\0A\00", align 1
@SCI_FAILURE_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_sas_internal_io_request_construct_smp(%struct.TYPE_15__* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %13, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = call i64 @scif_sas_io_request_construct_smp(%struct.TYPE_15__* %19, i32* %20, i8* %21, i8* %23, i32 %24, i32* %25, i32* null)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @SCI_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %5
  %31 = load i32, i32* @TRUE, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = bitcast %struct.TYPE_15__* %40 to i32*
  %42 = load i32, i32* @scif_sas_internal_io_request_timeout_handler, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %44 = bitcast %struct.TYPE_13__* %43 to i8*
  %45 = call i32* @scif_cb_timer_create(i32* %41, i32 %42, i8* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  br label %50

48:                                               ; preds = %30
  %49 = call i32 @ASSERT(i32 0)
  br label %50

50:                                               ; preds = %48, %39
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sci_pool_full(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = call i32 @sci_pool_put(i32 %61, i32 %63)
  br label %76

65:                                               ; preds = %50
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = call i32 @sci_base_object_get_logger(%struct.TYPE_15__* %66)
  %68 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %69 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @SCIF_LOG_ERROR(i32 ptrtoint ([71 x i8]* @.str to i32))
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = call i32 @scif_sas_internal_io_request_destruct(%struct.TYPE_15__* %72, %struct.TYPE_14__* %73)
  %75 = load i64, i64* @SCI_FAILURE_INSUFFICIENT_RESOURCES, align 8
  store i64 %75, i64* %6, align 8
  br label %79

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76, %5
  %78 = load i64, i64* %14, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i64, i64* %6, align 8
  ret i64 %80
}

declare dso_local i64 @scif_sas_io_request_construct_smp(%struct.TYPE_15__*, i32*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @scif_cb_timer_create(i32*, i32, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sci_pool_full(i32) #1

declare dso_local i32 @sci_pool_put(i32, i32) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_15__*) #1

declare dso_local i32 @scif_sas_internal_io_request_destruct(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
