; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET = common dso_local global i32 0, align 4
@PHASE_PORT = common dso_local global i32 0, align 4
@PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE = common dso_local global i64 0, align 8
@ECORE_E5_MISSING_CODE = common dso_local global i32 0, align 4
@MISCS_REG_RESET_PL_HV = common dso_local global i64 0, align 8
@MISC_REG_CLK_100G_MODE = common dso_local global i64 0, align 8
@MISCS_REG_CLK_100G_MODE = common dso_local global i64 0, align 8
@MISC_REG_OPTE_MODE = common dso_local global i64 0, align 8
@NIG_REG_LLH_ENG_CLS_TCP_4_TUPLE_SEARCH = common dso_local global i64 0, align 8
@NIG_REG_LLH_ENG_CLS_ENG_ID_TBL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"link is not being configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_hw_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_init_port(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ECORE_IS_CMT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = call i32 @IS_LEAD_HWFN(%struct.ecore_hwfn* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = load i32, i32* @NIG_REG_BRB_GATE_DNTFWD_PORT_RT_OFFSET, align 4
  %23 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %27 = load i32, i32* @PHASE_PORT, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ecore_init_run(%struct.ecore_hwfn* %25, %struct.ecore_ptt* %26, i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ECORE_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %142

38:                                               ; preds = %24
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %41 = load i64, i64* @PGLUE_B_REG_MASTER_WRITE_PAD_ENABLE, align 8
  %42 = call i32 @ecore_wr(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i64 %41, i32 0)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %44 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @CHIP_REV_IS_ASIC(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %142

50:                                               ; preds = %38
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @CHIP_REV_IS_FPGA(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ECORE_IS_AH(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %142

64:                                               ; preds = %56
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ECORE_IS_BB(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %72 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %74 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ecore_link_init_bb(%struct.ecore_hwfn* %71, %struct.ecore_ptt* %72, i32 %75)
  br label %79

77:                                               ; preds = %64
  %78 = load i32, i32* @ECORE_E5_MISSING_CODE, align 4
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79
  br label %140

81:                                               ; preds = %50
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %83 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @CHIP_REV_IS_EMUL(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %134

87:                                               ; preds = %81
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %89 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ECORE_IS_CMT(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %87
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %95 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %96 = load i64, i64* @MISCS_REG_RESET_PL_HV, align 8
  %97 = call i32 @ecore_rd(%struct.ecore_hwfn* %94, %struct.ecore_ptt* %95, i64 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, 16
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %101 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %102 = load i64, i64* @MISCS_REG_RESET_PL_HV, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @ecore_wr(%struct.ecore_hwfn* %100, %struct.ecore_ptt* %101, i64 %102, i32 %103)
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %106 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %107 = load i64, i64* @MISC_REG_CLK_100G_MODE, align 8
  %108 = call i32 @ecore_wr(%struct.ecore_hwfn* %105, %struct.ecore_ptt* %106, i64 %107, i32 1)
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %110 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %111 = load i64, i64* @MISCS_REG_CLK_100G_MODE, align 8
  %112 = call i32 @ecore_wr(%struct.ecore_hwfn* %109, %struct.ecore_ptt* %110, i64 %111, i32 1)
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %114 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %115 = load i64, i64* @MISC_REG_OPTE_MODE, align 8
  %116 = call i32 @ecore_wr(%struct.ecore_hwfn* %113, %struct.ecore_ptt* %114, i64 %115, i32 1)
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %118 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %119 = load i64, i64* @NIG_REG_LLH_ENG_CLS_TCP_4_TUPLE_SEARCH, align 8
  %120 = call i32 @ecore_wr(%struct.ecore_hwfn* %117, %struct.ecore_ptt* %118, i64 %119, i32 1)
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %122 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %123 = load i64, i64* @NIG_REG_LLH_ENG_CLS_ENG_ID_TBL, align 8
  %124 = call i32 @ecore_wr(%struct.ecore_hwfn* %121, %struct.ecore_ptt* %122, i64 %123, i32 1431655765)
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %126 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %127 = load i64, i64* @NIG_REG_LLH_ENG_CLS_ENG_ID_TBL, align 8
  %128 = add nsw i64 %127, 4
  %129 = call i32 @ecore_wr(%struct.ecore_hwfn* %125, %struct.ecore_ptt* %126, i64 %128, i32 1431655765)
  br label %130

130:                                              ; preds = %93, %87
  %131 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %132 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %133 = call i32 @ecore_emul_link_init(%struct.ecore_hwfn* %131, %struct.ecore_ptt* %132)
  br label %139

134:                                              ; preds = %81
  %135 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %136 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @DP_INFO(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %134, %130
  br label %140

140:                                              ; preds = %139, %80
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %62, %48, %36
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @ECORE_IS_CMT(i32) #1

declare dso_local i32 @IS_LEAD_HWFN(%struct.ecore_hwfn*) #1

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_init_run(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i64 @CHIP_REV_IS_ASIC(i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(i32) #1

declare dso_local i64 @ECORE_IS_AH(i32) #1

declare dso_local i64 @ECORE_IS_BB(i32) #1

declare dso_local i32 @ecore_link_init_bb(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i32 @ecore_emul_link_init(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DP_INFO(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
