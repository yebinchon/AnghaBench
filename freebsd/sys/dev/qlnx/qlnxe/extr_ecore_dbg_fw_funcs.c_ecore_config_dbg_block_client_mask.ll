; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_dbg_block_client_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_dbg_block_client_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i32* }
%struct.block_defs = type { i32* }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, i64, %struct.dbg_bus_block_data*, i64, %struct.TYPE_2__*, i64 }
%struct.dbg_bus_block_data = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@BLOCK_DBG = common dso_local global i32 0, align 4
@DBG_BUS_CLIENT_CPU = common dso_local global i32 0, align 4
@DBG_BUS_CLIENT_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_config_dbg_block_client_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_config_dbg_block_client_mask(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.dbg_tools_data*, align 8
  %6 = alloca %struct.dbg_bus_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.storm_defs*, align 8
  %11 = alloca %struct.dbg_bus_block_data*, align 8
  %12 = alloca %struct.block_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %5, align 8
  %15 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %16 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %15, i32 0, i32 1
  store %struct.dbg_bus_data* %16, %struct.dbg_bus_data** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %18 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @MAX_DBG_STORMS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %27, i64 %28
  store %struct.storm_defs* %29, %struct.storm_defs** %10, align 8
  %30 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %31 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load %struct.storm_defs*, %struct.storm_defs** %10, align 8
  %40 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %43 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %38, %26
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %22

54:                                               ; preds = %22
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %57 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %100, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MAX_BLOCK_ID, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %61
  %66 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %67 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %66, i32 0, i32 2
  %68 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %68, i64 %70
  store %struct.dbg_bus_block_data* %71, %struct.dbg_bus_block_data** %11, align 8
  %72 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %72, i64 %74
  %76 = load %struct.block_defs*, %struct.block_defs** %75, align 8
  store %struct.block_defs* %76, %struct.block_defs** %12, align 8
  %77 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %11, align 8
  %78 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %81 = call i64 @GET_FIELD(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %65
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @BLOCK_DBG, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load %struct.block_defs*, %struct.block_defs** %12, align 8
  %89 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %92 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 1, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %87, %83, %65
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %61

103:                                              ; preds = %61
  br label %104

104:                                              ; preds = %103, %55
  %105 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %106 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* @DBG_BUS_CLIENT_CPU, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %109, %104
  %115 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %116 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* @DBG_BUS_CLIENT_TIMESTAMP, align 4
  %121 = shl i32 1, %120
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %126 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @ecore_bus_enable_clients(%struct.ecore_hwfn* %125, %struct.ecore_ptt* %126, i32 %127)
  ret void
}

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_bus_enable_clients(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
