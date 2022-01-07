; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_reset_dbg_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_reset_dbg_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_defs = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@BLOCK_DBG = common dso_local global i64 0, align 8
@s_reset_regs_defs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_bus_reset_dbg_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_bus_reset_dbg_block(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %9 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %10 = load i64, i64* @BLOCK_DBG, align 8
  %11 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %9, i64 %10
  %12 = load %struct.block_defs*, %struct.block_defs** %11, align 8
  store %struct.block_defs* %12, %struct.block_defs** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_reset_regs_defs, align 8
  %14 = load %struct.block_defs*, %struct.block_defs** %8, align 8
  %15 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ecore_rd(%struct.ecore_hwfn* %20, %struct.ecore_ptt* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.block_defs*, %struct.block_defs** %8, align 8
  %26 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %24, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ecore_wr(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32, i32 %33, i32 %34)
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ecore_wr(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
