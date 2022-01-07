; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@ATPHY_SCR = common dso_local global i32 0, align 4
@ATPHY_SCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@ATPHY_SCR_MAC_PDOWN = common dso_local global i32 0, align 4
@ATPHY_SCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@ATPHY_SCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @atphy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atphy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.ifmedia_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %10, align 8
  store %struct.ifmedia_entry* %11, %struct.ifmedia_entry** %3, align 8
  %12 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %13 = call i32 @PHY_WRITE(%struct.mii_softc* %12, i32 29, i32 41)
  %14 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %15 = call i32 @PHY_WRITE(%struct.mii_softc* %14, i32 30, i32 0)
  %16 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %17 = load i32, i32* @ATPHY_SCR, align 4
  %18 = call i32 @PHY_READ(%struct.mii_softc* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @ATPHY_SCR_AUTO_X_MODE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @ATPHY_SCR_MAC_PDOWN, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @ATPHY_SCR_ASSERT_CRS_ON_TX, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @ATPHY_SCR_POLARITY_REVERSAL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %33 = load i32, i32* @ATPHY_SCR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @PHY_WRITE(%struct.mii_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %37 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %38 = icmp eq %struct.ifmedia_entry* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @IFM_AUTO, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %43 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %47 = call i32 @atphy_setmedia(%struct.mii_softc* %36, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %61, %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 1000
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = call i32 @DELAY(i32 1)
  %53 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %54 = load i32, i32* @MII_BMCR, align 4
  %55 = call i32 @PHY_READ(%struct.mii_softc* %53, i32 %54)
  %56 = load i32, i32* @BMCR_RESET, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %64

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %48

64:                                               ; preds = %59, %48
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @atphy_setmedia(%struct.mii_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
