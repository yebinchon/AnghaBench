; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_dcb_config_to_lldp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_dcb_config_to_lldp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_dcbx_config = type { i32 }
%struct.i40e_lldp_org_tlv = type { i32 }

@I40E_TLV_ID_START = common dso_local global i64 0, align 8
@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_LEN_MASK = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_LEN_SHIFT = common dso_local global i64 0, align 8
@I40E_TLV_ID_END_OF_LLDPPDU = common dso_local global i64 0, align 8
@I40E_LLDPDU_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_dcb_config_to_lldp(i32* %0, i64* %1, %struct.i40e_dcbx_config* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.i40e_dcbx_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.i40e_dcbx_config* %2, %struct.i40e_dcbx_config** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load i64, i64* @I40E_TLV_ID_START, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to %struct.i40e_lldp_org_tlv*
  store %struct.i40e_lldp_org_tlv* %16, %struct.i40e_lldp_org_tlv** %11, align 8
  br label %17

17:                                               ; preds = %3, %59
  %18 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %11, align 8
  %19 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %9, align 8
  %22 = trunc i64 %20 to i32
  %23 = call i32 @i40e_add_dcb_tlv(%struct.i40e_lldp_org_tlv* %18, %struct.i40e_dcbx_config* %19, i32 %22)
  %24 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %11, align 8
  %25 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @I40E_NTOHS(i32 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @I40E_LLDP_TLV_LEN_MASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @I40E_LLDP_TLV_LEN_SHIFT, align 8
  %32 = ashr i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %17
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 2
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %35, %17
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @I40E_TLV_ID_END_OF_LLDPPDU, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @I40E_LLDPDU_SIZE, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  br label %60

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %11, align 8
  %54 = bitcast %struct.i40e_lldp_org_tlv* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = bitcast i8* %57 to %struct.i40e_lldp_org_tlv*
  store %struct.i40e_lldp_org_tlv* %58, %struct.i40e_lldp_org_tlv** %11, align 8
  br label %59

59:                                               ; preds = %52, %49
  br label %17

60:                                               ; preds = %48
  %61 = load i64, i64* %8, align 8
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @i40e_add_dcb_tlv(%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*, i32) #1

declare dso_local i64 @I40E_NTOHS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
