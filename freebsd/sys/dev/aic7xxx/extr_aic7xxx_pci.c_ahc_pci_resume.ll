; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.seeprom_descriptor = type { i8*, i8*, i8*, %struct.ahc_softc* }

@AIC_POWER_STATE_D0 = common dso_local global i32 0, align 4
@DEVCONFIG = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@CSIZE_LATTIME = common dso_local global i32 0, align 4
@AHC_HAS_TERM_LOGIC = common dso_local global i32 0, align 4
@SEECTL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_pci_resume(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.seeprom_descriptor, align 8
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = load i32, i32* @AIC_POWER_STATE_D0, align 4
  %7 = call i32 @aic_power_state_change(%struct.ahc_softc* %5, i32 %6)
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DEVCONFIG, align 4
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @aic_pci_write_config(i32 %10, i32 %11, i32 %16, i32 4)
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PCIR_COMMAND, align 4
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @aic_pci_write_config(i32 %20, i32 %21, i32 %26, i32 1)
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CSIZE_LATTIME, align 4
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @aic_pci_write_config(i32 %30, i32 %31, i32 %36, i32 1)
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AHC_HAS_TERM_LOGIC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %1
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %46 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 3
  store %struct.ahc_softc* %45, %struct.ahc_softc** %46, align 8
  %47 = load i8*, i8** @SEECTL, align 8
  %48 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** @SEECTL, align 8
  %50 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** @SEECTL, align 8
  %52 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %54 = call i32 @ahc_acquire_seeprom(%struct.ahc_softc* %53, %struct.seeprom_descriptor* %3)
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @configure_termination(%struct.ahc_softc* %55, %struct.seeprom_descriptor* %3, i32 %60, i32* %4)
  %62 = call i32 @ahc_release_seeprom(%struct.seeprom_descriptor* %3)
  br label %63

63:                                               ; preds = %44, %1
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %65 = call i32 @ahc_resume(%struct.ahc_softc* %64)
  ret i32 %65
}

declare dso_local i32 @aic_power_state_change(%struct.ahc_softc*, i32) #1

declare dso_local i32 @aic_pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @ahc_acquire_seeprom(%struct.ahc_softc*, %struct.seeprom_descriptor*) #1

declare dso_local i32 @configure_termination(%struct.ahc_softc*, %struct.seeprom_descriptor*, i32, i32*) #1

declare dso_local i32 @ahc_release_seeprom(%struct.seeprom_descriptor*) #1

declare dso_local i32 @ahc_resume(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
