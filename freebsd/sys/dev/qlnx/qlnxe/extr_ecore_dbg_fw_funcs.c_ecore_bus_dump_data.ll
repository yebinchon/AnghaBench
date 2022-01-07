; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_bus_dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_bus_dump_data(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %10, align 8
  %13 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %14 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 128, label %23
  ]

17:                                               ; preds = %4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ecore_bus_dump_int_buf(%struct.ecore_hwfn* %18, %struct.ecore_ptt* %19, i32* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %31

23:                                               ; preds = %4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ecore_bus_dump_pci_buf(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25, i32* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %23, %17
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @ecore_bus_dump_int_buf(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_bus_dump_pci_buf(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
