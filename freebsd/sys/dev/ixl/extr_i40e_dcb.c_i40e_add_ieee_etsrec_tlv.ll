; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_etsrec_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_etsrec_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_lldp_org_tlv = type { i32*, i32, i32 }
%struct.i40e_dcbx_config = type { %struct.i40e_dcb_ets_config }
%struct.i40e_dcb_ets_config = type { i32*, i32*, i32* }

@I40E_TLV_TYPE_ORG = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_ETS_TLV_LENGTH = common dso_local global i32 0, align 4
@I40E_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_OUI_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_SUBTYPE_ETS_REC = common dso_local global i32 0, align 4
@I40E_IEEE_ETS_PRIO_1_SHIFT = common dso_local global i32 0, align 4
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*)* @i40e_add_ieee_etsrec_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_add_ieee_etsrec_tlv(%struct.i40e_lldp_org_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca %struct.i40e_dcb_ets_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.i40e_lldp_org_tlv* %0, %struct.i40e_lldp_org_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* @I40E_TLV_TYPE_ORG, align 4
  %17 = load i32, i32* @I40E_LLDP_TLV_TYPE_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @I40E_IEEE_ETS_TLV_LENGTH, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @I40E_HTONS(i32 %21)
  %23 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @I40E_IEEE_8021QAZ_OUI, align 4
  %26 = load i32, i32* @I40E_LLDP_TLV_OUI_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @I40E_IEEE_SUBTYPE_ETS_REC, align 4
  %29 = or i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @I40E_HTONL(i64 %31)
  %33 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %35, i32 0, i32 0
  store %struct.i40e_dcb_ets_config* %36, %struct.i40e_dcb_ets_config** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %73, %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %5, align 8
  %44 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 15
  store i32 %51, i32* %9, align 4
  %52 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %5, align 8
  %53 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %55, 2
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @I40E_IEEE_ETS_PRIO_1_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %64, %65
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %42
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %39

76:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %5, align 8
  %83 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %77

97:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %115, %97
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %5, align 8
  %104 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %109, i32* %114, align 4
  br label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %98

118:                                              ; preds = %98
  ret void
}

declare dso_local i32 @I40E_HTONS(i32) #1

declare dso_local i32 @I40E_HTONL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
