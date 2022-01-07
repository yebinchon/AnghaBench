; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_dbg_block_framing_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_config_dbg_block_framing_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i32, i64, i64, %struct.dbg_bus_block_data*, i64 }
%struct.dbg_bus_block_data = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.dbg_bus_line = type { i32 }

@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_BUS_LINE_IS_256B = common dso_local global i32 0, align 4
@DBG_STATUS_NON_MATCHING_LINES = common dso_local global i32 0, align 4
@DBG_STATUS_NO_FILTER_TRIGGER_64B = common dso_local global i32 0, align 4
@DBG_BUS_FRAME_MODE_0HW_4ST = common dso_local global i32 0, align 4
@DBG_BUS_FRAME_MODE_4HW_0ST = common dso_local global i32 0, align 4
@DBG_BUS_FRAME_MODE_8HW_0ST = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_config_dbg_block_framing_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_config_dbg_block_framing_mode(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca %struct.dbg_bus_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dbg_bus_line*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dbg_bus_block_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %6, align 8
  %15 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %16 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %15, i32 0, i32 0
  store %struct.dbg_bus_data* %16, %struct.dbg_bus_data** %7, align 8
  %17 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %18 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %97, label %21

21:                                               ; preds = %2
  %22 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %23 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %21
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %93, %26
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @MAX_BLOCK_ID, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %27
  %32 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %33 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %32, i32 0, i32 3
  %34 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %34, i64 %35
  store %struct.dbg_bus_block_data* %36, %struct.dbg_bus_block_data** %12, align 8
  %37 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %12, align 8
  %38 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %41 = call i64 @GET_FIELD(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %93

44:                                               ; preds = %31
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  %48 = call %struct.dbg_bus_line* @get_dbg_bus_line_desc(%struct.ecore_hwfn* %45, i32 %47)
  store %struct.dbg_bus_line* %48, %struct.dbg_bus_line** %10, align 8
  %49 = load %struct.dbg_bus_line*, %struct.dbg_bus_line** %10, align 8
  %50 = icmp ne %struct.dbg_bus_line* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.dbg_bus_line*, %struct.dbg_bus_line** %10, align 8
  %53 = getelementptr inbounds %struct.dbg_bus_line, %struct.dbg_bus_line* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DBG_BUS_LINE_IS_256B, align 4
  %56 = call i64 @GET_FIELD(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %51, %44
  %59 = phi i1 [ false, %44 ], [ %57, %51 ]
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 8, i32 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %63 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %68 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @DBG_STATUS_NON_MATCHING_LINES, align 4
  store i32 %73, i32* %3, align 4
  br label %115

74:                                               ; preds = %66, %58
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %79 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %84 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %77
  %88 = load i32, i32* @DBG_STATUS_NO_FILTER_TRIGGER_64B, align 4
  store i32 %88, i32* %3, align 4
  br label %115

89:                                               ; preds = %82, %74
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %92 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %43
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %9, align 8
  br label %27

96:                                               ; preds = %27
  br label %97

97:                                               ; preds = %96, %21, %2
  %98 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %99 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %107 [
    i32 0, label %101
    i32 4, label %103
    i32 8, label %105
  ]

101:                                              ; preds = %97
  %102 = load i32, i32* @DBG_BUS_FRAME_MODE_0HW_4ST, align 4
  store i32 %102, i32* %8, align 4
  br label %109

103:                                              ; preds = %97
  %104 = load i32, i32* @DBG_BUS_FRAME_MODE_4HW_0ST, align 4
  store i32 %104, i32* %8, align 4
  br label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @DBG_BUS_FRAME_MODE_8HW_0ST, align 4
  store i32 %106, i32* %8, align 4
  br label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @DBG_BUS_FRAME_MODE_0HW_4ST, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %105, %103, %101
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %111 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @ecore_bus_set_framing_mode(%struct.ecore_hwfn* %110, %struct.ecore_ptt* %111, i32 %112)
  %114 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %87, %72
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local %struct.dbg_bus_line* @get_dbg_bus_line_desc(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_bus_set_framing_mode(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
