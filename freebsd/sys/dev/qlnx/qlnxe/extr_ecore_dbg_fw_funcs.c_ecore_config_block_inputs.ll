; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_block_inputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_block_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@VALUES_PER_CYCLE = common dso_local global i32 0, align 4
@DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_ID_0 = common dso_local global i64 0, align 8
@BYTES_IN_DWORD = common dso_local global i32 0, align 4
@HW_ID_BITS = common dso_local global i32 0, align 4
@DBG_REG_HW_ID_NUM = common dso_local global i64 0, align 8
@CHIP_K2 = common dso_local global i64 0, align 8
@BLOCK_PCIE = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@BLOCK_PHY_PCIE = common dso_local global i64 0, align 8
@PCIE_REG_DBG_REPEAT_THRESHOLD_COUNT_K2_E5 = common dso_local global i64 0, align 8
@PCIE_REG_DBG_FW_TRIGGER_ENABLE_K2_E5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_config_block_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_config_block_inputs(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.dbg_tools_data*, align 8
  %6 = alloca %struct.dbg_bus_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  store %struct.dbg_tools_data* %13, %struct.dbg_tools_data** %5, align 8
  %14 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %15 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %14, i32 0, i32 1
  store %struct.dbg_bus_data* %15, %struct.dbg_bus_data** %6, align 8
  %16 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = call i32 @ecore_assign_hw_ids(%struct.ecore_hwfn* %20, i32* %19)
  %22 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %23 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %31 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %41 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK, align 4
  %50 = call i32 @GET_FIELD(i32 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %39
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %58 = load i64, i64* @DBG_REG_TRIGGER_STATE_ID_0, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @BYTES_IN_DWORD, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %19, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ecore_wr(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i64 %63, i32 %67)
  br label %73

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %35

73:                                               ; preds = %55, %35
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %28

77:                                               ; preds = %28
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %80 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %99, %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %19, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @HW_ID_BITS, align 4
  %93 = mul nsw i32 %91, %92
  %94 = shl i32 %90, %93
  %95 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %96 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %82

102:                                              ; preds = %82
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %104 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %105 = load i64, i64* @DBG_REG_HW_ID_NUM, align 8
  %106 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %107 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ecore_wr(%struct.ecore_hwfn* %103, %struct.ecore_ptt* %104, i64 %105, i32 %108)
  %110 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %111 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CHIP_K2, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %102
  %116 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %117 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* @BLOCK_PCIE, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %124 = call i32 @GET_FIELD(i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %115
  %127 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %128 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i64, i64* @BLOCK_PHY_PCIE, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %135 = call i32 @GET_FIELD(i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %126, %115
  %138 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %139 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %140 = load i64, i64* @PCIE_REG_DBG_REPEAT_THRESHOLD_COUNT_K2_E5, align 8
  %141 = call i32 @ecore_wr(%struct.ecore_hwfn* %138, %struct.ecore_ptt* %139, i64 %140, i32 1)
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %143 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %144 = load i64, i64* @PCIE_REG_DBG_FW_TRIGGER_ENABLE_K2_E5, align 8
  %145 = call i32 @ecore_wr(%struct.ecore_hwfn* %142, %struct.ecore_ptt* %143, i64 %144, i32 1)
  br label %146

146:                                              ; preds = %137, %126, %102
  %147 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %147)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ecore_assign_hw_ids(%struct.ecore_hwfn*, i32*) #2

declare dso_local i32 @GET_FIELD(i32, i32) #2

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
