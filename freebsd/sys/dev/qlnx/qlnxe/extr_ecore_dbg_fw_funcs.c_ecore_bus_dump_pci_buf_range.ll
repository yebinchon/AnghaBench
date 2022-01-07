; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_pci_buf_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_pci_buf_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PCI_BUF_LINE_SIZE_IN_DWORDS = common dso_local global i32 0, align 4
@s_pci_buf_line_ind = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32*, i32, i32, i32)* @ecore_bus_dump_pci_buf_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_bus_dump_pci_buf_range(%struct.ecore_hwfn* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dbg_tools_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  store %struct.dbg_tools_data* %20, %struct.dbg_tools_data** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %22 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* @PCI_BUF_LINE_SIZE_IN_DWORDS, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %84

40:                                               ; preds = %5
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @PCI_BUF_LINE_SIZE_IN_DWORDS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %16, align 8
  br label %48

48:                                               ; preds = %76, %40
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @PCI_BUF_LINE_SIZE_IN_DWORDS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** @s_pci_buf_line_ind, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %61, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %60, i64 %68
  store i32 %59, i32* %69, align 4
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %16, align 8
  br label %53

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* @PCI_BUF_LINE_SIZE_IN_DWORDS, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %48

82:                                               ; preds = %48
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %33
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
