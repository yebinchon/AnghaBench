; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_squeeze_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_squeeze_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)* }
%struct.bxe_softc.0 = type opaque
%struct.ecore_mcast_ramrod_params = type { i64, i32*, i32* }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@ECORE_ETH_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to clean ETH MACs (%d)\0A\00", align 1
@ECORE_UC_LIST_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to clean UC list MACs (%d)\0A\00", align 1
@ECORE_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to send DEL MCAST command (%d)\0A\00", align 1
@ECORE_MCAST_CMD_CONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to clean MCAST object (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_squeeze_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_squeeze_objects(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ecore_mcast_ramrod_params, align 8
  %6 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %8 = bitcast %struct.ecore_mcast_ramrod_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ecore_vlan_mac_obj* %12, %struct.ecore_vlan_mac_obj** %6, align 8
  %13 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %14 = call i32 @bxe_set_bit(i32 %13, i64* %3)
  %15 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %16 = call i32 @bxe_set_bit(i32 %15, i64* %3)
  %17 = load i32, i32* @ECORE_ETH_MAC, align 4
  %18 = call i32 @bxe_set_bit(i32 %17, i64* %4)
  %19 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %19, i32 0, i32 0
  %21 = load i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)** %20, align 8
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = bitcast %struct.bxe_softc* %22 to %struct.bxe_softc.0*
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 %21(%struct.bxe_softc.0* %23, %struct.ecore_vlan_mac_obj* %27, i64* %4, i64* %3)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @BLOGE(%struct.bxe_softc* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  store i64 0, i64* %4, align 8
  %36 = load i32, i32* @ECORE_UC_LIST_MAC, align 4
  %37 = call i32 @bxe_set_bit(i32 %36, i64* %4)
  %38 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %6, align 8
  %39 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %38, i32 0, i32 0
  %40 = load i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i64*, i64*)** %39, align 8
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %42 = bitcast %struct.bxe_softc* %41 to %struct.bxe_softc.0*
  %43 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %6, align 8
  %44 = call i32 %40(%struct.bxe_softc.0* %42, %struct.ecore_vlan_mac_obj* %43, i64* %4, i64* %3)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BLOGE(%struct.bxe_softc* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %35
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %5, i32 0, i32 1
  store i32* %53, i32** %54, align 8
  %55 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %56 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %5, i32 0, i32 0
  %57 = call i32 @bxe_set_bit(i32 %55, i64* %56)
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %59 = load i32, i32* @ECORE_MCAST_CMD_DEL, align 4
  %60 = call i32 @ecore_config_mcast(%struct.bxe_softc* %58, %struct.ecore_mcast_ramrod_params* %5, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @BLOGE(%struct.bxe_softc* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %51
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = load i32, i32* @ECORE_MCAST_CMD_CONT, align 4
  %70 = call i32 @ecore_config_mcast(%struct.bxe_softc* %68, %struct.ecore_mcast_ramrod_params* %5, i32 %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %81, %67
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @BLOGE(%struct.bxe_softc* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %85

81:                                               ; preds = %74
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %83 = load i32, i32* @ECORE_MCAST_CMD_CONT, align 4
  %84 = call i32 @ecore_config_mcast(%struct.bxe_softc* %82, %struct.ecore_mcast_ramrod_params* %5, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %71

85:                                               ; preds = %77, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bxe_set_bit(i32, i64*) #2

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #2

declare dso_local i32 @ecore_config_mcast(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
