; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smscphy.c_smscphy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smscphy.c_smscphy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }

@ANAR_CSMA = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@ANAR_FC = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*, i32)* @smscphy_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smscphy_auto(%struct.mii_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @BMSR_MEDIA_TO_ANAR(i32 %8)
  %10 = load i32, i32* @ANAR_CSMA, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IFM_FLOW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16, %2
  %24 = load i32, i32* @ANAR_FC, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %29 = load i32, i32* @MII_ANAR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @PHY_WRITE(%struct.mii_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %33 = load i32, i32* @MII_ANAR, align 4
  %34 = call i32 @PHY_READ(%struct.mii_softc* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %36 = load i32, i32* @MII_BMCR, align 4
  %37 = load i32, i32* @BMCR_AUTOEN, align 4
  %38 = load i32, i32* @BMCR_STARTNEG, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @PHY_WRITE(%struct.mii_softc* %35, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @BMSR_MEDIA_TO_ANAR(i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
