; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_attach.c_r92cu_attach_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_attach.c_r92cu_attach_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc*, i32 }
%struct.r92c_softc = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@M_RTWN_PRIV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@r92c_txpwr = common dso_local global i32 0, align 4
@r92c_set_bw20 = common dso_local global i32 0, align 4
@r92c_get_txpower = common dso_local global i32 0, align 4
@r92c_set_gain = common dso_local global i32 0, align 4
@r92c_tx_enable_ampdu = common dso_local global i32 0, align 4
@r92c_tx_setup_hwseq = common dso_local global i32 0, align 4
@r92c_tx_setup_macid = common dso_local global i32 0, align 4
@r92cu_set_name = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r92cu_attach_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92cu_attach_private(%struct.rtwn_softc* %0) #0 {
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
  %10 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %9, i32 0, i32 10
  store i32* @r92c_txpwr, i32** %10, align 8
  %11 = load i32, i32* @r92c_set_bw20, align 4
  %12 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %13 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @r92c_get_txpower, align 4
  %15 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %16 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @r92c_set_gain, align 4
  %18 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %19 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @r92c_tx_enable_ampdu, align 4
  %21 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %22 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @r92c_tx_setup_hwseq, align 4
  %24 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %25 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @r92c_tx_setup_macid, align 4
  %27 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %28 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @r92cu_set_name, align 4
  %30 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %31 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @hz, align 4
  %33 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %34 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %36 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %35, i32 0, i32 1
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %37, i32 0, i32 1
  %39 = call i32 @callout_init_mtx(i32* %36, i32* %38, i32 0)
  %40 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %41 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 10, i32* %43, align 4
  %44 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %45 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 100, i32* %47, align 4
  %48 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %49 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 10, i32* %51, align 4
  %52 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %54 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %53, i32 0, i32 0
  store %struct.r92c_softc* %52, %struct.r92c_softc** %54, align 8
  ret void
}

declare dso_local %struct.r92c_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
