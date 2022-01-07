; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw.c_pci_dw_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_dw.c_pci_dw_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dw_softc = type { i64, i64, %struct.resource*, i32, i32, %struct.resource* }
%struct.resource = type { i32 }

@PCI_SLOTMAX = common dso_local global i64 0, align 8
@PCI_FUNCMAX = common dso_local global i64 0, align 8
@PCI_REGMAX = common dso_local global i64 0, align 8
@IATU_CTRL1_TYPE_CFG0 = common dso_local global i32 0, align 4
@IATU_CTRL1_TYPE_CFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i32)* @pci_dw_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dw_read_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_dw_softc*, align 8
  %15 = alloca %struct.resource*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.pci_dw_softc* @device_get_softc(i32 %20)
  store %struct.pci_dw_softc* %21, %struct.pci_dw_softc** %14, align 8
  %22 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @pci_dw_check_dev(%struct.pci_dw_softc* %22, i64 %23, i64 %24, i64 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %106

30:                                               ; preds = %6
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @PCI_SLOTMAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @PCI_FUNCMAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @PCI_REGMAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34, %30
  store i32 -1, i32* %7, align 4
  br label %106

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %46 = getelementptr inbounds %struct.pci_dw_softc, %struct.pci_dw_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %51 = getelementptr inbounds %struct.pci_dw_softc, %struct.pci_dw_softc* %50, i32 0, i32 5
  %52 = load %struct.resource*, %struct.resource** %51, align 8
  store %struct.resource* %52, %struct.resource** %15, align 8
  br label %89

53:                                               ; preds = %43
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @IATU_CFG_BUS(i64 %54)
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @IATU_CFG_SLOT(i64 %56)
  %58 = or i32 %55, %57
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @IATU_CFG_FUNC(i64 %59)
  %61 = or i32 %58, %60
  store i32 %61, i32* %17, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %64 = getelementptr inbounds %struct.pci_dw_softc, %struct.pci_dw_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @IATU_CTRL1_TYPE_CFG0, align 4
  store i32 %68, i32* %18, align 4
  br label %71

69:                                               ; preds = %53
  %70 = load i32, i32* @IATU_CTRL1_TYPE_CFG1, align 4
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %75 = getelementptr inbounds %struct.pci_dw_softc, %struct.pci_dw_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %79 = getelementptr inbounds %struct.pci_dw_softc, %struct.pci_dw_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pci_dw_map_out_atu(%struct.pci_dw_softc* %72, i32 1, i32 %73, i32 %76, i32 %77, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %106

85:                                               ; preds = %71
  %86 = load %struct.pci_dw_softc*, %struct.pci_dw_softc** %14, align 8
  %87 = getelementptr inbounds %struct.pci_dw_softc, %struct.pci_dw_softc* %86, i32 0, i32 2
  %88 = load %struct.resource*, %struct.resource** %87, align 8
  store %struct.resource* %88, %struct.resource** %15, align 8
  br label %89

89:                                               ; preds = %85, %49
  %90 = load i32, i32* %13, align 4
  switch i32 %90, label %103 [
    i32 1, label %91
    i32 2, label %95
    i32 4, label %99
  ]

91:                                               ; preds = %89
  %92 = load %struct.resource*, %struct.resource** %15, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @bus_read_1(%struct.resource* %92, i64 %93)
  store i32 %94, i32* %16, align 4
  br label %104

95:                                               ; preds = %89
  %96 = load %struct.resource*, %struct.resource** %15, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @bus_read_2(%struct.resource* %96, i64 %97)
  store i32 %98, i32* %16, align 4
  br label %104

99:                                               ; preds = %89
  %100 = load %struct.resource*, %struct.resource** %15, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @bus_read_4(%struct.resource* %100, i64 %101)
  store i32 %102, i32* %16, align 4
  br label %104

103:                                              ; preds = %89
  store i32 -1, i32* %16, align 4
  br label %104

104:                                              ; preds = %103, %99, %95, %91
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %84, %42, %29
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.pci_dw_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_dw_check_dev(%struct.pci_dw_softc*, i64, i64, i64, i64) #1

declare dso_local i32 @IATU_CFG_BUS(i64) #1

declare dso_local i32 @IATU_CFG_SLOT(i64) #1

declare dso_local i32 @IATU_CFG_FUNC(i64) #1

declare dso_local i32 @pci_dw_map_out_atu(%struct.pci_dw_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bus_read_1(%struct.resource*, i64) #1

declare dso_local i32 @bus_read_2(%struct.resource*, i64) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
