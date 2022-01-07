; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_E5_MISSING_CODE = common dso_local global i32 0, align 4
@MISCS_REG_RESET_PL_HV = common dso_local global i64 0, align 8
@MISCS_REG_RESET_PL_HV_2_K2_E5 = common dso_local global i64 0, align 8
@CNIG_REG_NW_PORT_MODE_BB = common dso_local global i64 0, align 8
@MISC_REG_PORT_MODE = common dso_local global i64 0, align 8
@MISC_REG_BLOCK_256B_EN = common dso_local global i64 0, align 8
@PSWRQ2_REG_RBC_DONE = common dso_local global i64 0, align 8
@PSWRQ2_REG_CFG_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RBC done failed to complete in PSWRQ2\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_hw_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_init_chip(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.ecore_dev*, %struct.ecore_dev** %9, align 8
  store %struct.ecore_dev* %10, %struct.ecore_dev** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %12 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %16 = call i64 @ECORE_IS_AH(%struct.ecore_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 1536
  store i32 %20, i32* %6, align 4
  br label %28

21:                                               ; preds = %14
  %22 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %23 = call i64 @ECORE_IS_E5(%struct.ecore_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ECORE_E5_MISSING_CODE, align 4
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %32 = load i64, i64* @MISCS_REG_RESET_PL_HV, align 8
  %33 = add nsw i64 %32, 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ecore_wr(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, i64 %33, i32 %34)
  %36 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %37 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  %40 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %41 = call i64 @ECORE_IS_AH(%struct.ecore_dev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %45 = call i64 @ECORE_IS_E5(%struct.ecore_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43, %39
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %49 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %50 = load i64, i64* @MISCS_REG_RESET_PL_HV_2_K2_E5, align 8
  %51 = call i32 @ecore_wr(%struct.ecore_hwfn* %48, %struct.ecore_ptt* %49, i64 %50, i32 67108863)
  br label %52

52:                                               ; preds = %47, %43, %29
  %53 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %54 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %58 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %52
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %62 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %63 = load i64, i64* @CNIG_REG_NW_PORT_MODE_BB, align 8
  %64 = call i32 @ecore_wr(%struct.ecore_hwfn* %61, %struct.ecore_ptt* %62, i64 %63, i32 4)
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %67 = call i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %126

69:                                               ; preds = %65
  %70 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %71 = call i64 @ECORE_IS_AH(%struct.ecore_dev* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %75 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %76 = load i64, i64* @MISC_REG_PORT_MODE, align 8
  %77 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %78 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 1
  %81 = call i32 @ecore_wr(%struct.ecore_hwfn* %74, %struct.ecore_ptt* %75, i64 %76, i32 %80)
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %83 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %84 = load i64, i64* @MISC_REG_BLOCK_256B_EN, align 8
  %85 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %86 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 4
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 3
  %91 = call i32 @ecore_wr(%struct.ecore_hwfn* %82, %struct.ecore_ptt* %83, i64 %84, i32 %90)
  br label %99

92:                                               ; preds = %69
  %93 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %94 = call i64 @ECORE_IS_E5(%struct.ecore_dev* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @ECORE_E5_MISSING_CODE, align 4
  br label %98

98:                                               ; preds = %96, %92
  br label %99

99:                                               ; preds = %98, %73
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %101 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %102 = load i64, i64* @PSWRQ2_REG_RBC_DONE, align 8
  %103 = call i32 @ecore_wr(%struct.ecore_hwfn* %100, %struct.ecore_ptt* %101, i64 %102, i32 1)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %116, %99
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 100
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = call i32 @OSAL_UDELAY(i32 50)
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %110 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %111 = load i32, i32* @PSWRQ2_REG_CFG_DONE, align 4
  %112 = call i32 @ecore_rd(%struct.ecore_hwfn* %109, %struct.ecore_ptt* %110, i32 %111)
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %119

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %104

119:                                              ; preds = %114, %104
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 100
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %124 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %123, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %65
  %127 = load i32, i32* @ECORE_SUCCESS, align 4
  ret i32 %127
}

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.ecore_dev*) #1

declare dso_local i64 @ECORE_IS_AH(%struct.ecore_dev*) #1

declare dso_local i64 @ECORE_IS_E5(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i64 @ECORE_IS_BB(%struct.ecore_dev*) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
