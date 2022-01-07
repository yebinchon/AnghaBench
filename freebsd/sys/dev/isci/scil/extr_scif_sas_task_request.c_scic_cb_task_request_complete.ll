; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_task_request.c_scic_cb_task_request_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_task_request.c_scic_cb_task_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i64*)*, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (i32*)* }

@SCIF_LOG_OBJECT_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"scic_cb_task_request_complete(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"RemoteDevice:0x%x TaskRequest:0x%x Function:0x%x CompletionStatus:0x%x completed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_cb_task_request_complete(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @sci_object_get_association(i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @sci_object_get_association(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @sci_object_get_association(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = call i32 @sci_base_object_get_logger(%struct.TYPE_13__* %22)
  %24 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @SCIF_LOG_TRACE(i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64 (i32*)*, i64 (i32*)** %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = call i64 %35(i32* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @SCI_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %93

43:                                               ; preds = %4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i64*)*, i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i64*)** %46, align 8
  %48 = icmp ne i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i64*)* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i64*)*, i64 (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i64*)** %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = bitcast i32* %8 to i64*
  %59 = call i64 %53(%struct.TYPE_13__* %54, i32* %55, %struct.TYPE_14__* %57, i64* %58)
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %49, %43
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @SCI_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %66 = call i32 @sci_base_object_get_logger(%struct.TYPE_13__* %65)
  %67 = load i32, i32* @SCIF_LOG_OBJECT_TASK_MANAGEMENT, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = call i32 @scif_sas_task_request_get_function(%struct.TYPE_13__* %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @SCIF_LOG_WARNING(i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FALSE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %64
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @scif_cb_task_request_complete(%struct.TYPE_13__* %81, i32* %82, %struct.TYPE_13__* %83, i32 %84)
  br label %91

86:                                               ; preds = %64
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %90 = call i32 @scif_controller_complete_task(%struct.TYPE_13__* %87, i32* %88, %struct.TYPE_13__* %89)
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %91, %60
  br label %93

93:                                               ; preds = %92, %4
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_13__*) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

declare dso_local i32 @scif_sas_task_request_get_function(%struct.TYPE_13__*) #1

declare dso_local i32 @scif_cb_task_request_complete(%struct.TYPE_13__*, i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @scif_controller_complete_task(%struct.TYPE_13__*, i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
