; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mtk_pci_range*, %struct.mtk_pci_range*)* @mtk_pci_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pci_ranges(i32 %0, %struct.mtk_pci_range* %1, %struct.mtk_pci_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pci_range*, align 8
  %7 = alloca %struct.mtk_pci_range*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mtk_pci_range* %1, %struct.mtk_pci_range** %6, align 8
  store %struct.mtk_pci_range* %2, %struct.mtk_pci_range** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %6, align 8
  %11 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %7, align 8
  %12 = call i32 @mtk_pci_ranges_decode(i32 %9, %struct.mtk_pci_range* %10, %struct.mtk_pci_range* %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %6, align 8
  %18 = call i32 @mtk_pci_range_dump(%struct.mtk_pci_range* %17)
  %19 = load %struct.mtk_pci_range*, %struct.mtk_pci_range** %7, align 8
  %20 = call i32 @mtk_pci_range_dump(%struct.mtk_pci_range* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @mtk_pci_ranges_decode(i32, %struct.mtk_pci_range*, %struct.mtk_pci_range*) #1

declare dso_local i32 @mtk_pci_range_dump(%struct.mtk_pci_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
