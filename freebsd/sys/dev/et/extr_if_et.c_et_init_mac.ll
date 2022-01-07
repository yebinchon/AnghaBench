; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@ET_MAC_CFG1 = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_TXFUNC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_RXFUNC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_TXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_RXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SIM_RST = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SOFT_RST = common dso_local global i32 0, align 4
@ET_IPG_NONB2B_1_SHIFT = common dso_local global i32 0, align 4
@ET_IPG_NONB2B_2_SHIFT = common dso_local global i32 0, align 4
@ET_IPG_MINIFG_SHIFT = common dso_local global i32 0, align 4
@ET_IPG_B2B_SHIFT = common dso_local global i32 0, align 4
@ET_IPG = common dso_local global i32 0, align 4
@ET_MAC_HDX_ALT_BEB_TRUNC_SHIFT = common dso_local global i32 0, align 4
@ET_MAC_HDX_REXMIT_MAX_SHIFT = common dso_local global i32 0, align 4
@ET_MAC_HDX_COLLWIN_SHIFT = common dso_local global i32 0, align 4
@ET_MAC_HDX_EXC_DEFER = common dso_local global i32 0, align 4
@ET_MAC_HDX = common dso_local global i32 0, align 4
@ET_MAC_CTRL = common dso_local global i32 0, align 4
@ET_MII_CFG = common dso_local global i32 0, align 4
@ET_MII_CFG_CLKRST = common dso_local global i32 0, align 4
@ET_MAC_ADDR1 = common dso_local global i32 0, align 4
@ET_MAC_ADDR2 = common dso_local global i32 0, align 4
@ET_MAX_FRMLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_init_mac(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %6 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %7 = load i32, i32* @ET_MAC_CFG1, align 4
  %8 = load i32, i32* @ET_MAC_CFG1_RST_TXFUNC, align 4
  %9 = load i32, i32* @ET_MAC_CFG1_RST_RXFUNC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ET_MAC_CFG1_RST_TXMC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ET_MAC_CFG1_RST_RXMC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ET_MAC_CFG1_SIM_RST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ET_MAC_CFG1_SOFT_RST, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @CSR_WRITE_4(%struct.et_softc* %6, i32 %7, i32 %18)
  %20 = load i32, i32* @ET_IPG_NONB2B_1_SHIFT, align 4
  %21 = shl i32 56, %20
  %22 = load i32, i32* @ET_IPG_NONB2B_2_SHIFT, align 4
  %23 = shl i32 88, %22
  %24 = or i32 %21, %23
  %25 = load i32, i32* @ET_IPG_MINIFG_SHIFT, align 4
  %26 = shl i32 80, %25
  %27 = or i32 %24, %26
  %28 = load i32, i32* @ET_IPG_B2B_SHIFT, align 4
  %29 = shl i32 96, %28
  %30 = or i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %32 = load i32, i32* @ET_IPG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CSR_WRITE_4(%struct.et_softc* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @ET_MAC_HDX_ALT_BEB_TRUNC_SHIFT, align 4
  %36 = shl i32 10, %35
  %37 = load i32, i32* @ET_MAC_HDX_REXMIT_MAX_SHIFT, align 4
  %38 = shl i32 15, %37
  %39 = or i32 %36, %38
  %40 = load i32, i32* @ET_MAC_HDX_COLLWIN_SHIFT, align 4
  %41 = shl i32 55, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @ET_MAC_HDX_EXC_DEFER, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %46 = load i32, i32* @ET_MAC_HDX, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.et_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %50 = load i32, i32* @ET_MAC_CTRL, align 4
  %51 = call i32 @CSR_WRITE_4(%struct.et_softc* %49, i32 %50, i32 0)
  %52 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %53 = load i32, i32* @ET_MII_CFG, align 4
  %54 = load i32, i32* @ET_MII_CFG_CLKRST, align 4
  %55 = call i32 @CSR_WRITE_4(%struct.et_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %57 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %56, i32 0, i32 0
  %58 = load %struct.ifnet*, %struct.ifnet** %57, align 8
  store %struct.ifnet* %58, %struct.ifnet** %3, align 8
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = call i32* @IF_LLADDR(%struct.ifnet* %59)
  store i32* %60, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %63, %67
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %68, %72
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 24
  %78 = or i32 %73, %77
  store i32 %78, i32* %5, align 4
  %79 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %80 = load i32, i32* @ET_MAC_ADDR1, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @CSR_WRITE_4(%struct.et_softc* %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 24
  %91 = or i32 %86, %90
  store i32 %91, i32* %5, align 4
  %92 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %93 = load i32, i32* @ET_MAC_ADDR2, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @CSR_WRITE_4(%struct.et_softc* %92, i32 %93, i32 %94)
  %96 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %97 = load i32, i32* @ET_MAX_FRMLEN, align 4
  %98 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ET_FRAMELEN(i32 %100)
  %102 = call i32 @CSR_WRITE_4(%struct.et_softc* %96, i32 %97, i32 %101)
  %103 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %104 = load i32, i32* @ET_MAC_CFG1, align 4
  %105 = call i32 @CSR_WRITE_4(%struct.et_softc* %103, i32 %104, i32 0)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @ET_FRAMELEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
