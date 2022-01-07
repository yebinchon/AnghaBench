; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_lldp_register_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_lldp_register_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@LLDP_NEAREST_BRIDGE = common dso_local global i32 0, align 4
@LLDP_NEAREST_NON_TPMR_BRIDGE = common dso_local global i32 0, align 4
@LLDP_NEAREST_CUSTOMER_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid agent type %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_LLDP_AGENT = common dso_local global i32 0, align 4
@DRV_MB_PARAM_LLDP_TLV_RX_TYPE = common dso_local global i32 0, align 4
@DRV_MSG_CODE_REGISTER_LLDP_TLVS_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to register TLV\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_lldp_register_tlv(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %23 [
    i32 130, label %17
    i32 128, label %19
    i32 129, label %21
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @LLDP_NEAREST_BRIDGE, align 4
  store i32 %18, i32* %13, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load i32, i32* @LLDP_NEAREST_NON_TPMR_BRIDGE, align 4
  store i32 %20, i32* %13, align 4
  br label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @LLDP_NEAREST_CUSTOMER_BRIDGE, align 4
  store i32 %22, i32* %13, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @DP_ERR(%struct.ecore_hwfn* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %50

28:                                               ; preds = %21, %19, %17
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @DRV_MB_PARAM_LLDP_AGENT, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @SET_MFW_FIELD(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @DRV_MB_PARAM_LLDP_TLV_RX_TYPE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @SET_MFW_FIELD(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %39 = load i32, i32* @DRV_MSG_CODE_REGISTER_LLDP_TLVS_RX, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %39, i32 %40, i32* %11, i32* %12)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @ECORE_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %47 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %46, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @SET_MFW_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
