; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/usb/extr_r88eu_init.c_r88eu_init_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/usb/extr_r88eu_init.c_r88eu_init_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R88E_HISR = common dso_local global i32 0, align 4
@R88E_HIMR = common dso_local global i32 0, align 4
@R88E_HIMR_CPWM = common dso_local global i32 0, align 4
@R88E_HIMR_CPWM2 = common dso_local global i32 0, align 4
@R88E_HIMR_TBDER = common dso_local global i32 0, align 4
@R88E_HIMR_PSTIMEOUT = common dso_local global i32 0, align 4
@R88E_HIMRE = common dso_local global i32 0, align 4
@R88E_HIMRE_RXFOVW = common dso_local global i32 0, align 4
@R88E_HIMRE_TXFOVW = common dso_local global i32 0, align 4
@R88E_HIMRE_RXERR = common dso_local global i32 0, align 4
@R88E_HIMRE_TXERR = common dso_local global i32 0, align 4
@R92C_USB_SPECIAL_OPTION = common dso_local global i32 0, align 4
@R92C_USB_SPECIAL_OPTION_INT_BULK_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r88eu_init_intr(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R88E_HISR, align 4
  %5 = call i32 @rtwn_write_4(%struct.rtwn_softc* %3, i32 %4, i32 -1)
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = load i32, i32* @R88E_HIMR, align 4
  %8 = load i32, i32* @R88E_HIMR_CPWM, align 4
  %9 = load i32, i32* @R88E_HIMR_CPWM2, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @R88E_HIMR_TBDER, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @R88E_HIMR_PSTIMEOUT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @rtwn_write_4(%struct.rtwn_softc* %6, i32 %7, i32 %14)
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %17 = load i32, i32* @R88E_HIMRE, align 4
  %18 = load i32, i32* @R88E_HIMRE_RXFOVW, align 4
  %19 = load i32, i32* @R88E_HIMRE_TXFOVW, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @R88E_HIMRE_RXERR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @R88E_HIMRE_TXERR, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @rtwn_write_4(%struct.rtwn_softc* %16, i32 %17, i32 %24)
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %27 = load i32, i32* @R92C_USB_SPECIAL_OPTION, align 4
  %28 = load i32, i32* @R92C_USB_SPECIAL_OPTION_INT_BULK_SEL, align 4
  %29 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %26, i32 %27, i32 0, i32 %28)
  ret void
}

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
