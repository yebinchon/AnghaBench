; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_push_new_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_push_new_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_ramrod_params = type { %struct.TYPE_4__, i32, %struct.ecore_vlan_mac_obj* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_vlan_mac_obj = type { i32 }
%struct.ecore_exeq_elem = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RAMROD_RESTORE = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_vlan_mac_ramrod_params*)* @ecore_vlan_mac_push_new_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_vlan_mac_push_new_cmd(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_vlan_mac_ramrod_params*, align 8
  %6 = alloca %struct.ecore_exeq_elem*, align 8
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_vlan_mac_ramrod_params* %1, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %9 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %9, i32 0, i32 2
  %11 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %10, align 8
  store %struct.ecore_vlan_mac_obj* %11, %struct.ecore_vlan_mac_obj** %7, align 8
  %12 = load i32, i32* @RAMROD_RESTORE, align 4
  %13 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 1
  %15 = call i32 @ECORE_TEST_BIT(i32 %12, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %17 = call %struct.ecore_exeq_elem* @ecore_exe_queue_alloc_elem(%struct.bxe_softc* %16)
  store %struct.ecore_exeq_elem* %17, %struct.ecore_exeq_elem** %6, align 8
  %18 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %6, align 8
  %19 = icmp ne %struct.ecore_exeq_elem* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %30 [
    i32 128, label %27
  ]

27:                                               ; preds = %22
  %28 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %28, i32 0, i32 0
  store i32 2, i32* %29, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %6, align 8
  %35 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.ecore_vlan_mac_ramrod_params*, %struct.ecore_vlan_mac_ramrod_params** %5, align 8
  %38 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %37, i32 0, i32 0
  %39 = call i32 @ECORE_MEMCPY(i32* %36, %struct.TYPE_4__* %38, i32 4)
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %41 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %42 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %41, i32 0, i32 0
  %43 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ecore_exe_queue_add(%struct.bxe_softc* %40, i32* %42, %struct.ecore_exeq_elem* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %33, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local %struct.ecore_exeq_elem* @ecore_exe_queue_alloc_elem(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_MEMCPY(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ecore_exe_queue_add(%struct.bxe_softc*, i32*, %struct.ecore_exeq_elem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
