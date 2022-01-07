; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_request_constructed_state_start_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_request_constructed_state_start_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_9__, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }

@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SCI_BASE_REQUEST_STATE_STARTED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @scic_sds_request_constructed_state_start_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_request_constructed_state_start_handler(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCI_CONTROLLER_INVALID_IO_TAG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @scic_controller_allocate_io_tag(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SCI_CONTROLLER_INVALID_IO_TAG, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %81

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %4, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @scic_sds_io_tag_get_index(i64 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %53 [
    i32 130, label %39
    i32 129, label %39
    i32 128, label %51
    i32 131, label %52
  ]

39:                                               ; preds = %26, %26
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 65535, i32* %50, align 8
  br label %54

51:                                               ; preds = %26
  br label %54

52:                                               ; preds = %26
  br label %54

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %52, %51, %39
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FALSE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = call i32 @scic_sds_controller_copy_task_context(i32 %63, %struct.TYPE_11__* %64)
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @scic_sds_io_tag_get_index(i64 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* @SCI_BASE_REQUEST_STATE_STARTED, align 4
  %79 = call i32 @sci_base_state_machine_change_state(i32* %77, i32 %78)
  %80 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %83

81:                                               ; preds = %20
  %82 = load i32, i32* @SCI_FAILURE_INSUFFICIENT_RESOURCES, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %66
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @scic_controller_allocate_io_tag(i32) #1

declare dso_local i32 @scic_sds_io_tag_get_index(i64) #1

declare dso_local i32 @scic_sds_controller_copy_task_context(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
