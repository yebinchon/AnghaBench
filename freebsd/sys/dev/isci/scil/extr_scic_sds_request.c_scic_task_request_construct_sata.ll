; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_task_request_construct_sata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_task_request_construct_sata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@SCIC_LOG_OBJECT_STP_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"scic_task_request_construct_sata(0x%x) enter\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"SCIC IO Request 0x%x received un-handled SAT Protocl %d.\0A\00", align 1
@SCI_FAILURE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_BASE_REQUEST_STATE_CONSTRUCTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_task_request_construct_sata(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %8)
  %10 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = ptrtoint %struct.TYPE_8__* %11 to i32
  %13 = call i32 @SCIC_LOG_TRACE(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @scic_cb_request_get_sat_protocol(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %30 [
    i32 130, label %22
    i32 128, label %22
    i32 129, label %25
  ]

22:                                               ; preds = %1, %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i64 @scic_sds_stp_soft_reset_request_construct(%struct.TYPE_8__* %23)
  store i64 %24, i64* %3, align 8
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i64 @scic_sds_stp_pio_request_construct(%struct.TYPE_8__* %26, i32 %27, i32 %28)
  store i64 %29, i64* %3, align 8
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %31)
  %33 = load i32, i32* @SCIC_LOG_OBJECT_STP_IO_REQUEST, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @SCIC_LOG_ERROR(i32 %35)
  %37 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %30, %25, %22
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @SCI_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* @SCI_BASE_REQUEST_STATE_CONSTRUCTED, align 4
  %49 = call i32 @sci_base_state_machine_change_state(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_8__*) #1

declare dso_local i32 @scic_cb_request_get_sat_protocol(i32) #1

declare dso_local i64 @scic_sds_stp_soft_reset_request_construct(%struct.TYPE_8__*) #1

declare dso_local i64 @scic_sds_stp_pio_request_construct(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @scic_sds_request_initialize_state_logging(%struct.TYPE_8__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
