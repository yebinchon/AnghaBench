; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_send_cmd_cmn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_send_cmd_cmn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_state_params = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_queue_state_params*)* @ecore_queue_send_cmd_cmn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_queue_send_cmd_cmn(%struct.bxe_softc* %0, %struct.ecore_queue_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_queue_state_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_queue_state_params* %1, %struct.ecore_queue_state_params** %5, align 8
  %6 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %7 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 132, label %9
    i32 131, label %13
    i32 135, label %17
    i32 137, label %21
    i32 129, label %25
    i32 128, label %29
    i32 133, label %33
    i32 136, label %37
    i32 130, label %41
    i32 134, label %45
  ]

9:                                                ; preds = %2
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %11 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %12 = call i32 @ecore_q_init(%struct.bxe_softc* %10, %struct.ecore_queue_state_params* %11)
  store i32 %12, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %15 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %16 = call i32 @ecore_q_send_setup_tx_only(%struct.bxe_softc* %14, %struct.ecore_queue_state_params* %15)
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %20 = call i32 @ecore_q_send_deactivate(%struct.bxe_softc* %18, %struct.ecore_queue_state_params* %19)
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %24 = call i32 @ecore_q_send_activate(%struct.bxe_softc* %22, %struct.ecore_queue_state_params* %23)
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %27 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %28 = call i32 @ecore_q_send_update(%struct.bxe_softc* %26, %struct.ecore_queue_state_params* %27)
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %32 = call i32 @ecore_q_send_update_tpa(%struct.bxe_softc* %30, %struct.ecore_queue_state_params* %31)
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %2
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %35 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %36 = call i32 @ecore_q_send_halt(%struct.bxe_softc* %34, %struct.ecore_queue_state_params* %35)
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %40 = call i32 @ecore_q_send_cfc_del(%struct.bxe_softc* %38, %struct.ecore_queue_state_params* %39)
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %2
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %43 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %44 = call i32 @ecore_q_send_terminate(%struct.bxe_softc* %42, %struct.ecore_queue_state_params* %43)
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %2
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %47 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %48 = call i32 @ecore_q_send_empty(%struct.bxe_softc* %46, %struct.ecore_queue_state_params* %47)
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %2
  %50 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %51 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ecore_q_init(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_setup_tx_only(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_deactivate(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_activate(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_update(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_update_tpa(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_halt(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_cfc_del(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_terminate(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_q_send_empty(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
