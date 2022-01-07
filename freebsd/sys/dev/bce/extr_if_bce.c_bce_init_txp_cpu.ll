; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_txp_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_txp_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }
%struct.cpu_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_info = type { i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_TXP_CPU_MODE = common dso_local global i32 0, align 4
@BCE_TXP_CPU_MODE_SOFT_HALT = common dso_local global i32 0, align 4
@BCE_TXP_CPU_MODE_STEP_ENA = common dso_local global i32 0, align 4
@BCE_TXP_CPU_STATE = common dso_local global i32 0, align 4
@BCE_TXP_CPU_REG_FILE = common dso_local global i32 0, align 4
@BCE_TXP_CPU_EVENT_MASK = common dso_local global i32 0, align 4
@BCE_TXP_CPU_PROGRAM_COUNTER = common dso_local global i32 0, align 4
@BCE_TXP_CPU_INSTRUCTION = common dso_local global i32 0, align 4
@BCE_TXP_CPU_HW_BREAKPOINT = common dso_local global i32 0, align 4
@BCE_TXP_SCRATCH = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@bce_TXP_b09FwReleaseMajor = common dso_local global i32 0, align 4
@bce_TXP_b09FwReleaseMinor = common dso_local global i32 0, align 4
@bce_TXP_b09FwReleaseFix = common dso_local global i32 0, align 4
@bce_TXP_b09FwStartAddr = common dso_local global i32 0, align 4
@bce_TXP_b09FwTextAddr = common dso_local global i32 0, align 4
@bce_TXP_b09FwTextLen = common dso_local global i32 0, align 4
@bce_TXP_b09FwText = common dso_local global i32 0, align 4
@bce_TXP_b09FwDataAddr = common dso_local global i32 0, align 4
@bce_TXP_b09FwDataLen = common dso_local global i32 0, align 4
@bce_TXP_b09FwData = common dso_local global i32 0, align 4
@bce_TXP_b09FwSbssAddr = common dso_local global i32 0, align 4
@bce_TXP_b09FwSbssLen = common dso_local global i32 0, align 4
@bce_TXP_b09FwSbss = common dso_local global i32 0, align 4
@bce_TXP_b09FwBssAddr = common dso_local global i32 0, align 4
@bce_TXP_b09FwBssLen = common dso_local global i32 0, align 4
@bce_TXP_b09FwBss = common dso_local global i32 0, align 4
@bce_TXP_b09FwRodataAddr = common dso_local global i32 0, align 4
@bce_TXP_b09FwRodataLen = common dso_local global i32 0, align 4
@bce_TXP_b09FwRodata = common dso_local global i32 0, align 4
@bce_TXP_b06FwReleaseMajor = common dso_local global i32 0, align 4
@bce_TXP_b06FwReleaseMinor = common dso_local global i32 0, align 4
@bce_TXP_b06FwReleaseFix = common dso_local global i32 0, align 4
@bce_TXP_b06FwStartAddr = common dso_local global i32 0, align 4
@bce_TXP_b06FwTextAddr = common dso_local global i32 0, align 4
@bce_TXP_b06FwTextLen = common dso_local global i32 0, align 4
@bce_TXP_b06FwText = common dso_local global i32 0, align 4
@bce_TXP_b06FwDataAddr = common dso_local global i32 0, align 4
@bce_TXP_b06FwDataLen = common dso_local global i32 0, align 4
@bce_TXP_b06FwData = common dso_local global i32 0, align 4
@bce_TXP_b06FwSbssAddr = common dso_local global i32 0, align 4
@bce_TXP_b06FwSbssLen = common dso_local global i32 0, align 4
@bce_TXP_b06FwSbss = common dso_local global i32 0, align 4
@bce_TXP_b06FwBssAddr = common dso_local global i32 0, align 4
@bce_TXP_b06FwBssLen = common dso_local global i32 0, align 4
@bce_TXP_b06FwBss = common dso_local global i32 0, align 4
@bce_TXP_b06FwRodataAddr = common dso_local global i32 0, align 4
@bce_TXP_b06FwRodataLen = common dso_local global i32 0, align 4
@bce_TXP_b06FwRodata = common dso_local global i32 0, align 4
@BCE_INFO_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Loading TX firmware.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_init_txp_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_init_txp_cpu(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.cpu_reg, align 4
  %4 = alloca %struct.fw_info, align 8
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %5 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %6 = call i32 @DBENTER(i32 %5)
  %7 = load i32, i32* @BCE_TXP_CPU_MODE, align 4
  %8 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 11
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @BCE_TXP_CPU_MODE_SOFT_HALT, align 4
  %10 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 10
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @BCE_TXP_CPU_MODE_STEP_ENA, align 4
  %12 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 9
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BCE_TXP_CPU_STATE, align 4
  %14 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 8
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 0
  store i32 16777215, i32* %15, align 4
  %16 = load i32, i32* @BCE_TXP_CPU_REG_FILE, align 4
  %17 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 7
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @BCE_TXP_CPU_EVENT_MASK, align 4
  %19 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 6
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @BCE_TXP_CPU_PROGRAM_COUNTER, align 4
  %21 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @BCE_TXP_CPU_INSTRUCTION, align 4
  %23 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @BCE_TXP_CPU_HW_BREAKPOINT, align 4
  %25 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @BCE_TXP_SCRATCH, align 4
  %27 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %3, i32 0, i32 1
  store i32 134217728, i32* %28, align 4
  %29 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %30 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %29)
  %31 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %1
  %34 = load i32, i32* @bce_TXP_b09FwReleaseMajor, align 4
  %35 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 23
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @bce_TXP_b09FwReleaseMinor, align 4
  %37 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 22
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @bce_TXP_b09FwReleaseFix, align 4
  %39 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 21
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @bce_TXP_b09FwStartAddr, align 4
  %41 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 20
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @bce_TXP_b09FwTextAddr, align 4
  %43 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 19
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @bce_TXP_b09FwTextLen, align 4
  %45 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 18
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 17
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @bce_TXP_b09FwText, align 4
  %48 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 16
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @bce_TXP_b09FwDataAddr, align 4
  %50 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 15
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @bce_TXP_b09FwDataLen, align 4
  %52 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 14
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 13
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @bce_TXP_b09FwData, align 4
  %55 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 12
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* @bce_TXP_b09FwSbssAddr, align 4
  %57 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 11
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @bce_TXP_b09FwSbssLen, align 4
  %59 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 10
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 9
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @bce_TXP_b09FwSbss, align 4
  %62 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 8
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* @bce_TXP_b09FwBssAddr, align 4
  %64 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 7
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @bce_TXP_b09FwBssLen, align 4
  %66 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 6
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @bce_TXP_b09FwBss, align 4
  %69 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 4
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* @bce_TXP_b09FwRodataAddr, align 4
  %71 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @bce_TXP_b09FwRodataLen, align 4
  %73 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @bce_TXP_b09FwRodata, align 4
  %76 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  br label %121

77:                                               ; preds = %1
  %78 = load i32, i32* @bce_TXP_b06FwReleaseMajor, align 4
  %79 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 23
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @bce_TXP_b06FwReleaseMinor, align 4
  %81 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 22
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* @bce_TXP_b06FwReleaseFix, align 4
  %83 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 21
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @bce_TXP_b06FwStartAddr, align 4
  %85 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 20
  store i32 %84, i32* %85, align 8
  %86 = load i32, i32* @bce_TXP_b06FwTextAddr, align 4
  %87 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 19
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @bce_TXP_b06FwTextLen, align 4
  %89 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 18
  store i32 %88, i32* %89, align 8
  %90 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 17
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @bce_TXP_b06FwText, align 4
  %92 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 16
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* @bce_TXP_b06FwDataAddr, align 4
  %94 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 15
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @bce_TXP_b06FwDataLen, align 4
  %96 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 14
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 13
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @bce_TXP_b06FwData, align 4
  %99 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 12
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* @bce_TXP_b06FwSbssAddr, align 4
  %101 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 11
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @bce_TXP_b06FwSbssLen, align 4
  %103 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 10
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 9
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @bce_TXP_b06FwSbss, align 4
  %106 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 8
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* @bce_TXP_b06FwBssAddr, align 4
  %108 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 7
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @bce_TXP_b06FwBssLen, align 4
  %110 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 6
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 5
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @bce_TXP_b06FwBss, align 4
  %113 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = load i32, i32* @bce_TXP_b06FwRodataAddr, align 4
  %115 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 3
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @bce_TXP_b06FwRodataLen, align 4
  %117 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 2
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @bce_TXP_b06FwRodata, align 4
  %120 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %4, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  br label %121

121:                                              ; preds = %77, %33
  %122 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %123 = load i32, i32* @BCE_INFO_RESET, align 4
  %124 = call i32 @DBPRINT(%struct.bce_softc* %122, i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %126 = call i32 @bce_load_cpu_fw(%struct.bce_softc* %125, %struct.cpu_reg* %3, %struct.fw_info* %4)
  %127 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %128 = call i32 @bce_start_cpu(%struct.bce_softc* %127, %struct.cpu_reg* %3)
  %129 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %130 = call i32 @DBEXIT(i32 %129)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*) #1

declare dso_local i32 @bce_load_cpu_fw(%struct.bce_softc*, %struct.cpu_reg*, %struct.fw_info*) #1

declare dso_local i32 @bce_start_cpu(%struct.bce_softc*, %struct.cpu_reg*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
