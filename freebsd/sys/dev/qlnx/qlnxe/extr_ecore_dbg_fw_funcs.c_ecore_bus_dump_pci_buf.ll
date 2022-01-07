; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_pci_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_pci_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ecore_ptt = type { i32 }
%struct.dbg_bus_mem_addr = type { i8*, i8* }

@PCI_BUF_LINE_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@DBG_REG_EXT_BUFFER_WR_PTR = common dso_local global i64 0, align 8
@BYTES_IN_DWORD = common dso_local global i64 0, align 8
@DBG_REG_WRAP_ON_EXT_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_bus_dump_pci_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_bus_dump_pci_buf(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dbg_tools_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dbg_bus_mem_addr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  store %struct.dbg_tools_data* %17, %struct.dbg_tools_data** %10, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %19 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCI_BUF_LINE_SIZE_IN_BYTES, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %27 = load i64, i64* @DBG_REG_EXT_BUFFER_WR_PTR, align 8
  %28 = call i8* @ecore_rd(%struct.ecore_hwfn* %25, %struct.ecore_ptt* %26, i64 %27)
  %29 = getelementptr inbounds %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr* %13, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %32 = load i64, i64* @DBG_REG_EXT_BUFFER_WR_PTR, align 8
  %33 = load i64, i64* @BYTES_IN_DWORD, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i8* @ecore_rd(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, i64 %34)
  %36 = getelementptr inbounds %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr* %13, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %38 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = call i32 @ecore_phys_addr_diff(%struct.dbg_bus_mem_addr* %13, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @PCI_BUF_LINE_SIZE_IN_BYTES, align 4
  %44 = srem i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %49 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %4
  store i32 0, i32* %5, align 4
  br label %94

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PCI_BUF_LINE_SIZE_IN_BYTES, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %60 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %61 = load i64, i64* @DBG_REG_WRAP_ON_EXT_BUFFER, align 8
  %62 = call i8* @ecore_rd(%struct.ecore_hwfn* %59, %struct.ecore_ptt* %60, i64 %61)
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @ecore_bus_dump_pci_buf_range(%struct.ecore_hwfn* %65, i32* %69, i32 %70, i32 %71, i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %64, %55
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @ecore_bus_dump_pci_buf_range(%struct.ecore_hwfn* %81, i32* %85, i32 %86, i32 0, i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %80, %77
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %54
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i8* @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i32 @ecore_phys_addr_diff(%struct.dbg_bus_mem_addr*, i32*) #1

declare dso_local i32 @ecore_bus_dump_pci_buf_range(%struct.ecore_hwfn*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
