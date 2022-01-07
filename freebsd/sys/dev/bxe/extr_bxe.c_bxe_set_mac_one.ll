; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_mac_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_mac_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i32 }
%struct.ecore_vlan_mac_ramrod_params = type { i64, %struct.TYPE_6__, %struct.ecore_vlan_mac_obj* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RAMROD_CONT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ECORE_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@ECORE_VLAN_MAC_DEL = common dso_local global i32 0, align 4
@ECORE_EXISTS = common dso_local global i32 0, align 4
@DBG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to schedule ADD operations (EEXIST)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s MAC failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i64*, %struct.ecore_vlan_mac_obj*, i64, i32, i64*)* @bxe_set_mac_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_set_mac_one(%struct.bxe_softc* %0, i64* %1, %struct.ecore_vlan_mac_obj* %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ecore_vlan_mac_ramrod_params, align 8
  %14 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.ecore_vlan_mac_obj* %2, %struct.ecore_vlan_mac_obj** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %15 = call i32 @memset(%struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 32)
  %16 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %17 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 2
  store %struct.ecore_vlan_mac_obj* %16, %struct.ecore_vlan_mac_obj** %17, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @RAMROD_CONT, align 4
  %22 = load i64*, i64** %12, align 8
  %23 = call i32 @bxe_test_bit(i32 %21, i64* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %30, i64* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = call i32 @bxe_set_bit(i32 %34, i32* %36)
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @ECORE_VLAN_MAC_ADD, align 4
  br label %44

42:                                               ; preds = %25
  %43 = load i32, i32* @ECORE_VLAN_MAC_DEL, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.ecore_vlan_mac_ramrod_params, %struct.ecore_vlan_mac_ramrod_params* %13, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %6
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %50 = call i32 @ecore_config_vlan_mac(%struct.bxe_softc* %49, %struct.ecore_vlan_mac_ramrod_params* %13)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @ECORE_EXISTS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %56 = load i32, i32* @DBG_SP, align 4
  %57 = call i32 @BLOGD(%struct.bxe_softc* %55, i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %70

58:                                               ; preds = %48
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @BLOGE(%struct.bxe_softc* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %58
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* %14, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.ecore_vlan_mac_ramrod_params*, i32, i32) #1

declare dso_local i32 @bxe_test_bit(i32, i64*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @bxe_set_bit(i32, i32*) #1

declare dso_local i32 @ecore_config_vlan_mac(%struct.bxe_softc*, %struct.ecore_vlan_mac_ramrod_params*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
