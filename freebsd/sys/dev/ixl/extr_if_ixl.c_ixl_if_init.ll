; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i64, %struct.i40e_hw, %struct.ixl_vsi }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ixl_vsi = type { i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ifnet = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Admin Queue is down; resetting...\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i64 0, align 8
@IXL_VLAN_ANY = common dso_local global i32 0, align 4
@I40E_AQC_WRITE_TYPE_LAA_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"LLA address change failed!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"initialize vsi failed!!\0A\00", align 1
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@ixl_enable_iwarp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_if_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.ixl_pf* @iflib_get_softc(i32 %12)
  store %struct.ixl_pf* %13, %struct.ixl_pf** %3, align 8
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 2
  store %struct.ixl_vsi* %15, %struct.ixl_vsi** %4, align 8
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %17 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %16, i32 0, i32 1
  store %struct.i40e_hw* %17, %struct.i40e_hw** %5, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.ifnet* @iflib_get_ifp(i32 %18)
  store %struct.ifnet* %19, %struct.ifnet** %6, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @iflib_get_dev(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %27 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %26, i32 0, i32 1
  %28 = call i32 @i40e_check_asq_alive(%struct.i40e_hw* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %34 = call i32 @ixl_teardown_hw_structs(%struct.ixl_pf* %33)
  %35 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %36 = call i32 @ixl_rebuild_hw_structs_after_reset(%struct.ixl_pf* %35)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %39 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @IF_LLADDR(i32 %40)
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @bcopy(i32* %41, i32* %25, i32 %42)
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @cmp_etheraddr(i32* %47, i32* %25)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %88, label %50

50:                                               ; preds = %37
  %51 = call i64 @i40e_validate_mac_addr(i32* %25)
  %52 = load i64, i64* @I40E_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %57 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @IXL_VLAN_ANY, align 4
  %61 = call i32 @ixl_del_filter(%struct.ixl_vsi* %55, i32* %59, i32 %60)
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @bcopy(i32* %25, i32* %65, i32 %66)
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %69 = load i32, i32* @I40E_AQC_WRITE_TYPE_LAA_ONLY, align 4
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %71 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @i40e_aq_mac_address_write(%struct.i40e_hw* %68, i32 %69, i32* %73, i32* null)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %54
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %146

80:                                               ; preds = %54
  %81 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %83 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @IXL_VLAN_ANY, align 4
  %87 = call i32 @ixl_add_filter(%struct.ixl_vsi* %81, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %80, %50, %37
  %89 = load i32, i32* %2, align 4
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %91 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @iflib_set_mac(i32 %89, i32* %93)
  %95 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %96 = call i64 @ixl_initialize_vsi(%struct.ixl_vsi* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %146

101:                                              ; preds = %88
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @ixl_if_multi_set(i32 %102)
  %104 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %105 = call i32 @ixl_config_rss(%struct.ixl_pf* %104)
  %106 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %107 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %115 = call i32 @ixl_configure_queue_intr_msix(%struct.ixl_pf* %114)
  %116 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %117 = call i32 @ixl_configure_itr(%struct.ixl_pf* %116)
  br label %121

118:                                              ; preds = %101
  %119 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %120 = call i32 @ixl_configure_legacy(%struct.ixl_pf* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %123 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %128 = call i32 @ixl_init_tx_cidx(%struct.ixl_vsi* %127)
  br label %132

129:                                              ; preds = %121
  %130 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %131 = call i32 @ixl_init_tx_rsqs(%struct.ixl_vsi* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %134 = call i32 @ixl_enable_rings(%struct.ixl_vsi* %133)
  %135 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %136 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %137 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @i40e_aq_set_default_vsi(%struct.i40e_hw* %135, i32 %138, i32* null)
  %140 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %141 = call i32 @ixl_reconfigure_filters(%struct.ixl_vsi* %140)
  %142 = load i32, i32* %2, align 4
  %143 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %144 = call i32 @if_getflags(%struct.ifnet* %143)
  %145 = call i32 @ixl_if_promisc_set(i32 %142, i32 %144)
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %132, %98, %77
  %147 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %11, align 4
  switch i32 %148, label %150 [
    i32 0, label %149
    i32 1, label %149
  ]

149:                                              ; preds = %146, %146
  ret void

150:                                              ; preds = %146
  unreachable
}

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @i40e_check_asq_alive(%struct.i40e_hw*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ixl_teardown_hw_structs(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_rebuild_hw_structs_after_reset(%struct.ixl_pf*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32* @IF_LLADDR(i32) #1

declare dso_local i32 @cmp_etheraddr(i32*, i32*) #1

declare dso_local i64 @i40e_validate_mac_addr(i32*) #1

declare dso_local i32 @ixl_del_filter(%struct.ixl_vsi*, i32*, i32) #1

declare dso_local i32 @i40e_aq_mac_address_write(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @ixl_add_filter(%struct.ixl_vsi*, i32*, i32) #1

declare dso_local i32 @iflib_set_mac(i32, i32*) #1

declare dso_local i64 @ixl_initialize_vsi(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_if_multi_set(i32) #1

declare dso_local i32 @ixl_config_rss(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_configure_queue_intr_msix(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_configure_itr(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_configure_legacy(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_init_tx_cidx(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_init_tx_rsqs(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_enable_rings(%struct.ixl_vsi*) #1

declare dso_local i32 @i40e_aq_set_default_vsi(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @ixl_reconfigure_filters(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_if_promisc_set(i32, i32) #1

declare dso_local i32 @if_getflags(%struct.ifnet*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
