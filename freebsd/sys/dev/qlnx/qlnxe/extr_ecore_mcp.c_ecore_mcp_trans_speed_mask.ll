; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_trans_speed_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_trans_speed_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ETH_TRANSCEIVER_STATE = common dso_local global i32 0, align 4
@ETH_TRANSCEIVER_TYPE = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G = common dso_local global i32 0, align 4
@NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown transcevier type 0x%x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_trans_speed_mask(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %13 = call i32 @ecore_mcp_get_transceiver_data(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12, i32* %8)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ETH_TRANSCEIVER_STATE, align 4
  %16 = call i32 @GET_MFW_FIELD(i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ETH_TRANSCEIVER_TYPE, align 4
  %19 = call i32 @GET_MFW_FIELD(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @is_transceiver_ready(i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %93 [
    i32 152, label %28
    i32 150, label %28
    i32 151, label %28
    i32 153, label %28
    i32 167, label %28
    i32 154, label %31
    i32 157, label %31
    i32 156, label %31
    i32 158, label %31
    i32 155, label %31
    i32 160, label %31
    i32 137, label %31
    i32 139, label %34
    i32 138, label %34
    i32 133, label %34
    i32 134, label %34
    i32 165, label %39
    i32 161, label %39
    i32 162, label %39
    i32 163, label %39
    i32 166, label %39
    i32 141, label %44
    i32 142, label %44
    i32 146, label %44
    i32 147, label %44
    i32 148, label %44
    i32 149, label %44
    i32 144, label %47
    i32 143, label %47
    i32 145, label %47
    i32 136, label %47
    i32 140, label %54
    i32 135, label %54
    i32 164, label %61
    i32 131, label %61
    i32 129, label %76
    i32 130, label %76
    i32 132, label %76
    i32 128, label %85
    i32 159, label %88
  ]

28:                                               ; preds = %26, %26, %26, %26, %26
  %29 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %98

31:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  %32 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %98

34:                                               ; preds = %26, %26, %26, %26
  %35 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %36 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %98

39:                                               ; preds = %26, %26, %26, %26, %26
  %40 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %41 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %98

44:                                               ; preds = %26, %26, %26, %26, %26, %26
  %45 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %98

47:                                               ; preds = %26, %26, %26, %26
  %48 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %49 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %98

54:                                               ; preds = %26, %26
  %55 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %56 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %98

61:                                               ; preds = %26, %26
  %62 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %63 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %74 = or i32 %72, %73
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  br label %98

76:                                               ; preds = %26, %26, %26
  %77 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G, align 4
  %78 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %83 = or i32 %81, %82
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %98

85:                                               ; preds = %26
  %86 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  br label %98

88:                                               ; preds = %26
  %89 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G, align 4
  %90 = load i32, i32* @NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G, align 4
  %91 = or i32 %89, %90
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  br label %98

93:                                               ; preds = %26
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @DP_INFO(%struct.ecore_hwfn* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %7, align 8
  store i32 255, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %88, %85, %76, %61, %54, %47, %44, %39, %34, %31, %28
  %99 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %24
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @ecore_mcp_get_transceiver_data(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

declare dso_local i32 @GET_MFW_FIELD(i32, i32) #1

declare dso_local i64 @is_transceiver_ready(i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
