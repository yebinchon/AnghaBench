; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_map_pci_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_map_pci_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@NTB_CONFIG_BAR = common dso_local global i64 0, align 8
@NTB_B2B_BAR_1 = common dso_local global i64 0, align 8
@XEON_PBAR23SZ_OFFSET = common dso_local global i32 0, align 4
@XEON_SBAR23SZ_OFFSET = common dso_local global i32 0, align 4
@XEON_PBAR2XLAT_OFFSET = common dso_local global i32 0, align 4
@NTB_B2B_BAR_2 = common dso_local global i64 0, align 8
@XEON_PBAR4SZ_OFFSET = common dso_local global i32 0, align 4
@XEON_SBAR4SZ_OFFSET = common dso_local global i32 0, align 4
@XEON_PBAR4XLAT_OFFSET = common dso_local global i32 0, align 4
@NTB_SPLIT_BAR = common dso_local global i32 0, align 4
@NTB_B2B_BAR_3 = common dso_local global i64 0, align 8
@XEON_PBAR5SZ_OFFSET = common dso_local global i32 0, align 4
@XEON_SBAR5SZ_OFFSET = common dso_local global i32 0, align 4
@XEON_PBAR5XLAT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to allocate pci resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*)* @intel_ntb_map_pci_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_map_pci_bars(%struct.ntb_softc* %0) #0 {
  %2 = alloca %struct.ntb_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %2, align 8
  %4 = call i8* @PCIR_BAR(i32 0)
  %5 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i64, i64* @NTB_CONFIG_BAR, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i8* %4, i8** %10, align 8
  %11 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %12 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @NTB_CONFIG_BAR, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = call i32 @map_mmr_bar(%struct.ntb_softc* %11, %struct.TYPE_3__* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %141

21:                                               ; preds = %1
  %22 = call i8* @PCIR_BAR(i32 2)
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* @NTB_B2B_BAR_1, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i8* %22, i8** %28, align 8
  %29 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %30 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* @NTB_B2B_BAR_1, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = call i32 @map_memory_window_bar(%struct.ntb_softc* %29, %struct.TYPE_3__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %141

39:                                               ; preds = %21
  %40 = load i32, i32* @XEON_PBAR23SZ_OFFSET, align 4
  %41 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @NTB_B2B_BAR_1, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %40, i32* %46, align 8
  %47 = load i32, i32* @XEON_SBAR23SZ_OFFSET, align 4
  %48 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* @NTB_B2B_BAR_1, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* @XEON_PBAR2XLAT_OFFSET, align 4
  %55 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i64, i64* @NTB_B2B_BAR_1, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 8
  %61 = call i8* @PCIR_BAR(i32 4)
  %62 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i64, i64* @NTB_B2B_BAR_2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i8* %61, i8** %67, align 8
  %68 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %69 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i64, i64* @NTB_B2B_BAR_2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = call i32 @map_memory_window_bar(%struct.ntb_softc* %68, %struct.TYPE_3__* %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %39
  br label %141

78:                                               ; preds = %39
  %79 = load i32, i32* @XEON_PBAR4SZ_OFFSET, align 4
  %80 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %81 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* @NTB_B2B_BAR_2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 %79, i32* %85, align 8
  %86 = load i32, i32* @XEON_SBAR4SZ_OFFSET, align 4
  %87 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* @NTB_B2B_BAR_2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* @XEON_PBAR4XLAT_OFFSET, align 4
  %94 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %95 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i64, i64* @NTB_B2B_BAR_2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %93, i32* %99, align 8
  %100 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %101 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %102 = call i32 @HAS_FEATURE(%struct.ntb_softc* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %78
  br label %141

105:                                              ; preds = %78
  %106 = call i8* @PCIR_BAR(i32 5)
  %107 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* @NTB_B2B_BAR_3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  store i8* %106, i8** %112, align 8
  %113 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %114 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %115 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i64, i64* @NTB_B2B_BAR_3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %117
  %119 = call i32 @map_memory_window_bar(%struct.ntb_softc* %113, %struct.TYPE_3__* %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* @XEON_PBAR5SZ_OFFSET, align 4
  %121 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %122 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i64, i64* @NTB_B2B_BAR_3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32 %120, i32* %126, align 8
  %127 = load i32, i32* @XEON_SBAR5SZ_OFFSET, align 4
  %128 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %129 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i64, i64* @NTB_B2B_BAR_3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i32 %127, i32* %133, align 4
  %134 = load i32, i32* @XEON_PBAR5XLAT_OFFSET, align 4
  %135 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %136 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i64, i64* @NTB_B2B_BAR_3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32 %134, i32* %140, align 8
  br label %141

141:                                              ; preds = %105, %104, %77, %38, %20
  %142 = load i32, i32* %3, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %146 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i32 @map_mmr_bar(%struct.ntb_softc*, %struct.TYPE_3__*) #1

declare dso_local i32 @map_memory_window_bar(%struct.ntb_softc*, %struct.TYPE_3__*) #1

declare dso_local i32 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
