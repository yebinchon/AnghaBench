; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_del_all_macs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_del_all_macs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)* }
%struct.bxe_softc.0 = type opaque

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failed to delete MACs (%d) mac_type %d wait_for_comp 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32)* @bxe_del_all_macs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_del_all_macs(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %16 = call i32 @bxe_set_bit(i32 %15, i64* %9)
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @bxe_set_bit(i32 %18, i64* %10)
  %20 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %20, i32 0, i32 0
  %22 = load i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)** %21, align 8
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %24 = bitcast %struct.bxe_softc* %23 to %struct.bxe_softc.0*
  %25 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %6, align 8
  %26 = call i32 %22(%struct.bxe_softc.0* %24, %struct.ecore_vlan_mac_obj* %25, i64* %10, i64* %9)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @BLOGE(%struct.bxe_softc* %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %17
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local i32 @bxe_set_bit(i32, i64*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
