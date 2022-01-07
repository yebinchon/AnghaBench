; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_acpi.c_sdhci_acpi_set_uhs_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_acpi.c_sdhci_acpi_set_uhs_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32, i64 }
%struct.sdhci_acpi_softc = type { %struct.sdhci_acpi_device* }
%struct.sdhci_acpi_device = type { i64, i32 }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL2_UHS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"AMDI0040\00", align 1
@SDHCI_CTRL2_UHS_SDR104 = common dso_local global i32 0, align 4
@bus_timing_hs = common dso_local global i32 0, align 4
@SDHCI_CTRL2_SAMPLING_CLOCK = common dso_local global i32 0, align 4
@SD_SDR50_MAX = common dso_local global i64 0, align 8
@SDHCI_CTRL2_MMC_HS400 = common dso_local global i32 0, align 4
@bus_timing_mmc_hs400 = common dso_local global i32 0, align 4
@SDHCI_AMD_RESET_DLL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sdhci_slot*)* @sdhci_acpi_set_uhs_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_acpi_set_uhs_timing(i32 %0, %struct.sdhci_slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_slot*, align 8
  %5 = alloca %struct.sdhci_acpi_softc*, align 8
  %6 = alloca %struct.sdhci_acpi_device*, align 8
  %7 = alloca %struct.mmc_ios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %4, align 8
  %11 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %12 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %16 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %17 = call i32 @SDHCI_READ_2(i32 %14, %struct.sdhci_slot* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @SDHCI_CTRL2_UHS_MASK, align 4
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %23 = call i32 @sdhci_generic_set_uhs_timing(i32 %21, %struct.sdhci_slot* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.sdhci_acpi_softc* @device_get_softc(i32 %24)
  store %struct.sdhci_acpi_softc* %25, %struct.sdhci_acpi_softc** %5, align 8
  %26 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %5, align 8
  %27 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %26, i32 0, i32 0
  %28 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %27, align 8
  store %struct.sdhci_acpi_device* %28, %struct.sdhci_acpi_device** %6, align 8
  %29 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %6, align 8
  %30 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @strcmp(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %100

34:                                               ; preds = %2
  %35 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %6, align 8
  %36 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %100

39:                                               ; preds = %34
  %40 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %41 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.mmc_ios* %42, %struct.mmc_ios** %7, align 8
  %43 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %44 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SDHCI_CTRL2_UHS_SDR104, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @bus_timing_hs, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %56 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %59 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %60 = call i32 @SDHCI_READ_2(i32 %57, %struct.sdhci_slot* %58, i32 %59)
  %61 = load i32, i32* @SDHCI_CTRL2_SAMPLING_CLOCK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @SDHCI_WRITE_2(i32 %54, %struct.sdhci_slot* %55, i32 %56, i32 %63)
  br label %65

65:                                               ; preds = %53, %49, %39
  %66 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %67 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SD_SDR50_MAX, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SDHCI_CTRL2_MMC_HS400, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @bus_timing_mmc_hs400, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %82 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %85 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %86 = call i32 @SDHCI_READ_2(i32 %83, %struct.sdhci_slot* %84, i32 %85)
  %87 = load i32, i32* @SDHCI_CTRL2_SAMPLING_CLOCK, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @SDHCI_WRITE_2(i32 %80, %struct.sdhci_slot* %81, i32 %82, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %92 = load i32, i32* @SDHCI_AMD_RESET_DLL_REG, align 4
  %93 = call i32 @SDHCI_WRITE_4(i32 %90, %struct.sdhci_slot* %91, i32 %92, i32 1073754640)
  %94 = call i32 @DELAY(i32 20)
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.sdhci_slot*, %struct.sdhci_slot** %4, align 8
  %97 = load i32, i32* @SDHCI_AMD_RESET_DLL_REG, align 4
  %98 = call i32 @SDHCI_WRITE_4(i32 %95, %struct.sdhci_slot* %96, i32 %97, i32 1073951248)
  br label %99

99:                                               ; preds = %79, %75, %71, %65
  br label %100

100:                                              ; preds = %99, %34, %2
  ret void
}

declare dso_local i32 @SDHCI_READ_2(i32, %struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_generic_set_uhs_timing(i32, %struct.sdhci_slot*) #1

declare dso_local %struct.sdhci_acpi_softc* @device_get_softc(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SDHCI_WRITE_2(i32, %struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @SDHCI_WRITE_4(i32, %struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
