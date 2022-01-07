; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_get_dbg_bus_block_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_get_dbg_bus_block_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbg_bus_block = type { i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i32 }

@dbg_bus_blocks = common dso_local global i32* null, align 8
@MAX_CHIP_IDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dbg_bus_block* (%struct.ecore_hwfn*, i32)* @get_dbg_bus_block_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  store %struct.dbg_tools_data* %7, %struct.dbg_tools_data** %5, align 8
  %8 = load i32*, i32** @dbg_bus_blocks, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_CHIP_IDS, align 4
  %11 = mul i32 %9, %10
  %12 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %13 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %11, %14
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %8, i64 %16
  %18 = bitcast i32* %17 to %struct.dbg_bus_block*
  ret %struct.dbg_bus_block* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
