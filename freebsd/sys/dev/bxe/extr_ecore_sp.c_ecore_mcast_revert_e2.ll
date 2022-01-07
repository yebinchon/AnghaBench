; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_revert_e2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_revert_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { i64, %struct.ecore_mcast_obj* }
%struct.ecore_mcast_obj = type { i32, i32 (%struct.ecore_mcast_obj*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32)* @ecore_mcast_revert_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcast_revert_e2(%struct.bxe_softc* %0, %struct.ecore_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_mcast_ramrod_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_mcast_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_mcast_ramrod_params* %1, %struct.ecore_mcast_ramrod_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %9 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %8, i32 0, i32 1
  %10 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %9, align 8
  store %struct.ecore_mcast_obj* %10, %struct.ecore_mcast_obj** %7, align 8
  %11 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %12 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %11, i32 0, i32 1
  %13 = load i32 (%struct.ecore_mcast_obj*, i32)*, i32 (%struct.ecore_mcast_obj*, i32)** %12, align 8
  %14 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 %13(%struct.ecore_mcast_obj* %14, i32 %15)
  %17 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %7, align 8
  %21 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
