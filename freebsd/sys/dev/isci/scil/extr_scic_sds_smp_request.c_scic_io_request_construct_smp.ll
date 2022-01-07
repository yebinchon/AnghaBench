; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_smp_request.c_scic_io_request_construct_smp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_smp_request.c_scic_io_request_construct_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SCIC_LOG_OBJECT_SMP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"scic_io_request_construct_smp(0x%x) enter\0A\00", align 1
@SCIC_SMP_PROTOCOL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@scic_sds_smp_request_started_substate_table = common dso_local global i32 0, align 4
@SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_RESPONSE = common dso_local global i32 0, align 4
@SCI_BASE_REQUEST_STATE_CONSTRUCTED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_io_request_construct_smp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %7)
  %9 = load i32, i32* @SCIC_LOG_OBJECT_SMP_IO_REQUEST, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = ptrtoint %struct.TYPE_11__* %10 to i32
  %12 = call i32 @SCIC_LOG_TRACE(i32 %11)
  %13 = load i32, i32* @SCIC_SMP_PROTOCOL, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* @scic_sds_smp_request_started_substate_table, align 4
  %25 = load i32, i32* @SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_RESPONSE, align 4
  %26 = call i32 @sci_base_state_machine_construct(i32* %20, i32* %23, i32 %24, i32 %25)
  %27 = bitcast %struct.TYPE_10__* %3 to i8*
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i8* %27, i32 %30, i32 16)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %46 [
    i32 133, label %40
    i32 130, label %40
    i32 129, label %40
    i32 128, label %40
    i32 134, label %43
    i32 132, label %43
    i32 131, label %43
  ]

40:                                               ; preds = %36, %36, %36, %36
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i64 2, i64* %42, align 8
  br label %46

43:                                               ; preds = %36, %36, %36
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i64 9, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %43, %40
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @scu_smp_request_construct_task_context(%struct.TYPE_11__* %48, %struct.TYPE_10__* %3)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* @SCI_BASE_REQUEST_STATE_CONSTRUCTED, align 4
  %54 = call i32 @sci_base_state_machine_change_state(i32* %52, i32 %53)
  %55 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %55
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_11__*) #1

declare dso_local i32 @sci_base_state_machine_construct(i32*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @scu_smp_request_construct_task_context(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
