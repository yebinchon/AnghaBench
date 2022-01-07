; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_storm_inputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_storm_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, %struct.dbg_bus_storm_data*, i64 }
%struct.dbg_bus_storm_data = type { i64, i64 }
%struct.ecore_ptt = type { i32 }

@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@DBG_STATUS_SEMI_FIFO_NOT_EMPTY = common dso_local global i32 0, align 4
@HW_ID_BITS = common dso_local global i64 0, align 8
@DBG_REG_STORM_ID_NUM = common dso_local global i64 0, align 8
@DBG_REG_NO_GRANT_ON_FULL = common dso_local global i64 0, align 8
@DBG_BUS_TARGET_ID_INT_BUF = common dso_local global i64 0, align 8
@NUM_CALENDAR_SLOTS = common dso_local global i64 0, align 8
@DBG_REG_CALENDAR_SLOT0 = common dso_local global i64 0, align 8
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_config_storm_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_config_storm_inputs(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca %struct.dbg_bus_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dbg_bus_storm_data*, align 8
  %13 = alloca %struct.storm_defs*, align 8
  %14 = alloca %struct.dbg_bus_storm_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  store %struct.dbg_tools_data* %16, %struct.dbg_tools_data** %6, align 8
  %17 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %18 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %17, i32 0, i32 0
  store %struct.dbg_bus_data* %18, %struct.dbg_bus_data** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %47, %2
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MAX_DBG_STORMS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %25 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %24, i32 0, i32 1
  %26 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %26, i64 %27
  store %struct.dbg_bus_storm_data* %28, %struct.dbg_bus_storm_data** %12, align 8
  %29 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %29, i64 %30
  store %struct.storm_defs* %31, %struct.storm_defs** %13, align 8
  %32 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %12, align 8
  %33 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %39 = load %struct.storm_defs*, %struct.storm_defs** %13, align 8
  %40 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ecore_rd(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @DBG_STATUS_SEMI_FIFO_NOT_EMPTY, align 4
  store i32 %45, i32* %3, align 4
  br label %145

46:                                               ; preds = %36, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %19

50:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @MAX_DBG_STORMS, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %57 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %56, i32 0, i32 1
  %58 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %58, i64 %59
  store %struct.dbg_bus_storm_data* %60, %struct.dbg_bus_storm_data** %14, align 8
  %61 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %14, align 8
  %62 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %14, align 8
  %67 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @HW_ID_BITS, align 8
  %71 = mul i64 %69, %70
  %72 = shl i64 %68, %71
  %73 = load i64, i64* %11, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %65, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %51

79:                                               ; preds = %51
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %81 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %82 = load i64, i64* @DBG_REG_STORM_ID_NUM, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @ecore_wr(%struct.ecore_hwfn* %80, %struct.ecore_ptt* %81, i64 %82, i64 %83)
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %86 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %87 = load i64, i64* @DBG_REG_NO_GRANT_ON_FULL, align 8
  %88 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %89 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DBG_BUS_TARGET_ID_INT_BUF, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %96 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %94, %79
  %100 = phi i1 [ false, %79 ], [ %98, %94 ]
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 0, i32 1
  %103 = sext i32 %102 to i64
  %104 = call i32 @ecore_wr(%struct.ecore_hwfn* %85, %struct.ecore_ptt* %86, i64 %87, i64 %103)
  store i64 0, i64* %9, align 8
  br label %105

105:                                              ; preds = %136, %99
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @NUM_CALENDAR_SLOTS, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %122, %109
  %111 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %112 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %112, i32 0, i32 1
  %114 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %114, i64 %115
  %117 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = xor i1 %119, true
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  %125 = load i64, i64* @MAX_DBG_STORMS, align 8
  %126 = urem i64 %124, %125
  store i64 %126, i64* %10, align 8
  br label %110

127:                                              ; preds = %110
  %128 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %129 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %130 = load i64, i64* @DBG_REG_CALENDAR_SLOT0, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @DWORDS_TO_BYTES(i64 %131)
  %133 = add nsw i64 %130, %132
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @ecore_wr(%struct.ecore_hwfn* %128, %struct.ecore_ptt* %129, i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %127
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, 1
  %141 = load i64, i64* @MAX_DBG_STORMS, align 8
  %142 = urem i64 %140, %141
  store i64 %142, i64* %10, align 8
  br label %105

143:                                              ; preds = %105
  %144 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %44
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i64 @DWORDS_TO_BYTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
