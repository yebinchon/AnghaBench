; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_grc_get_dump_buf_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_grc_get_dump_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@s_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_MODE_TREE = common dso_local global i64 0, align 8
@BIN_BUF_DBG_DUMP_REG = common dso_local global i64 0, align 8
@BIN_BUF_DBG_DUMP_MEM = common dso_local global i64 0, align 8
@BIN_BUF_DBG_ATTN_BLOCKS = common dso_local global i64 0, align 8
@BIN_BUF_DBG_ATTN_REGS = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_ARRAY_NOT_SET = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_grc_get_dump_buf_size(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %10 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %11 = call i32 @ecore_dbg_dev_init(%struct.ecore_hwfn* %9, %struct.ecore_ptt* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i64*, i64** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @DBG_STATUS_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %20 = load i64, i64* @BIN_BUF_DBG_MODE_TREE, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %18
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %27 = load i64, i64* @BIN_BUF_DBG_DUMP_REG, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %34 = load i64, i64* @BIN_BUF_DBG_DUMP_MEM, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %41 = load i64, i64* @BIN_BUF_DBG_ATTN_BLOCKS, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %48 = load i64, i64* @BIN_BUF_DBG_ATTN_REGS, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46, %39, %32, %25, %18
  %54 = load i32, i32* @DBG_STATUS_DBG_ARRAY_NOT_SET, align 4
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %58 = load i32, i32* @OSAL_NULL, align 4
  %59 = load i64*, i64** %7, align 8
  %60 = call i32 @ecore_grc_dump(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i32 %58, i32 0, i64* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %53, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ecore_dbg_dev_init(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_grc_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
