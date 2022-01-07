; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_get_dbg_bus_line_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_get_dbg_bus_line_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbg_bus_line = type { i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dbg_bus_block_data* }
%struct.dbg_bus_block_data = type { i32 }
%struct.dbg_bus_block = type { i64, i64 }

@OSAL_NULL = common dso_local global %struct.dbg_bus_line* null, align 8
@dbg_bus_lines = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dbg_bus_line* (%struct.ecore_hwfn*, i32)* @get_dbg_bus_line_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dbg_bus_line* @get_dbg_bus_line_desc(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.dbg_bus_line*, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca %struct.dbg_bus_block_data*, align 8
  %8 = alloca %struct.dbg_bus_block*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  store %struct.dbg_tools_data* %10, %struct.dbg_tools_data** %6, align 8
  %11 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %12 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %14, i64 %16
  store %struct.dbg_bus_block_data* %17, %struct.dbg_bus_block_data** %7, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.ecore_hwfn* %18, i32 %19)
  store %struct.dbg_bus_block* %20, %struct.dbg_bus_block** %8, align 8
  %21 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %7, align 8
  %22 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %7, align 8
  %27 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %8, align 8
  %32 = getelementptr inbounds %struct.dbg_bus_block, %struct.dbg_bus_block* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %7, align 8
  %37 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %8, align 8
  %40 = call i32 @NUM_DBG_LINES(%struct.dbg_bus_block* %39)
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35, %30, %2
  %43 = load %struct.dbg_bus_line*, %struct.dbg_bus_line** @OSAL_NULL, align 8
  store %struct.dbg_bus_line* %43, %struct.dbg_bus_line** %3, align 8
  br label %59

44:                                               ; preds = %35
  %45 = load i32*, i32** @dbg_bus_lines, align 8
  %46 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %8, align 8
  %47 = getelementptr inbounds %struct.dbg_bus_block, %struct.dbg_bus_block* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %7, align 8
  %50 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %48, %52
  %54 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %8, align 8
  %55 = call i64 @NUM_EXTRA_DBG_LINES(%struct.dbg_bus_block* %54)
  %56 = sub i64 %53, %55
  %57 = getelementptr inbounds i32, i32* %45, i64 %56
  %58 = bitcast i32* %57 to %struct.dbg_bus_line*
  store %struct.dbg_bus_line* %58, %struct.dbg_bus_line** %3, align 8
  br label %59

59:                                               ; preds = %44, %42
  %60 = load %struct.dbg_bus_line*, %struct.dbg_bus_line** %3, align 8
  ret %struct.dbg_bus_line* %60
}

declare dso_local %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @NUM_DBG_LINES(%struct.dbg_bus_block*) #1

declare dso_local i64 @NUM_EXTRA_DBG_LINES(%struct.dbg_bus_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
