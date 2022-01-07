; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12a_attach_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12a_attach_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc* }
%struct.r12a_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@M_RTWN_PRIV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@R12A_RXCKSUM_EN = common dso_local global i32 0, align 4
@R12A_RXCKSUM6_EN = common dso_local global i32 0, align 4
@r12a_fix_spur = common dso_local global i32 0, align 4
@r12a_set_band_2ghz = common dso_local global i32 0, align 4
@r12a_set_band_5ghz = common dso_local global i32 0, align 4
@r12au_init_burstlen = common dso_local global i32 0, align 4
@r12au_init_ampdu_fwhw = common dso_local global i32 0, align 4
@r12a_crystalcap_write = common dso_local global i32 0, align 4
@r12a_iq_calib_fw_supported = common dso_local global i32 0, align 4
@r12a_iq_calib_sw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r12a_attach_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12a_attach_private(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r12a_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @M_RTWN_PRIV, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.r12a_softc* @malloc(i32 40, i32 %4, i32 %7)
  store %struct.r12a_softc* %8, %struct.r12a_softc** %3, align 8
  %9 = load i32, i32* @R12A_RXCKSUM_EN, align 4
  %10 = load i32, i32* @R12A_RXCKSUM6_EN, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %13 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @r12a_fix_spur, align 4
  %15 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %16 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @r12a_set_band_2ghz, align 4
  %18 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %19 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @r12a_set_band_5ghz, align 4
  %21 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %22 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @r12au_init_burstlen, align 4
  %24 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %25 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @r12au_init_ampdu_fwhw, align 4
  %27 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %28 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @r12a_crystalcap_write, align 4
  %30 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %31 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @r12a_iq_calib_fw_supported, align 4
  %33 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %34 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @r12a_iq_calib_sw, align 4
  %36 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %37 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %39 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %38, i32 0, i32 1
  store i32 112, i32* %39, align 4
  %40 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %41, i32 0, i32 0
  store %struct.r12a_softc* %40, %struct.r12a_softc** %42, align 8
  ret void
}

declare dso_local %struct.r12a_softc* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
