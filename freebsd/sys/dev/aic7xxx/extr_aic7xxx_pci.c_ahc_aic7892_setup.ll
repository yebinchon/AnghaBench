; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7892_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_aic7892_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i8, i32, i32, i32, i32, i32 }

@AHC_AIC7892 = common dso_local global i32 0, align 4
@AHC_AIC7892_FE = common dso_local global i32 0, align 4
@AHC_NEWEEPROM_FMT = common dso_local global i32 0, align 4
@AHC_SCBCHAN_UPLOAD_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @ahc_aic7892_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_aic7892_setup(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %3 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %3, i32 0, i32 0
  store i8 65, i8* %4, align 4
  %5 = load i32, i32* @AHC_AIC7892, align 4
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @AHC_AIC7892_FE, align 4
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @AHC_NEWEEPROM_FMT, align 4
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @AHC_SCBCHAN_UPLOAD_BUG, align 4
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 1
  store i32 1024, i32* %22, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
