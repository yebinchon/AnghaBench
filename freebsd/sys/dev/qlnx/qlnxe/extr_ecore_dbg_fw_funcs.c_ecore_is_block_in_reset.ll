; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_is_block_in_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_is_block_in_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_defs = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i64* }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64 }
%struct.ecore_ptt = type { i32 }

@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@s_reset_regs_defs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_is_block_in_reset(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dbg_tools_data*, align 8
  %9 = alloca %struct.block_defs*, align 8
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %8, align 8
  %13 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %13, i64 %15
  %17 = load %struct.block_defs*, %struct.block_defs** %16, align 8
  store %struct.block_defs* %17, %struct.block_defs** %9, align 8
  %18 = load %struct.block_defs*, %struct.block_defs** %9, align 8
  %19 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load %struct.block_defs*, %struct.block_defs** %9, align 8
  %25 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_reset_regs_defs, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %33 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %23
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_reset_regs_defs, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ecore_rd(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i32 %45)
  %47 = load %struct.block_defs*, %struct.block_defs** %9, align 8
  %48 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 1, %49
  %51 = and i32 %46, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  br label %56

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55, %38
  %57 = phi i32 [ %54, %38 ], [ 1, %55 ]
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
