; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_clrwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_clrwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32 }

@VGE_PWRSTAT = common dso_local global i32 0, align 4
@VGE_STICKHW_SWPTAG = common dso_local global i32 0, align 4
@VGE_STICKHW_DS0 = common dso_local global i32 0, align 4
@VGE_STICKHW_DS1 = common dso_local global i32 0, align 4
@VGE_DIAGCTL = common dso_local global i32 0, align 4
@VGE_DIAGCTL_GMII = common dso_local global i32 0, align 4
@VGE_DIAGCTL_MACFORCE = common dso_local global i32 0, align 4
@VGE_WOLCR0C = common dso_local global i32 0, align 4
@VGE_WOLCR0_PATTERN_ALL = common dso_local global i32 0, align 4
@VGE_WOLCR1C = common dso_local global i32 0, align 4
@VGE_WOLCFGC = common dso_local global i32 0, align 4
@VGE_WOLCFG_SAB = common dso_local global i32 0, align 4
@VGE_WOLCFG_SAM = common dso_local global i32 0, align 4
@VGE_WOLCFG_PMEOVR = common dso_local global i32 0, align 4
@VGE_WOLSR0C = common dso_local global i32 0, align 4
@VGE_WOLSR1C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_clrwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_clrwol(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %4 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %5 = load i32, i32* @VGE_PWRSTAT, align 4
  %6 = call i32 @CSR_READ_1(%struct.vge_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @VGE_STICKHW_SWPTAG, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %12 = load i32, i32* @VGE_PWRSTAT, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @CSR_WRITE_1(%struct.vge_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %16 = load i32, i32* @VGE_PWRSTAT, align 4
  %17 = call i32 @CSR_READ_1(%struct.vge_softc* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @VGE_STICKHW_DS0, align 4
  %19 = load i32, i32* @VGE_STICKHW_DS1, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %25 = load i32, i32* @VGE_PWRSTAT, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @CSR_WRITE_1(%struct.vge_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %29 = load i32, i32* @VGE_DIAGCTL, align 4
  %30 = load i32, i32* @VGE_DIAGCTL_GMII, align 4
  %31 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %33 = load i32, i32* @VGE_DIAGCTL, align 4
  %34 = load i32, i32* @VGE_DIAGCTL_MACFORCE, align 4
  %35 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %37 = load i32, i32* @VGE_WOLCR0C, align 4
  %38 = load i32, i32* @VGE_WOLCR0_PATTERN_ALL, align 4
  %39 = call i32 @CSR_WRITE_1(%struct.vge_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %41 = load i32, i32* @VGE_WOLCR1C, align 4
  %42 = call i32 @CSR_WRITE_1(%struct.vge_softc* %40, i32 %41, i32 15)
  %43 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %44 = load i32, i32* @VGE_WOLCFGC, align 4
  %45 = load i32, i32* @VGE_WOLCFG_SAB, align 4
  %46 = load i32, i32* @VGE_WOLCFG_SAM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @VGE_WOLCFG_PMEOVR, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @CSR_WRITE_1(%struct.vge_softc* %43, i32 %44, i32 %49)
  %51 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %52 = load i32, i32* @VGE_WOLSR0C, align 4
  %53 = call i32 @CSR_WRITE_1(%struct.vge_softc* %51, i32 %52, i32 255)
  %54 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %55 = load i32, i32* @VGE_WOLSR1C, align 4
  %56 = call i32 @CSR_WRITE_1(%struct.vge_softc* %54, i32 %55, i32 255)
  ret void
}

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_CLRBIT_1(%struct.vge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
