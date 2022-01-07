; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_task_request.c_scif_sas_stp_task_request_abort_task_set_failure_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_stp_task_request.c_scif_sas_stp_task_request_abort_task_set_failure_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SCI_FAILURE_INVALID_STATE = common dso_local global i64 0, align 8
@SCI_IO_FAILURE_TERMINATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_stp_task_request_abort_task_set_failure_handler(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %64, %2
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @sci_fast_list_get_object(i32* %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @sci_fast_list_get_next(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = icmp eq %struct.TYPE_11__* %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %19
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load i64, i64* @FALSE, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @scic_controller_terminate_request(i32 %44, i32 %47, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @SCI_FAILURE_INVALID_STATE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %36
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = load i32, i32* @SCI_IO_FAILURE_TERMINATED, align 4
  %62 = call i32 @scif_cb_io_request_complete(%struct.TYPE_13__* %58, %struct.TYPE_11__* %59, %struct.TYPE_10__* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %36
  br label %64

64:                                               ; preds = %63, %30, %19
  br label %16

65:                                               ; preds = %16
  ret void
}

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32* @sci_fast_list_get_next(i32*) #1

declare dso_local i64 @scic_controller_terminate_request(i32, i32, i32) #1

declare dso_local i32 @scif_cb_io_request_complete(%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
