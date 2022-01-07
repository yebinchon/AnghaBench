; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_wait_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_wait_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj, %struct.ecore_exe_queue_obj }
%struct.ecore_raw_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_raw_obj*)* }
%struct.bxe_softc.0 = type opaque
%struct.ecore_exe_queue_obj = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*)* @ecore_wait_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_wait_vlan_mac(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_exe_queue_obj*, align 8
  %9 = alloca %struct.ecore_raw_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %5, align 8
  store i32 5000, i32* %6, align 4
  %10 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %5, align 8
  %11 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %10, i32 0, i32 1
  store %struct.ecore_exe_queue_obj* %11, %struct.ecore_exe_queue_obj** %8, align 8
  %12 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %12, i32 0, i32 0
  store %struct.ecore_raw_obj* %13, %struct.ecore_raw_obj** %9, align 8
  br label %14

14:                                               ; preds = %39, %2
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %20 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %19, i32 0, i32 0
  %21 = load i32 (%struct.bxe_softc.0*, %struct.ecore_raw_obj*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_raw_obj*)** %20, align 8
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = bitcast %struct.bxe_softc* %22 to %struct.bxe_softc.0*
  %24 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %25 = call i32 %21(%struct.bxe_softc.0* %23, %struct.ecore_raw_obj* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %18
  %31 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %8, align 8
  %32 = call i32 @ecore_exe_queue_empty(%struct.ecore_exe_queue_obj* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %36 = call i32 @ECORE_WAIT(%struct.bxe_softc* %35, i32 1000)
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %34
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %37, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ecore_exe_queue_empty(%struct.ecore_exe_queue_obj*) #1

declare dso_local i32 @ECORE_WAIT(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
