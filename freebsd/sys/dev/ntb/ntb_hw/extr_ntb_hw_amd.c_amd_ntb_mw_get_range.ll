; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_mw_get_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_mw_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { %struct.TYPE_2__*, %struct.amd_ntb_pci_bar_info* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.amd_ntb_pci_bar_info = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUIRK_MW0_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i64*, i64*, i64*, i32*)* @amd_ntb_mw_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_mw_get_range(i32 %0, i32 %1, i32* %2, i32* %3, i64* %4, i64* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.amd_ntb_softc*, align 8
  %19 = alloca %struct.amd_ntb_pci_bar_info*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.amd_ntb_softc* @device_get_softc(i32 %20)
  store %struct.amd_ntb_softc* %21, %struct.amd_ntb_softc** %18, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ult i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %18, align 8
  %27 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %25, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24, %8
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %9, align 4
  br label %106

34:                                               ; preds = %24
  %35 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %18, align 8
  %36 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %35, i32 0, i32 1
  %37 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %36, align 8
  %38 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %18, align 8
  %39 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %37, i64 %45
  store %struct.amd_ntb_pci_bar_info* %46, %struct.amd_ntb_pci_bar_info** %19, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %19, align 8
  %51 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %34
  %55 = load i32*, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %19, align 8
  %59 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i64*, i64** %15, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %19, align 8
  %67 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %15, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i64*, i64** %14, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.amd_ntb_pci_bar_info*, %struct.amd_ntb_pci_bar_info** %19, align 8
  %75 = getelementptr inbounds %struct.amd_ntb_pci_bar_info, %struct.amd_ntb_pci_bar_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %14, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i64*, i64** %16, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64*, i64** %16, align 8
  store i64 1, i64* %82, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32*, i32** %17, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %18, align 8
  %91 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @QUIRK_MW0_32BIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %100 = load i32*, i32** %17, align 8
  store i32 %99, i32* %100, align 4
  br label %104

101:                                              ; preds = %89, %86
  %102 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %103 = load i32*, i32** %17, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %83
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %32
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local %struct.amd_ntb_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
