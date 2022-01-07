; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SCI_BASE_PORT_STATE_RESETTING = common dso_local global i64 0, align 8
@SCI_BASE_PORT_STATE_FAILED = common dso_local global i32 0, align 4
@SCI_BASE_PORT_STATE_STOPPED = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SCIC Port 0x%x failed to stop before tiemout.\0A\00", align 1
@SCI_BASE_PORT_STATE_STOPPING = common dso_local global i64 0, align 8
@SCI_FAILURE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"SCIC Port 0x%x is processing a timeout operation in state %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_port_timeout_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = call i64 @sci_base_state_machine_get_state(i32* %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @SCI_BASE_PORT_STATE_RESETTING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* @SCI_BASE_PORT_STATE_FAILED, align 4
  %19 = call i32 @sci_base_state_machine_change_state(i32* %17, i32 %18)
  br label %51

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @SCI_BASE_PORT_STATE_STOPPED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32 @sci_base_object_get_logger(%struct.TYPE_6__* %25)
  %27 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = ptrtoint %struct.TYPE_6__* %28 to i32
  %30 = call i32 @SCIC_LOG_ERROR(i32 %29)
  br label %50

31:                                               ; preds = %20
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @SCI_BASE_PORT_STATE_STOPPING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i32 @scic_sds_port_get_controller(%struct.TYPE_6__* %36)
  %38 = load i8*, i8** %2, align 8
  %39 = load i32, i32* @SCI_FAILURE_TIMEOUT, align 4
  %40 = call i32 @scic_cb_port_stop_complete(i32 %37, i8* %38, i32 %39)
  br label %49

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = call i32 @sci_base_object_get_logger(%struct.TYPE_6__* %42)
  %44 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @SCIC_LOG_ERROR(i32 %47)
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %14
  ret void
}

declare dso_local i64 @sci_base_state_machine_get_state(i32*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_6__*) #1

declare dso_local i32 @scic_cb_port_stop_complete(i32, i8*, i32) #1

declare dso_local i32 @scic_sds_port_get_controller(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
