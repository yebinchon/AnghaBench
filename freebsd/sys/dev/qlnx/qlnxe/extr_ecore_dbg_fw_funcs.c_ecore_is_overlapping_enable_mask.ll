; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_is_overlapping_enable_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_is_overlapping_enable_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dbg_bus_block_data*, i64 }
%struct.dbg_bus_block_data = type { i32 }

@VALUES_PER_CYCLE = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_RIGHT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i32)* @ecore_is_overlapping_enable_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_is_overlapping_enable_mask(%struct.ecore_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dbg_tools_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dbg_bus_block_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SHR(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %20 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @MAX_BLOCK_ID, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %31 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %33, i64 %34
  store %struct.dbg_bus_block_data* %35, %struct.dbg_bus_block_data** %12, align 8
  %36 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %12, align 8
  %37 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %40 = call i32 @GET_FIELD(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %62

43:                                               ; preds = %29
  %44 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %12, align 8
  %45 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %48 = call i32 @GET_FIELD(i32 %46, i32 %47)
  %49 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %50 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %12, align 8
  %51 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DBG_BUS_BLOCK_DATA_RIGHT_SHIFT, align 4
  %54 = call i32 @GET_FIELD(i32 %52, i32 %53)
  %55 = call i32 @SHR(i32 %48, i32 %49, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %67

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %25

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65, %3
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @SHR(i32, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
