; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_map_pci_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_map_pci_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8* }

@NTB_CONFIG_BAR = common dso_local global i64 0, align 8
@NTB_BAR_1 = common dso_local global i64 0, align 8
@AMD_BAR1XLAT_OFFSET = common dso_local global i32 0, align 4
@AMD_BAR1LMT_OFFSET = common dso_local global i32 0, align 4
@NTB_BAR_2 = common dso_local global i64 0, align 8
@AMD_BAR23XLAT_OFFSET = common dso_local global i32 0, align 4
@AMD_BAR23LMT_OFFSET = common dso_local global i32 0, align 4
@NTB_BAR_3 = common dso_local global i64 0, align 8
@AMD_BAR45XLAT_OFFSET = common dso_local global i32 0, align 4
@AMD_BAR45LMT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to allocate pci resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_softc*)* @amd_ntb_map_pci_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_map_pci_bars(%struct.amd_ntb_softc* %0) #0 {
  %2 = alloca %struct.amd_ntb_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i8* @PCIR_BAR(i32 0)
  %5 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i64, i64* @NTB_CONFIG_BAR, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i8* %4, i8** %10, align 8
  %11 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %12 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %13 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @NTB_CONFIG_BAR, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = call i32 @map_bar(%struct.amd_ntb_softc* %11, %struct.TYPE_2__* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %118

21:                                               ; preds = %1
  %22 = call i8* @PCIR_BAR(i32 1)
  %23 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %24 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @NTB_BAR_1, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %22, i8** %28, align 8
  %29 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %30 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %31 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* @NTB_BAR_1, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = call i32 @map_bar(%struct.amd_ntb_softc* %29, %struct.TYPE_2__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %118

39:                                               ; preds = %21
  %40 = load i32, i32* @AMD_BAR1XLAT_OFFSET, align 4
  %41 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %42 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @NTB_BAR_1, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* @AMD_BAR1LMT_OFFSET, align 4
  %48 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %49 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* @NTB_BAR_1, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %47, i32* %53, align 8
  %54 = call i8* @PCIR_BAR(i32 2)
  %55 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %56 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* @NTB_BAR_2, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i8* %54, i8** %60, align 8
  %61 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %62 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %63 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* @NTB_BAR_2, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = call i32 @map_bar(%struct.amd_ntb_softc* %61, %struct.TYPE_2__* %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %39
  br label %118

71:                                               ; preds = %39
  %72 = load i32, i32* @AMD_BAR23XLAT_OFFSET, align 4
  %73 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %74 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* @NTB_BAR_2, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* @AMD_BAR23LMT_OFFSET, align 4
  %80 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %81 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* @NTB_BAR_2, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 8
  %86 = call i8* @PCIR_BAR(i32 4)
  %87 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %88 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i64, i64* @NTB_BAR_3, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i8* %86, i8** %92, align 8
  %93 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %94 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %95 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* @NTB_BAR_3, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = call i32 @map_bar(%struct.amd_ntb_softc* %93, %struct.TYPE_2__* %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %71
  br label %118

103:                                              ; preds = %71
  %104 = load i32, i32* @AMD_BAR45XLAT_OFFSET, align 4
  %105 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %106 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* @NTB_BAR_3, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* @AMD_BAR45LMT_OFFSET, align 4
  %112 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %2, align 8
  %113 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* @NTB_BAR_3, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 8
  br label %118

118:                                              ; preds = %103, %102, %70, %38, %20
  %119 = load i32, i32* %3, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @amd_ntb_printf(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i32 @map_bar(%struct.amd_ntb_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @amd_ntb_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
