; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_generic_pcie_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_core_softc = type { i64, i64, i32, i32 }

@PCI_SLOTMAX = common dso_local global i64 0, align 8
@PCI_FUNCMAX = common dso_local global i64 0, align 8
@PCIE_REGMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i32)* @generic_pcie_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_read_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.generic_pcie_core_softc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.generic_pcie_core_softc* @device_get_softc(i32 %19)
  store %struct.generic_pcie_core_softc* %20, %struct.generic_pcie_core_softc** %14, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %14, align 8
  %23 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %6
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %14, align 8
  %29 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %6
  store i32 -1, i32* %7, align 4
  br label %83

33:                                               ; preds = %26
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @PCI_SLOTMAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @PCI_FUNCMAX, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @PCIE_REGMAX, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %33
  store i32 -1, i32* %7, align 4
  br label %83

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %14, align 8
  %49 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @PCIE_ADDR_OFFSET(i64 %51, i64 %52, i64 %53, i64 %54)
  store i32 %55, i32* %17, align 4
  %56 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %14, align 8
  %57 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  %59 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %14, align 8
  %60 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  switch i32 %62, label %80 [
    i32 1, label %63
    i32 2, label %68
    i32 4, label %74
  ]

63:                                               ; preds = %46
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @bus_space_read_1(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %18, align 4
  br label %81

68:                                               ; preds = %46
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @bus_space_read_2(i32 %69, i32 %70, i32 %71)
  %73 = call i32 @le16toh(i32 %72)
  store i32 %73, i32* %18, align 4
  br label %81

74:                                               ; preds = %46
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @bus_space_read_4(i32 %75, i32 %76, i32 %77)
  %79 = call i32 @le32toh(i32 %78)
  store i32 %79, i32* %18, align 4
  br label %81

80:                                               ; preds = %46
  store i32 -1, i32* %7, align 4
  br label %83

81:                                               ; preds = %74, %68, %63
  %82 = load i32, i32* %18, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %80, %45, %32
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.generic_pcie_core_softc* @device_get_softc(i32) #1

declare dso_local i32 @PCIE_ADDR_OFFSET(i64, i64, i64, i64) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
