; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_reset_current_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_reset_current_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@SIMODE1 = common dso_local global i32 0, align 4
@ENSCSIRST = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@SCSIRSTO = common dso_local global i32 0, align 4
@AHC_BUSRESET_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_reset_current_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_reset_current_bus(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = load i32, i32* @SIMODE1, align 4
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = load i32, i32* @SIMODE1, align 4
  %8 = call i32 @ahc_inb(%struct.ahc_softc* %6, i32 %7)
  %9 = load i32, i32* @ENSCSIRST, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i32 @ahc_outb(%struct.ahc_softc* %4, i32 %5, i32 %11)
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = load i32, i32* @SCSISEQ, align 4
  %15 = call i32 @ahc_inb(%struct.ahc_softc* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = load i32, i32* @SCSISEQ, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SCSIRSTO, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ahc_outb(%struct.ahc_softc* %16, i32 %17, i32 %20)
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %23 = call i32 @ahc_flush_device_writes(%struct.ahc_softc* %22)
  %24 = load i32, i32* @AHC_BUSRESET_DELAY, align 4
  %25 = call i32 @aic_delay(i32 %24)
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %27 = load i32, i32* @SCSISEQ, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SCSIRSTO, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @ahc_outb(%struct.ahc_softc* %26, i32 %27, i32 %31)
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %34 = call i32 @ahc_clear_intstat(%struct.ahc_softc* %33)
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = load i32, i32* @SIMODE1, align 4
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %38 = load i32, i32* @SIMODE1, align 4
  %39 = call i32 @ahc_inb(%struct.ahc_softc* %37, i32 %38)
  %40 = load i32, i32* @ENSCSIRST, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ahc_outb(%struct.ahc_softc* %35, i32 %36, i32 %41)
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_flush_device_writes(%struct.ahc_softc*) #1

declare dso_local i32 @aic_delay(i32) #1

declare dso_local i32 @ahc_clear_intstat(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
