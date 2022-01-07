; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_icsphy.c_icsphy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_icsphy.c_icsphy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@MII_ICSPHY_ECR2 = common dso_local global i32 0, align 4
@ECR2_100AUTOPWRDN = common dso_local global i32 0, align 4
@ECR2_10AUTOPWRDN = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_S100 = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@BMCR_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @icsphy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icsphy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %3 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %4 = call i32 @mii_phy_reset(%struct.mii_softc* %3)
  %5 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %20 [
    i32 130, label %8
    i32 128, label %8
    i32 129, label %13
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %10 = load i32, i32* @MII_ICSPHY_ECR2, align 4
  %11 = load i32, i32* @ECR2_100AUTOPWRDN, align 4
  %12 = call i32 @PHY_WRITE(%struct.mii_softc* %9, i32 %10, i32 %11)
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %15 = load i32, i32* @MII_ICSPHY_ECR2, align 4
  %16 = load i32, i32* @ECR2_10AUTOPWRDN, align 4
  %17 = load i32, i32* @ECR2_100AUTOPWRDN, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @PHY_WRITE(%struct.mii_softc* %14, i32 %15, i32 %18)
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %13, %8
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = load i32, i32* @BMCR_S100, align 4
  %25 = load i32, i32* @BMCR_STARTNEG, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BMCR_FDX, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @PHY_WRITE(%struct.mii_softc* %22, i32 %23, i32 %28)
  ret void
}

declare dso_local i32 @mii_phy_reset(%struct.mii_softc*) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
