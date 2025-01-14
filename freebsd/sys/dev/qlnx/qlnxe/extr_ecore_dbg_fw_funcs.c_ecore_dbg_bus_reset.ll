; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"dbg_bus_reset: one_shot_en = %d, force_hw_dwords = %d, unify_inputs = %d, grc_input_en = %d\0A\00", align 1
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_REG_DBG_BLOCK_ON = common dso_local global i32 0, align 4
@DBG_STATUS_DBG_BUS_IN_USE = common dso_local global i32 0, align 4
@DBG_REG_FULL_MODE = common dso_local global i32 0, align 4
@DBG_BUS_TARGET_ID_INT_BUF = common dso_local global i32 0, align 4
@DBG_BUS_STATE_READY = common dso_local global i32 0, align 4
@BLOCK_DBG = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_reset(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dbg_tools_data*, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  store %struct.dbg_tools_data* %17, %struct.dbg_tools_data** %14, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %20 = call i32 @ecore_dbg_dev_init(%struct.ecore_hwfn* %18, %struct.ecore_ptt* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* @DBG_STATUS_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %7, align 4
  br label %125

26:                                               ; preds = %6
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %28 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %27, i32 %28, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 8
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %43, i32* %7, align 4
  br label %125

44:                                               ; preds = %39, %36, %26
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %47 = load i32, i32* @DBG_REG_DBG_BLOCK_ON, align 4
  %48 = call i64 @ecore_rd(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @DBG_STATUS_DBG_BUS_IN_USE, align 4
  store i32 %51, i32* %7, align 4
  br label %125

52:                                               ; preds = %44
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %55 = call i32 @ecore_update_blocks_reset_state(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %58 = call i32 @ecore_bus_disable_inputs(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i32 0)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @DBG_STATUS_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %7, align 4
  br label %125

64:                                               ; preds = %52
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %66 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %67 = call i32 @ecore_bus_reset_dbg_block(%struct.ecore_hwfn* %65, %struct.ecore_ptt* %66)
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %69 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %70 = load i32, i32* @DBG_REG_FULL_MODE, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 1
  %75 = call i32 @ecore_wr(%struct.ecore_hwfn* %68, %struct.ecore_ptt* %69, i32 %70, i32 %74)
  %76 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %77 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %76, i32 0, i32 0
  %78 = call i32 @OSAL_MEMSET(%struct.TYPE_4__* %77, i32 0, i32 40)
  %79 = load i32, i32* @DBG_BUS_TARGET_ID_INT_BUF, align 4
  %80 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %81 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 7
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @DBG_BUS_STATE_READY, align 4
  %84 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %85 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %89 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %93 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %97 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %101 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %108 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %64
  %113 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %14, align 8
  %114 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i64, i64* @BLOCK_DBG, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %122 = call i32 @SET_FIELD(i32 %120, i32 %121, i32 1)
  br label %123

123:                                              ; preds = %112, %64
  %124 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %123, %62, %50, %42, %24
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @ecore_dbg_dev_init(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_update_blocks_reset_state(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_bus_disable_inputs(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_bus_reset_dbg_block(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
