; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_classification_eqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_classification_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %union.event_ring_elem*, i64*)* }
%struct.bxe_softc.0 = type opaque
%union.event_ring_elem = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@BXE_SWCID_MASK = common dso_local global i64 0, align 8
@RAMROD_CONT = common dso_local global i32 0, align 4
@BXE_SWCID_SHIFT = common dso_local global i32 0, align 4
@DBG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Got SETUP_MAC completions\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Got SETUP_MCAST completions\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unsupported classification command: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to schedule new commands (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Scheduled next pending commands...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %union.event_ring_elem*)* @bxe_handle_classification_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_handle_classification_eqe(%struct.bxe_softc* %0, %union.event_ring_elem* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %union.event_ring_elem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ecore_vlan_mac_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %union.event_ring_elem* %1, %union.event_ring_elem** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %10 = bitcast %union.event_ring_elem* %9 to %struct.TYPE_8__*
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BXE_SWCID_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @RAMROD_CONT, align 4
  %18 = call i32 @bit_set(i64* %5, i32 %17)
  %19 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %20 = bitcast %union.event_ring_elem* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @le32toh(i64 %24)
  %26 = load i32, i32* @BXE_SWCID_SHIFT, align 4
  %27 = ashr i32 %25, %26
  switch i32 %27, label %44 [
    i32 129, label %28
    i32 128, label %38
  ]

28:                                               ; preds = %2
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = load i32, i32* @DBG_SP, align 4
  %31 = call i32 @BLOGD(%struct.bxe_softc* %29, i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.ecore_vlan_mac_obj* %37, %struct.ecore_vlan_mac_obj** %8, align 8
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %40 = load i32, i32* @DBG_SP, align 4
  %41 = call i32 @BLOGD(%struct.bxe_softc* %39, i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = call i32 @bxe_handle_mcast_eqe(%struct.bxe_softc* %42)
  br label %77

44:                                               ; preds = %2
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %47 = bitcast %union.event_ring_elem* %46 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @BLOGE(%struct.bxe_softc* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %77

54:                                               ; preds = %28
  %55 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %56 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %55, i32 0, i32 0
  %57 = load i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %union.event_ring_elem*, i64*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %union.event_ring_elem*, i64*)** %56, align 8
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %59 = bitcast %struct.bxe_softc* %58 to %struct.bxe_softc.0*
  %60 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %61 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %62 = call i32 %57(%struct.bxe_softc.0* %59, %struct.ecore_vlan_mac_obj* %60, %union.event_ring_elem* %61, i64* %5)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @BLOGE(%struct.bxe_softc* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %77

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %74 = load i32, i32* @DBG_SP, align 4
  %75 = call i32 @BLOGD(%struct.bxe_softc* %73, i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %38, %44, %76, %65
  ret void
}

declare dso_local i32 @bit_set(i64*, i32) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32 @bxe_handle_mcast_eqe(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
