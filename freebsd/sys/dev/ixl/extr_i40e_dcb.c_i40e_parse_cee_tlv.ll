; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_parse_cee_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_parse_cee_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_lldp_org_tlv = type { i32, i32 }
%struct.i40e_dcbx_config = type { i32 }
%struct.i40e_cee_feat_tlv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_LLDP_TLV_SUBTYPE_MASK = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_SUBTYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_CEE_DCBX_TYPE = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_LEN_MASK = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_LEN_SHIFT = common dso_local global i32 0, align 4
@I40E_CEE_MAX_FEAT_TYPE = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*)* @i40e_parse_cee_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_parse_cee_tlv(%struct.i40e_lldp_org_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_cee_feat_tlv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.i40e_lldp_org_tlv* %0, %struct.i40e_lldp_org_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @I40E_NTOHL(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @I40E_LLDP_TLV_SUBTYPE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @I40E_LLDP_TLV_SUBTYPE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @I40E_CEE_DCBX_TYPE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %93

27:                                               ; preds = %2
  %28 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %29 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @I40E_NTOHS(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @I40E_LLDP_TLV_LEN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @I40E_LLDP_TLV_LEN_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %6, align 4
  store i32 12, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %93

41:                                               ; preds = %27
  %42 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %43 = bitcast %struct.i40e_lldp_org_tlv* %42 to i8*
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = bitcast i8* %46 to %struct.i40e_cee_feat_tlv*
  store %struct.i40e_cee_feat_tlv* %47, %struct.i40e_cee_feat_tlv** %9, align 8
  br label %48

48:                                               ; preds = %83, %41
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @I40E_CEE_MAX_FEAT_TYPE, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %9, align 8
  %54 = getelementptr inbounds %struct.i40e_cee_feat_tlv, %struct.i40e_cee_feat_tlv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @I40E_NTOHS(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @I40E_LLDP_TLV_LEN_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @I40E_LLDP_TLV_LEN_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @I40E_LLDP_TLV_TYPE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @I40E_LLDP_TLV_TYPE_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  switch i64 %69, label %82 [
    i64 128, label %70
    i64 129, label %74
    i64 130, label %78
  ]

70:                                               ; preds = %52
  %71 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %9, align 8
  %72 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %73 = call i32 @i40e_parse_cee_pgcfg_tlv(%struct.i40e_cee_feat_tlv* %71, %struct.i40e_dcbx_config* %72)
  br label %83

74:                                               ; preds = %52
  %75 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %9, align 8
  %76 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %77 = call i32 @i40e_parse_cee_pfccfg_tlv(%struct.i40e_cee_feat_tlv* %75, %struct.i40e_dcbx_config* %76)
  br label %83

78:                                               ; preds = %52
  %79 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %9, align 8
  %80 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %81 = call i32 @i40e_parse_cee_app_tlv(%struct.i40e_cee_feat_tlv* %79, %struct.i40e_dcbx_config* %80)
  br label %83

82:                                               ; preds = %52
  br label %93

83:                                               ; preds = %78, %74, %70
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %11, align 8
  %86 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %9, align 8
  %87 = bitcast %struct.i40e_cee_feat_tlv* %86 to i8*
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = bitcast i8* %91 to %struct.i40e_cee_feat_tlv*
  store %struct.i40e_cee_feat_tlv* %92, %struct.i40e_cee_feat_tlv** %9, align 8
  br label %48

93:                                               ; preds = %26, %40, %82, %48
  ret void
}

declare dso_local i32 @I40E_NTOHL(i32) #1

declare dso_local i32 @I40E_NTOHS(i32) #1

declare dso_local i32 @i40e_parse_cee_pgcfg_tlv(%struct.i40e_cee_feat_tlv*, %struct.i40e_dcbx_config*) #1

declare dso_local i32 @i40e_parse_cee_pfccfg_tlv(%struct.i40e_cee_feat_tlv*, %struct.i40e_dcbx_config*) #1

declare dso_local i32 @i40e_parse_cee_app_tlv(%struct.i40e_cee_feat_tlv*, %struct.i40e_dcbx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
