; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_send_cmd_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_queue_send_cmd_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_queue_state_params = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_queue_state_params*)* @ecore_queue_send_cmd_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_queue_send_cmd_e2(%struct.bxe_softc* %0, %struct.ecore_queue_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_queue_state_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_queue_state_params* %1, %struct.ecore_queue_state_params** %5, align 8
  %6 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %7 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 132, label %9
    i32 133, label %13
    i32 131, label %13
    i32 136, label %13
    i32 138, label %13
    i32 129, label %13
    i32 128, label %13
    i32 134, label %13
    i32 137, label %13
    i32 130, label %13
    i32 135, label %13
  ]

9:                                                ; preds = %2
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %11 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %12 = call i32 @ecore_q_send_setup_e2(%struct.bxe_softc* %10, %struct.ecore_queue_state_params* %11)
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %15 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %16 = call i32 @ecore_queue_send_cmd_cmn(%struct.bxe_softc* %14, %struct.ecore_queue_state_params* %15)
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.ecore_queue_state_params*, %struct.ecore_queue_state_params** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_queue_state_params, %struct.ecore_queue_state_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %13, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @ecore_q_send_setup_e2(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ecore_queue_send_cmd_cmn(%struct.bxe_softc*, %struct.ecore_queue_state_params*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
