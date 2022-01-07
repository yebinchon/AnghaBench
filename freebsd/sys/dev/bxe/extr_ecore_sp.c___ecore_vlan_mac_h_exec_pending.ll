; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c___ecore_vlan_mac_h_exec_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c___ecore_vlan_mac_h_exec_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i64, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"vlan_mac_lock execute pending command with ramrod flags %lu\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"execution of pending commands failed with rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*)* @__ecore_vlan_mac_h_exec_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ecore_vlan_mac_h_exec_pending(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %4, align 8
  %7 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @ECORE_MSG(%struct.bxe_softc* %10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @FALSE, align 4
  %14 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %19, i32 0, i32 1
  %21 = call i32 @ecore_exe_queue_step(%struct.bxe_softc* %18, i32* %20, i64* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ECORE_PENDING, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %25, %2
  ret void
}

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i64) #1

declare dso_local i32 @ecore_exe_queue_step(%struct.bxe_softc*, i32*, i64*) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
