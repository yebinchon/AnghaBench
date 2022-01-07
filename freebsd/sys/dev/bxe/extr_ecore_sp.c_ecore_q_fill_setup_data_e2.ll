; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_setup_data_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_setup_data_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_state_params = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ecore_queue_setup_params }
%struct.ecore_queue_setup_params = type { i32 }
%struct.client_init_ramrod_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ECORE_Q_FLG_TPA_IPV6 = common dso_local global i32 0, align 4
@CLIENT_INIT_RX_DATA_TPA_EN_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_queue_state_params*, %struct.client_init_ramrod_data*)* @ecore_q_fill_setup_data_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_q_fill_setup_data_e2(%struct.bxe_softc* %0, %struct.ecore_queue_state_params* %1, %struct.client_init_ramrod_data* %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_queue_state_params*, align 8
  %6 = alloca %struct.client_init_ramrod_data*, align 8
  %7 = alloca %struct.ecore_queue_setup_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_queue_state_params* %1, %struct.ecore_queue_state_params** %5, align 8
  store %struct.client_init_ramrod_data* %2, %struct.client_init_ramrod_data** %6, align 8
  %8 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %9 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ecore_queue_setup_params* %10, %struct.ecore_queue_setup_params** %7, align 8
  %11 = load i32, i32* @ECORE_Q_FLG_TPA_IPV6, align 4
  %12 = load %struct.ecore_queue_setup_params*, %struct.ecore_queue_setup_params** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_queue_setup_params, %struct.ecore_queue_setup_params* %12, i32 0, i32 0
  %14 = call i32 @ECORE_TEST_BIT(i32 %11, i32* %13)
  %15 = load i32, i32* @CLIENT_INIT_RX_DATA_TPA_EN_IPV6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %6, align 8
  %18 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %16
  store i32 %21, i32* %19, align 4
  ret void
}

declare dso_local i32 @ECORE_TEST_BIT(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
