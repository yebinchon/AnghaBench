; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_static_asserts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_static_asserts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_dbg_arrays = common dso_local global i32 0, align 4
@MAX_BIN_DBG_BUFFER_TYPE = common dso_local global i32 0, align 4
@s_big_ram_defs = common dso_local global i32 0, align 4
@NUM_BIG_RAM_TYPES = common dso_local global i32 0, align 4
@s_vfc_ram_defs = common dso_local global i32 0, align 4
@NUM_VFC_RAM_TYPES = common dso_local global i32 0, align 4
@s_rss_mem_defs = common dso_local global i32 0, align 4
@NUM_RSS_MEM_TYPES = common dso_local global i32 0, align 4
@s_chip_defs = common dso_local global i32 0, align 4
@MAX_CHIP_IDS = common dso_local global i32 0, align 4
@s_platform_defs = common dso_local global i32 0, align 4
@MAX_PLATFORM_IDS = common dso_local global i32 0, align 4
@s_storm_defs = common dso_local global i32 0, align 4
@MAX_DBG_STORMS = common dso_local global i32 0, align 4
@s_constraint_op_defs = common dso_local global i32 0, align 4
@MAX_DBG_BUS_CONSTRAINT_OPS = common dso_local global i32 0, align 4
@s_dbg_target_names = common dso_local global i32 0, align 4
@MAX_DBG_BUS_TARGETS = common dso_local global i32 0, align 4
@s_storm_mode_defs = common dso_local global i32 0, align 4
@MAX_DBG_BUS_STORM_MODES = common dso_local global i32 0, align 4
@s_grc_param_defs = common dso_local global i32 0, align 4
@MAX_DBG_GRC_PARAMS = common dso_local global i32 0, align 4
@s_reset_regs_defs = common dso_local global i32 0, align 4
@MAX_DBG_RESET_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ecore_static_asserts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_static_asserts() #0 {
  %1 = load i32, i32* @s_dbg_arrays, align 4
  %2 = load i32, i32* @MAX_BIN_DBG_BUFFER_TYPE, align 4
  %3 = call i32 @CHECK_ARR_SIZE(i32 %1, i32 %2)
  %4 = load i32, i32* @s_big_ram_defs, align 4
  %5 = load i32, i32* @NUM_BIG_RAM_TYPES, align 4
  %6 = call i32 @CHECK_ARR_SIZE(i32 %4, i32 %5)
  %7 = load i32, i32* @s_vfc_ram_defs, align 4
  %8 = load i32, i32* @NUM_VFC_RAM_TYPES, align 4
  %9 = call i32 @CHECK_ARR_SIZE(i32 %7, i32 %8)
  %10 = load i32, i32* @s_rss_mem_defs, align 4
  %11 = load i32, i32* @NUM_RSS_MEM_TYPES, align 4
  %12 = call i32 @CHECK_ARR_SIZE(i32 %10, i32 %11)
  %13 = load i32, i32* @s_chip_defs, align 4
  %14 = load i32, i32* @MAX_CHIP_IDS, align 4
  %15 = call i32 @CHECK_ARR_SIZE(i32 %13, i32 %14)
  %16 = load i32, i32* @s_platform_defs, align 4
  %17 = load i32, i32* @MAX_PLATFORM_IDS, align 4
  %18 = call i32 @CHECK_ARR_SIZE(i32 %16, i32 %17)
  %19 = load i32, i32* @s_storm_defs, align 4
  %20 = load i32, i32* @MAX_DBG_STORMS, align 4
  %21 = call i32 @CHECK_ARR_SIZE(i32 %19, i32 %20)
  %22 = load i32, i32* @s_constraint_op_defs, align 4
  %23 = load i32, i32* @MAX_DBG_BUS_CONSTRAINT_OPS, align 4
  %24 = call i32 @CHECK_ARR_SIZE(i32 %22, i32 %23)
  %25 = load i32, i32* @s_dbg_target_names, align 4
  %26 = load i32, i32* @MAX_DBG_BUS_TARGETS, align 4
  %27 = call i32 @CHECK_ARR_SIZE(i32 %25, i32 %26)
  %28 = load i32, i32* @s_storm_mode_defs, align 4
  %29 = load i32, i32* @MAX_DBG_BUS_STORM_MODES, align 4
  %30 = call i32 @CHECK_ARR_SIZE(i32 %28, i32 %29)
  %31 = load i32, i32* @s_grc_param_defs, align 4
  %32 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %33 = call i32 @CHECK_ARR_SIZE(i32 %31, i32 %32)
  %34 = load i32, i32* @s_reset_regs_defs, align 4
  %35 = load i32, i32* @MAX_DBG_RESET_REGS, align 4
  %36 = call i32 @CHECK_ARR_SIZE(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @CHECK_ARR_SIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
