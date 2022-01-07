; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_ready_substate_handlers.c_scif_sas_remote_device_ready_task_management_complete_high_priority_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_ready_substate_handlers.c_scif_sas_remote_device_ready_task_management_complete_high_priority_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"scif_sas_remote_device_ready_task_management_complete_high_priority_io_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL = common dso_local global i32 0, align 4
@SCIC_SMP_PROTOCOL = common dso_local global i64 0, align 8
@SCI_IO_FAILURE_TERMINATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_remote_device_ready_task_management_complete_high_priority_io_handler(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sci_base_object_get_logger(i32* %18)
  %20 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %21 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @SCIF_LOG_TRACE(i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* @SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL, align 4
  %35 = call i32 @sci_base_state_machine_change_state(i32* %33, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @scic_io_request_get_protocol(i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @SCIC_SMP_PROTOCOL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SCI_IO_FAILURE_TERMINATED, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @scif_sas_smp_remote_device_decode_smp_response(%struct.TYPE_10__* %48, %struct.TYPE_9__* %49, i8* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = call i32 @scif_sas_smp_remote_device_terminated_request_handler(%struct.TYPE_10__* %54, %struct.TYPE_9__* %55)
  br label %57

57:                                               ; preds = %53, %47
  br label %75

58:                                               ; preds = %4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = bitcast %struct.TYPE_9__* %70 to i32*
  %72 = load i32, i32* @SCI_SUCCESS, align 4
  %73 = call i32 @scif_sas_internal_io_request_complete(i32 %69, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %58
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i64 @scic_io_request_get_protocol(i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_decode_smp_response(%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @scif_sas_smp_remote_device_terminated_request_handler(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @scif_sas_internal_io_request_complete(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
