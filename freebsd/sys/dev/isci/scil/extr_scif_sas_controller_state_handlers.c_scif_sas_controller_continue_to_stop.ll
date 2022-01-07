; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_continue_to_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_state_handlers.c_scif_sas_controller_continue_to_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"scif_sas_controller_continue_to_stop (0x%x).\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"Controller:0x%x Status:0x%x unable to stop controller.\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Controller:0x%x Status:0x%x unable to stop domains.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_sas_controller_continue_to_stop(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %4)
  %6 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %7 = load i32, i32* @SCIF_LOG_OBJECT_SHUTDOWN, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = ptrtoint %struct.TYPE_7__* %9 to i32
  %11 = call i32 @SCIF_LOG_TRACE(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i64 @scif_sas_controller_stop_domains(%struct.TYPE_7__* %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @SCI_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @scic_controller_stop(i32 %20, i32 0)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @SCI_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %26)
  %28 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %29 = load i32, i32* @SCIF_LOG_OBJECT_SHUTDOWN, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @SCIF_LOG_ERROR(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %39 = call i32 @sci_base_state_machine_change_state(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %25, %17
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %42)
  %44 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %45 = load i32, i32* @SCIF_LOG_OBJECT_SHUTDOWN, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = load i64, i64* %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @SCIF_LOG_ERROR(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %55 = call i32 @sci_base_state_machine_change_state(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %41, %40
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_7__*) #1

declare dso_local i64 @scif_sas_controller_stop_domains(%struct.TYPE_7__*) #1

declare dso_local i64 @scic_controller_stop(i32, i32) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
