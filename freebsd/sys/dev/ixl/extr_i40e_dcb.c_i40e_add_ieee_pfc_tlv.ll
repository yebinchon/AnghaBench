; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_pfc_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_pfc_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_lldp_org_tlv = type { i32*, i32, i32 }
%struct.i40e_dcbx_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@I40E_TLV_TYPE_ORG = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_PFC_TLV_LENGTH = common dso_local global i32 0, align 4
@I40E_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_OUI_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_SUBTYPE_PFC_CFG = common dso_local global i32 0, align 4
@I40E_IEEE_PFC_WILLING_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_PFC_MBC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*)* @i40e_add_ieee_pfc_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_add_ieee_pfc_tlv(%struct.i40e_lldp_org_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.i40e_lldp_org_tlv* %0, %struct.i40e_lldp_org_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  %8 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @I40E_TLV_TYPE_ORG, align 4
  %12 = load i32, i32* @I40E_LLDP_TLV_TYPE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @I40E_IEEE_PFC_TLV_LENGTH, align 4
  %15 = or i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @I40E_HTONS(i64 %17)
  %19 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @I40E_IEEE_8021QAZ_OUI, align 4
  %22 = load i32, i32* @I40E_LLDP_TLV_OUI_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @I40E_IEEE_SUBTYPE_PFC_CFG, align 4
  %25 = or i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @I40E_HTONL(i64 %27)
  %29 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %30 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load i32, i32* @I40E_IEEE_PFC_WILLING_SHIFT, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* @I40E_IEEE_PFC_MBC_SHIFT, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %56 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 15
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %65 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  ret void
}

declare dso_local i32 @I40E_HTONS(i64) #1

declare dso_local i32 @I40E_HTONL(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
