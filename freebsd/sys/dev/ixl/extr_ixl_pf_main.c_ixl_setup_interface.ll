; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_setup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw, %struct.ixl_vsi }
%struct.i40e_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ixl_vsi = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ifnet = type { i64 }
%struct.i40e_aq_get_phy_abilities_resp = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_ERR_UNKNOWN_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown PHY type detected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Error getting supported media types, err %d, AQ error %d\0A\00", align 1
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_setup_interface(i32 %0, %struct.ixl_pf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.ixl_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ixl_pf* %1, %struct.ixl_pf** %4, align 8
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 2
  store %struct.ixl_vsi* %12, %struct.ixl_vsi** %5, align 8
  %13 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %14 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %17 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %16, i32 0, i32 1
  store %struct.i40e_hw* %17, %struct.i40e_hw** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.ifnet* @iflib_get_ifp(i32 %18)
  store %struct.ifnet* %19, %struct.ifnet** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @INIT_DBG_DEV(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETHER_HDR_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @ETHER_CRC_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %32 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %35, i32 %36, i32 %37, %struct.i40e_aq_get_phy_abilities_resp* %9, i32* null)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @I40E_ERR_UNKNOWN_PHY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = call i32 @i40e_msec_delay(i32 200)
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %44, i32 %45, i32 %46, %struct.i40e_aq_get_phy_abilities_resp* %9, i32* null)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %42, %2
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @I40E_ERR_UNKNOWN_PHY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %66

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %62 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %58, %55
  br label %84

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %71 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %73 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %74 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ixl_max_aq_speed_to_value(i32 %75)
  %77 = call i32 @if_initbaudrate(%struct.ifnet* %72, i32 %76)
  %78 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %79 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %80 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ixl_add_ifmedia(%struct.ixl_vsi* %78, i32 %82)
  br label %84

84:                                               ; preds = %67, %66
  %85 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %86 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IFM_ETHER, align 4
  %89 = load i32, i32* @IFM_AUTO, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @ifmedia_add(i32 %87, i32 %90, i32 0, i32* null)
  %92 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %93 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IFM_ETHER, align 4
  %96 = load i32, i32* @IFM_AUTO, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ifmedia_set(i32 %94, i32 %97)
  ret i32 0
}

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @INIT_DBG_DEV(i32, i8*) #1

declare dso_local i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw*, i32, i32, %struct.i40e_aq_get_phy_abilities_resp*, i32*) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @if_initbaudrate(%struct.ifnet*, i32) #1

declare dso_local i32 @ixl_max_aq_speed_to_value(i32) #1

declare dso_local i32 @ixl_add_ifmedia(%struct.ixl_vsi*, i32) #1

declare dso_local i32 @ifmedia_add(i32, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
