; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_setup_data_cmn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_q_fill_setup_data_cmn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_state_params = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.client_init_ramrod_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_queue_state_params*, %struct.client_init_ramrod_data*)* @ecore_q_fill_setup_data_cmn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_q_fill_setup_data_cmn(%struct.bxe_softc* %0, %struct.ecore_queue_state_params* %1, %struct.client_init_ramrod_data* %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_queue_state_params*, align 8
  %6 = alloca %struct.client_init_ramrod_data*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_queue_state_params* %1, %struct.ecore_queue_state_params** %5, align 8
  store %struct.client_init_ramrod_data* %2, %struct.client_init_ramrod_data** %6, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %8 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %9 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %6, align 8
  %16 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %15, i32 0, i32 2
  %17 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i32 @ecore_q_fill_init_general_data(%struct.bxe_softc* %7, i32 %10, i32* %14, i32* %16, i32* %20)
  %22 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %23 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %6, align 8
  %30 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %29, i32 0, i32 1
  %31 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i32 @ecore_q_fill_init_tx_data(i32 %24, i32* %28, i32* %30, i32* %34)
  %36 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %37 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %40 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %6, align 8
  %44 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %43, i32 0, i32 0
  %45 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %46 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @ecore_q_fill_init_rx_data(i32 %38, i32* %42, i32* %44, i32* %48)
  %50 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %51 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %54 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %6, align 8
  %58 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %57, i32 0, i32 0
  %59 = call i32 @ecore_q_fill_init_pause_data(i32 %52, i32* %56, i32* %58)
  ret void
}

declare dso_local i32 @ecore_q_fill_init_general_data(%struct.bxe_softc*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ecore_q_fill_init_tx_data(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ecore_q_fill_init_rx_data(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ecore_q_fill_init_pause_data(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
