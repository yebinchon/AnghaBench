; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_ready_substates.c_scif_sas_remote_device_ready_ncq_error_substate_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_ready_substates.c_scif_sas_remote_device_ready_ncq_error_substate_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@scif_sas_remote_device_ready_substate_handler_table = common dso_local global i32 0, align 4
@SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR = common dso_local global i32 0, align 4
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@SCI_SAS_ABORT_TASK_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scif_sas_remote_device_ready_ncq_error_substate_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_sas_remote_device_ready_ncq_error_substate_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %3, align 8
  %15 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = load i32, i32* @scif_sas_remote_device_ready_substate_handler_table, align 4
  %26 = load i32, i32* @SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR, align 4
  %27 = call i32 @SET_STATE_HANDLER(%struct.TYPE_13__* %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @scif_sas_controller_allocate_internal_request(i32* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = bitcast %struct.TYPE_11__* %41 to i8*
  %43 = load i32, i32* @SCI_SAS_ABORT_TASK_SET, align 4
  %44 = call i32 @scif_sas_internal_task_request_construct(i32* %38, %struct.TYPE_13__* %39, i32 %40, i8* %42, i32* %5, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %11, align 8
  br label %49

49:                                               ; preds = %67, %1
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @sci_fast_list_get_object(i32* %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %12, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32* @sci_fast_list_get_next(i32* %56)
  store i32* %57, i32** %11, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = icmp eq %struct.TYPE_13__* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @TRUE, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %52
  br label %49

68:                                               ; preds = %49
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %73 = call i32 @scif_controller_start_task(i32* %69, %struct.TYPE_13__* %70, %struct.TYPE_12__* %71, i32 %72)
  ret void
}

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @scif_sas_controller_allocate_internal_request(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @scif_sas_internal_task_request_construct(i32*, %struct.TYPE_13__*, i32, i8*, i32*, i32) #1

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32* @sci_fast_list_get_next(i32*) #1

declare dso_local i32 @scif_controller_start_task(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
