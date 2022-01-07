; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_clear_noreboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_clear_noreboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32, i32, i32 }

@ICH_GEN_STA = common dso_local global i32 0, align 4
@ICH_GEN_STA_NO_REBOOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICH_GCS_NO_REBOOT = common dso_local global i32 0, align 4
@ICH_PMC_NO_REBOOT = common dso_local global i32 0, align 4
@SMB_GC_NO_REBOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unknown TCO Version: %d, can't set NO_REBOOT.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ICH WDT present but disabled in BIOS or hardware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ichwd_softc*)* @ichwd_clear_noreboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichwd_clear_noreboot(%struct.ichwd_softc* %0) #0 {
  %2 = alloca %struct.ichwd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ichwd_softc* %0, %struct.ichwd_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %93 [
    i32 1, label %8
    i32 2, label %36
    i32 3, label %55
    i32 4, label %74
  ]

8:                                                ; preds = %1
  %9 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ICH_GEN_STA, align 4
  %13 = call i32 @pci_read_config(i32 %11, i32 %12, i32 1)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @ICH_GEN_STA_NO_REBOOT, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ICH_GEN_STA, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_write_config(i32 %20, i32 %21, i32 %22, i32 1)
  %24 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ICH_GEN_STA, align 4
  %28 = call i32 @pci_read_config(i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ICH_GEN_STA_NO_REBOOT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %8
  br label %101

36:                                               ; preds = %1
  %37 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %38 = call i32 @ichwd_read_gcs_4(%struct.ichwd_softc* %37, i32 0)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @ICH_GCS_NO_REBOOT, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @ichwd_write_gcs_4(%struct.ichwd_softc* %43, i32 0, i32 %44)
  %46 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %47 = call i32 @ichwd_read_gcs_4(%struct.ichwd_softc* %46, i32 0)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ICH_GCS_NO_REBOOT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %36
  br label %101

55:                                               ; preds = %1
  %56 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %57 = call i32 @ichwd_read_pmc_4(%struct.ichwd_softc* %56, i32 0)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @ICH_PMC_NO_REBOOT, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ichwd_write_pmc_4(%struct.ichwd_softc* %62, i32 0, i32 %63)
  %65 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %66 = call i32 @ichwd_read_pmc_4(%struct.ichwd_softc* %65, i32 0)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @ICH_PMC_NO_REBOOT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @EIO, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %55
  br label %101

74:                                               ; preds = %1
  %75 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %76 = call i32 @ichwd_read_gc_4(%struct.ichwd_softc* %75, i32 0)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @SMB_GC_NO_REBOOT, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @ichwd_write_gc_4(%struct.ichwd_softc* %81, i32 0, i32 %82)
  %84 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %85 = call i32 @ichwd_read_gc_4(%struct.ichwd_softc* %84, i32 0)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @SMB_GC_NO_REBOOT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %74
  %91 = load i32, i32* @EIO, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %74
  br label %101

93:                                               ; preds = %1
  %94 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %95 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ichwd_verbose_printf(i32 %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %93, %92, %73, %54, %35
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.ichwd_softc*, %struct.ichwd_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @ichwd_read_gcs_4(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_write_gcs_4(%struct.ichwd_softc*, i32, i32) #1

declare dso_local i32 @ichwd_read_pmc_4(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_write_pmc_4(%struct.ichwd_softc*, i32, i32) #1

declare dso_local i32 @ichwd_read_gc_4(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_write_gc_4(%struct.ichwd_softc*, i32, i32) #1

declare dso_local i32 @ichwd_verbose_printf(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
