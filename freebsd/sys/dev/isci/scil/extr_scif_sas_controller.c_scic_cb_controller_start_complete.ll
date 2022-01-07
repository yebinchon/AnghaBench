; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scic_cb_controller_start_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scic_cb_controller_start_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"scic_cb_controller_start_complete(0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_TIMEOUT = common dso_local global i32 0, align 4
@SCI_BASE_CONTROLLER_STATE_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_cb_controller_start_complete(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @sci_object_get_association(i32 %6)
  %8 = inttoptr i64 %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @sci_base_object_get_logger(i32 %9)
  %11 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %12 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SCIF_LOG_TRACE(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SCI_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SCI_FAILURE_TIMEOUT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_READY, align 4
  %29 = call i32 @sci_base_state_machine_change_state(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @scif_cb_controller_start_complete(%struct.TYPE_5__* %31, i32 %32)
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @scif_cb_controller_start_complete(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
