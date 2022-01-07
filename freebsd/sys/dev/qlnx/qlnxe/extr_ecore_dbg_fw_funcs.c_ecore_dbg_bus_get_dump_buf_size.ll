; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_get_dump_buf_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_get_dump_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@INT_BUF_SIZE_IN_DWORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_get_dump_buf_size(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dbg_tools_data*, align 8
  %9 = alloca %struct.dbg_bus_data*, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %8, align 8
  %13 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %14 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %13, i32 0, i32 0
  store %struct.dbg_bus_data* %14, %struct.dbg_bus_data** %9, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %17 = call i32 @ecore_dbg_dev_init(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i64*, i64** %7, align 8
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @DBG_STATUS_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %3
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %27 = load i32, i32* @OSAL_NULL, align 4
  %28 = call i64 @ecore_bus_dump_hdr(%struct.ecore_hwfn* %25, %struct.ecore_ptt* %26, i32 %27, i32 0)
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %31 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %49 [
    i32 129, label %33
    i32 128, label %39
  ]

33:                                               ; preds = %24
  %34 = load i32, i32* @INT_BUF_SIZE_IN_DWORDS, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %35
  store i64 %38, i64* %36, align 8
  br label %50

39:                                               ; preds = %24
  %40 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %41 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BYTES_TO_DWORDS(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %50

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49, %39, %33
  %51 = load i32, i32* @OSAL_NULL, align 4
  %52 = call i64 @ecore_dump_last_section(i32 %51, i32 0, i32 0)
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %22
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ecore_dbg_dev_init(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @ecore_bus_dump_hdr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i64 @ecore_dump_last_section(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
