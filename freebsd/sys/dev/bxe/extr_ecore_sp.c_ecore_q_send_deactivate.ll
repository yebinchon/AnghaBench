; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_send_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_send_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_state_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ecore_queue_update_params }
%struct.ecore_queue_update_params = type { i32 }

@ECORE_Q_UPDATE_ACTIVATE_CHNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_queue_state_params*)* @ecore_q_send_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_q_send_deactivate(%struct.bxe_softc* %0, %struct.ecore_queue_state_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_queue_state_params*, align 8
  %5 = alloca %struct.ecore_queue_update_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_queue_state_params* %1, %struct.ecore_queue_state_params** %4, align 8
  %6 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %4, align 8
  %7 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ecore_queue_update_params* %8, %struct.ecore_queue_update_params** %5, align 8
  %9 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %5, align 8
  %10 = call i32 @ECORE_MEMSET(%struct.ecore_queue_update_params* %9, i32 0, i32 4)
  %11 = load i32, i32* @ECORE_Q_UPDATE_ACTIVATE_CHNG, align 4
  %12 = load %struct.ecore_queue_update_params*, %struct.ecore_queue_update_params** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_queue_update_params, %struct.ecore_queue_update_params* %12, i32 0, i32 0
  %14 = call i32 @ECORE_SET_BIT_NA(i32 %11, i32* %13)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %4, align 8
  %17 = call i32 @ecore_q_send_update(%struct.bxe_softc* %15, %struct.ecore_queue_state_params* %16)
  ret i32 %17
}

declare dso_local i32 @ECORE_MEMSET(%struct.ecore_queue_update_params*, i32, i32) #1

declare dso_local i32 @ECORE_SET_BIT_NA(i32, i32*) #1

declare dso_local i32 @ecore_q_send_update(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
