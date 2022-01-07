; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_ets_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_ets_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_lldp_org_tlv = type { i32*, i32, i32 }
%struct.i40e_dcbx_config = type { %struct.i40e_dcb_ets_config }
%struct.i40e_dcb_ets_config = type { i32, i32*, i32*, i32*, i64 }

@I40E_TLV_TYPE_ORG = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_ETS_TLV_LENGTH = common dso_local global i32 0, align 4
@I40E_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_OUI_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_SUBTYPE_ETS_CFG = common dso_local global i32 0, align 4
@I40E_IEEE_ETS_WILLING_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_ETS_MAXTC_MASK = common dso_local global i32 0, align 4
@I40E_IEEE_ETS_PRIO_1_SHIFT = common dso_local global i32 0, align 4
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*)* @i40e_add_ieee_ets_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_add_ieee_ets_tlv(%struct.i40e_lldp_org_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_dcb_ets_config*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.i40e_lldp_org_tlv* %0, %struct.i40e_lldp_org_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %14 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32, i32* @I40E_TLV_TYPE_ORG, align 4
  %18 = load i32, i32* @I40E_LLDP_TLV_TYPE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* @I40E_IEEE_ETS_TLV_LENGTH, align 4
  %21 = or i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @I40E_HTONS(i64 %23)
  %25 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @I40E_IEEE_8021QAZ_OUI, align 4
  %28 = load i32, i32* @I40E_LLDP_TLV_OUI_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @I40E_IEEE_SUBTYPE_ETS_CFG, align 4
  %31 = or i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @I40E_HTONL(i64 %33)
  %35 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %38 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %37, i32 0, i32 0
  store %struct.i40e_dcb_ets_config* %38, %struct.i40e_dcb_ets_config** %8, align 8
  %39 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %8, align 8
  %40 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @I40E_IEEE_ETS_WILLING_SHIFT, align 4
  %45 = call i32 @BIT(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %2
  %47 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %8, align 8
  %48 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I40E_IEEE_ETS_MAXTC_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %91, %46
  %61 = load i64, i64* %11, align 8
  %62 = icmp ult i64 %61, 4
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %8, align 8
  %65 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = mul i64 %67, 2
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  store i32 %71, i32* %5, align 4
  %72 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %8, align 8
  %73 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = mul i64 %75, 2
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @I40E_IEEE_ETS_PRIO_1_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %12, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %63
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %11, align 8
  br label %60

94:                                               ; preds = %60
  store i64 0, i64* %11, align 8
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @I40E_MAX_TRAFFIC_CLASS, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %8, align 8
  %101 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %9, align 8
  %109 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %99
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  br label %95

113:                                              ; preds = %95
  store i64 0, i64* %11, align 8
  br label %114

114:                                              ; preds = %129, %113
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* @I40E_MAX_TRAFFIC_CLASS, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.i40e_dcb_ets_config*, %struct.i40e_dcb_ets_config** %8, align 8
  %120 = getelementptr inbounds %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %9, align 8
  %128 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %118
  %130 = load i64, i64* %11, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %114

132:                                              ; preds = %114
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
