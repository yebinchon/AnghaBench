; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_lldp_to_dcb_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_lldp_to_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_dcbx_config = type { i32 }
%struct.i40e_lldp_org_tlv = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_LLDP_MIB_HLEN = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_TYPE_MASK = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_TYPE_SHIFT = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_LEN_MASK = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_LEN_SHIFT = common dso_local global i64 0, align 8
@I40E_TLV_TYPE_END = common dso_local global i64 0, align 8
@I40E_LLDPDU_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_lldp_to_dcb_config(i32* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_dcbx_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %5, align 8
  %12 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %12, i32* %6, align 4
  store i64 0, i64* %11, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %5, align 8
  %17 = icmp ne %struct.i40e_dcbx_config* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %15
  %21 = load i32, i32* @I40E_LLDP_MIB_HLEN, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = bitcast i32* %25 to %struct.i40e_lldp_org_tlv*
  store %struct.i40e_lldp_org_tlv* %26, %struct.i40e_lldp_org_tlv** %7, align 8
  br label %27

27:                                               ; preds = %20, %61
  %28 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %7, align 8
  %29 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @I40E_NTOHS(i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @I40E_LLDP_TLV_TYPE_MASK, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* @I40E_LLDP_TLV_TYPE_SHIFT, align 8
  %36 = ashr i64 %34, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @I40E_LLDP_TLV_LEN_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @I40E_LLDP_TLV_LEN_SHIFT, align 8
  %41 = ashr i64 %39, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 8, %42
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @I40E_TLV_TYPE_END, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %27
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @I40E_LLDPDU_SIZE, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %27
  br label %68

54:                                               ; preds = %49
  %55 = load i64, i64* %8, align 8
  switch i64 %55, label %60 [
    i64 128, label %56
  ]

56:                                               ; preds = %54
  %57 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %7, align 8
  %58 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %5, align 8
  %59 = call i32 @i40e_parse_org_tlv(%struct.i40e_lldp_org_tlv* %57, %struct.i40e_dcbx_config* %58)
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %56
  %62 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %7, align 8
  %63 = bitcast %struct.i40e_lldp_org_tlv* %62 to i8*
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = bitcast i8* %66 to %struct.i40e_lldp_org_tlv*
  store %struct.i40e_lldp_org_tlv* %67, %struct.i40e_lldp_org_tlv** %7, align 8
  br label %27

68:                                               ; preds = %53
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @I40E_NTOHS(i32) #1

declare dso_local i32 @i40e_parse_org_tlv(%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
