; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/usb/extr_r88eu_attach.c_r88eu_attach_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/usb/extr_r88eu_attach.c_r88eu_attach_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@M_RTWN_PRIV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@r88e_txpwr = common dso_local global i32 0, align 4
@r88e_set_bw20 = common dso_local global i32 0, align 4
@r88e_get_txpower = common dso_local global i32 0, align 4
@r88e_set_gain = common dso_local global i32 0, align 4
@r88e_tx_enable_ampdu = common dso_local global i32 0, align 4
@r88e_tx_setup_hwseq = common dso_local global i32 0, align 4
@r88e_tx_setup_macid = common dso_local global i32 0, align 4
@r88eu_set_macaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r88eu_attach_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r88eu_attach_private(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @M_RTWN_PRIV, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.r92c_softc* @malloc(i32 56, i32 %4, i32 %7)
  store %struct.r92c_softc* %8, %struct.r92c_softc** %3, align 8
  %9 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %10 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %9, i32 0, i32 9
  store i32* @r88e_txpwr, i32** %10, align 8
  %11 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %12 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %11, i32 0, i32 8
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* @r88e_set_bw20, align 4
  %14 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %15 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @r88e_get_txpower, align 4
  %17 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %18 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @r88e_set_gain, align 4
  %20 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %21 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @r88e_tx_enable_ampdu, align 4
  %23 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %24 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @r88e_tx_setup_hwseq, align 4
  %26 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %27 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @r88e_tx_setup_macid, align 4
  %29 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %30 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @r88eu_set_macaddr, align 4
  %32 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %33 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %35 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 10, i32* %37, align 4
  %38 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %39 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 100, i32* %41, align 4
  %42 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %43 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 10, i32* %45, align 4
  %46 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %48 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %47, i32 0, i32 0
  store %struct.r92c_softc* %46, %struct.r92c_softc** %48, align 8
  ret void
}

declare dso_local %struct.r92c_softc* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
