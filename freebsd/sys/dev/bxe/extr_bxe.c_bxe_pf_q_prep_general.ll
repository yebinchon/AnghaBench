; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_q_prep_general.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_q_prep_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i32 }
%struct.ecore_general_setup_params = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.bxe_fastpath*, %struct.ecore_general_setup_params*, i32)* @bxe_pf_q_prep_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_pf_q_prep_general(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1, %struct.ecore_general_setup_params* %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.bxe_fastpath*, align 8
  %7 = alloca %struct.ecore_general_setup_params*, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %6, align 8
  store %struct.ecore_general_setup_params* %2, %struct.ecore_general_setup_params** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %10 = call i32 @bxe_stats_id(%struct.bxe_fastpath* %9)
  %11 = load %struct.ecore_general_setup_params*, %struct.ecore_general_setup_params** %7, align 8
  %12 = getelementptr inbounds %struct.ecore_general_setup_params, %struct.ecore_general_setup_params* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %14 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ecore_general_setup_params*, %struct.ecore_general_setup_params** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_general_setup_params, %struct.ecore_general_setup_params* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ecore_general_setup_params*, %struct.ecore_general_setup_params** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_general_setup_params, %struct.ecore_general_setup_params* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ecore_general_setup_params*, %struct.ecore_general_setup_params** %7, align 8
  %25 = getelementptr inbounds %struct.ecore_general_setup_params, %struct.ecore_general_setup_params* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @bxe_stats_id(%struct.bxe_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
