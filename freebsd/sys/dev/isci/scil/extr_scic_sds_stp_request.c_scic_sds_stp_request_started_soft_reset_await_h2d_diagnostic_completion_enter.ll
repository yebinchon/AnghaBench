; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_started_soft_reset_await_h2d_diagnostic_completion_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_request.c_scic_sds_stp_request_started_soft_reset_await_h2d_diagnostic_completion_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 (i32*, i32*, i32*)* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@scic_sds_stp_request_started_soft_reset_substate_handler_table = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REQUEST_STARTED_SOFT_RESET_AWAIT_H2D_DIAGNOSTIC_COMPLETION_SUBSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scic_sds_stp_request_started_soft_reset_await_h2d_diagnostic_completion_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_stp_request_started_soft_reset_await_h2d_diagnostic_completion_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = call %struct.TYPE_18__* @scic_stp_io_request_get_h2d_reg_address(%struct.TYPE_17__* %9)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_16__* @scic_sds_controller_get_task_context_buffer(%struct.TYPE_12__* %15, i32 %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = call i64 %29(i32* %33, i32* %37, i32* %39)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @SCI_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = load i32, i32* @scic_sds_stp_request_started_soft_reset_substate_handler_table, align 4
  %47 = load i32, i32* @SCIC_SDS_STP_REQUEST_STARTED_SOFT_RESET_AWAIT_H2D_DIAGNOSTIC_COMPLETION_SUBSTATE, align 4
  %48 = call i32 @SET_STATE_HANDLER(%struct.TYPE_17__* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %1
  ret void
}

declare dso_local %struct.TYPE_18__* @scic_stp_io_request_get_h2d_reg_address(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @scic_sds_controller_get_task_context_buffer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
