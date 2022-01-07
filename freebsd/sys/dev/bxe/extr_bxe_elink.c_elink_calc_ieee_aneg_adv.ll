; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_calc_ieee_aneg_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_calc_ieee_aneg_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_FULL_DUPLEX = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ieee_fc = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, i32*)* @elink_calc_ieee_aneg_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_calc_ieee_aneg_adv(%struct.elink_phy* %0, %struct.elink_params* %1, i32* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %7, align 8
  %11 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_FULL_DUPLEX, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %14 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %43 [
    i32 132, label %16
    i32 128, label %32
    i32 129, label %37
    i32 131, label %37
    i32 130, label %42
  ]

16:                                               ; preds = %3
  %17 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %18 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %30 [
    i32 131, label %20
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %16, %16
  %21 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %31

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %25, %20
  br label %48

32:                                               ; preds = %3
  %33 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %48

37:                                               ; preds = %3, %3
  %38 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %48

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %3, %42
  %44 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_NONE, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %37, %32, %31
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
