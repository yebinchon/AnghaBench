; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_get_q_logical_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_get_q_logical_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_sp_obj = type { i32 }

@ECORE_Q_LOGICAL_STATE_ACTIVE = common dso_local global i32 0, align 4
@ECORE_Q_LOGICAL_STATE_STOPPED = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_get_q_logical_state(%struct.bxe_softc* %0, %struct.ecore_queue_sp_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_queue_sp_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_queue_sp_obj* %1, %struct.ecore_queue_sp_obj** %5, align 8
  %6 = load %struct.ecore_queue_sp_obj*, %struct.ecore_queue_sp_obj** %5, align 8
  %7 = getelementptr inbounds %struct.ecore_queue_sp_obj, %struct.ecore_queue_sp_obj* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 136, label %9
    i32 131, label %9
    i32 130, label %11
    i32 133, label %11
    i32 132, label %11
    i32 134, label %11
    i32 129, label %11
    i32 128, label %11
    i32 135, label %11
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @ECORE_Q_LOGICAL_STATE_ACTIVE, align 4
  store i32 %10, i32* %3, align 4
  br label %15

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %12 = load i32, i32* @ECORE_Q_LOGICAL_STATE_STOPPED, align 4
  store i32 %12, i32* %3, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
