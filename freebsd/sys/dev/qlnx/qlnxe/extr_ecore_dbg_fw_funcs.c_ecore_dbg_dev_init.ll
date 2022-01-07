; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_dev_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i32, i32*, i64, i32, i8*, i32 }
%struct.ecore_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@s_app_ver = common dso_local global i32 0, align 4
@DBG_STATUS_APP_VERSION_NOT_SET = common dso_local global i32 0, align 4
@CHIP_E5 = common dso_local global i32 0, align 4
@MODE_E5 = common dso_local global i64 0, align 8
@CHIP_K2 = common dso_local global i32 0, align 4
@MODE_K2 = common dso_local global i64 0, align 8
@CHIP_BB = common dso_local global i32 0, align 4
@MODE_BB = common dso_local global i64 0, align 8
@DBG_STATUS_UNKNOWN_CHIP = common dso_local global i32 0, align 4
@PLATFORM_ASIC = common dso_local global i8* null, align 8
@MODE_ASIC = common dso_local global i64 0, align 8
@MISCS_REG_ECO_RESERVED = common dso_local global i32 0, align 4
@PLATFORM_EMUL_FULL = common dso_local global i8* null, align 8
@MODE_EMUL_FULL = common dso_local global i64 0, align 8
@PLATFORM_EMUL_REDUCED = common dso_local global i8* null, align 8
@MODE_EMUL_REDUCED = common dso_local global i64 0, align 8
@PLATFORM_FPGA = common dso_local global i8* null, align 8
@MODE_FPGA = common dso_local global i64 0, align 8
@USE_DMAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_dbg_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dbg_dev_init(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  store %struct.dbg_tools_data* %8, %struct.dbg_tools_data** %6, align 8
  %9 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %10 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %14, i32* %3, align 4
  br label %146

15:                                               ; preds = %2
  %16 = load i32, i32* @s_app_ver, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @DBG_STATUS_APP_VERSION_NOT_SET, align 4
  store i32 %19, i32* %3, align 4
  br label %146

20:                                               ; preds = %15
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ECORE_IS_E5(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, i32* @CHIP_E5, align 4
  %28 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %29 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %31 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @MODE_E5, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 1, i32* %34, align 4
  br label %69

35:                                               ; preds = %20
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ECORE_IS_K2(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* @CHIP_K2, align 4
  %43 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %44 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %46 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @MODE_K2, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 1, i32* %49, align 4
  br label %68

50:                                               ; preds = %35
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ECORE_IS_BB_B0(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* @CHIP_BB, align 4
  %58 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %59 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %61 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @MODE_BB, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 1, i32* %64, align 4
  br label %67

65:                                               ; preds = %50
  %66 = load i32, i32* @DBG_STATUS_UNKNOWN_CHIP, align 4
  store i32 %66, i32* %3, align 4
  br label %146

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %26
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %71 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @CHIP_REV_IS_ASIC(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i8*, i8** @PLATFORM_ASIC, align 8
  %77 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %78 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %80 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @MODE_ASIC, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 1, i32* %83, align 4
  br label %135

84:                                               ; preds = %69
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %86 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @CHIP_REV_IS_EMUL(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %84
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %92 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %93 = load i32, i32* @MISCS_REG_ECO_RESERVED, align 4
  %94 = call i32 @ecore_rd(%struct.ecore_hwfn* %91, %struct.ecore_ptt* %92, i32 %93)
  %95 = and i32 %94, 536870912
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load i8*, i8** @PLATFORM_EMUL_FULL, align 8
  %99 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %100 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %102 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @MODE_EMUL_FULL, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 1, i32* %105, align 4
  br label %115

106:                                              ; preds = %90
  %107 = load i8*, i8** @PLATFORM_EMUL_REDUCED, align 8
  %108 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %109 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %111 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @MODE_EMUL_REDUCED, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %97
  br label %134

116:                                              ; preds = %84
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %118 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @CHIP_REV_IS_FPGA(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i8*, i8** @PLATFORM_FPGA, align 8
  %124 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %125 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %127 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @MODE_FPGA, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 1, i32* %130, align 4
  br label %133

131:                                              ; preds = %116
  %132 = load i32, i32* @DBG_STATUS_UNKNOWN_CHIP, align 4
  store i32 %132, i32* %3, align 4
  br label %146

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134, %75
  %136 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %137 = call i32 @ecore_dbg_grc_init_params(%struct.ecore_hwfn* %136)
  %138 = load i32, i32* @USE_DMAE, align 4
  %139 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %140 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %142 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  %143 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %144 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %135, %131, %65, %18, %13
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @ECORE_IS_E5(i32) #1

declare dso_local i64 @ECORE_IS_K2(i32) #1

declare dso_local i64 @ECORE_IS_BB_B0(i32) #1

declare dso_local i64 @CHIP_REV_IS_ASIC(i32) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(i32) #1

declare dso_local i32 @ecore_dbg_grc_init_params(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
