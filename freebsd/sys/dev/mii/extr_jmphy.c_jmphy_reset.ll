; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@JMPHY_TMCTL = common dso_local global i32 0, align 4
@JMPHY_TMCTL_SLEEP_ENB = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@MIIF_PHYPRIV0 = common dso_local global i32 0, align 4
@MII_100T2CR = common dso_local global i32 0, align 4
@GTCR_TEST_MASK = common dso_local global i32 0, align 4
@JMPHY_SPEC_ADDR = common dso_local global i32 0, align 4
@JMPHY_SPEC_ADDR_READ = common dso_local global i32 0, align 4
@JMPHY_EXT_COMM_2 = common dso_local global i32 0, align 4
@JMPHY_SPEC_DATA = common dso_local global i32 0, align 4
@JMPHY_SPEC_ADDR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @jmphy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmphy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = load i32, i32* @JMPHY_TMCTL, align 4
  %8 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %9 = load i32, i32* @JMPHY_TMCTL, align 4
  %10 = call i32 @PHY_READ(%struct.mii_softc* %8, i32 %9)
  %11 = load i32, i32* @JMPHY_TMCTL_SLEEP_ENB, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @PHY_WRITE(%struct.mii_softc* %6, i32 %7, i32 %13)
  %15 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %16 = load i32, i32* @MII_BMCR, align 4
  %17 = load i32, i32* @BMCR_RESET, align 4
  %18 = load i32, i32* @BMCR_AUTOEN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @PHY_WRITE(%struct.mii_softc* %15, i32 %16, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 1000
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = call i32 @DELAY(i32 1)
  %26 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %27 = load i32, i32* @MII_BMCR, align 4
  %28 = call i32 @PHY_READ(%struct.mii_softc* %26, i32 %27)
  %29 = load i32, i32* @BMCR_RESET, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %21

37:                                               ; preds = %32, %21
  %38 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MIIF_PHYPRIV0, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %117

44:                                               ; preds = %37
  %45 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %46 = load i32, i32* @MII_100T2CR, align 4
  %47 = call i32 @PHY_READ(%struct.mii_softc* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @GTCR_TEST_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, 8192
  store i32 %53, i32* %3, align 4
  %54 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %55 = load i32, i32* @MII_100T2CR, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @PHY_WRITE(%struct.mii_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %59 = load i32, i32* @JMPHY_SPEC_ADDR, align 4
  %60 = load i32, i32* @JMPHY_SPEC_ADDR_READ, align 4
  %61 = load i32, i32* @JMPHY_EXT_COMM_2, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @PHY_WRITE(%struct.mii_softc* %58, i32 %59, i32 %62)
  %64 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %65 = load i32, i32* @JMPHY_SPEC_DATA, align 4
  %66 = call i32 @PHY_READ(%struct.mii_softc* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, -3
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, 17
  store i32 %70, i32* %4, align 4
  %71 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %72 = load i32, i32* @JMPHY_SPEC_DATA, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @PHY_WRITE(%struct.mii_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %76 = load i32, i32* @JMPHY_SPEC_ADDR, align 4
  %77 = load i32, i32* @JMPHY_SPEC_ADDR_WRITE, align 4
  %78 = load i32, i32* @JMPHY_EXT_COMM_2, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @PHY_WRITE(%struct.mii_softc* %75, i32 %76, i32 %79)
  %81 = call i32 @DELAY(i32 20000)
  %82 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %83 = load i32, i32* @MII_100T2CR, align 4
  %84 = call i32 @PHY_READ(%struct.mii_softc* %82, i32 %83)
  %85 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %86 = load i32, i32* @JMPHY_SPEC_ADDR, align 4
  %87 = load i32, i32* @JMPHY_SPEC_ADDR_READ, align 4
  %88 = load i32, i32* @JMPHY_EXT_COMM_2, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @PHY_WRITE(%struct.mii_softc* %85, i32 %86, i32 %89)
  %91 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %92 = load i32, i32* @JMPHY_SPEC_DATA, align 4
  %93 = call i32 @PHY_READ(%struct.mii_softc* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, -20
  store i32 %95, i32* %4, align 4
  %96 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %97 = load i32, i32* @JMPHY_SPEC_DATA, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @PHY_WRITE(%struct.mii_softc* %96, i32 %97, i32 %98)
  %100 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %101 = load i32, i32* @JMPHY_SPEC_ADDR, align 4
  %102 = load i32, i32* @JMPHY_SPEC_ADDR_WRITE, align 4
  %103 = load i32, i32* @JMPHY_EXT_COMM_2, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @PHY_WRITE(%struct.mii_softc* %100, i32 %101, i32 %104)
  %106 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %107 = load i32, i32* @MII_100T2CR, align 4
  %108 = call i32 @PHY_READ(%struct.mii_softc* %106, i32 %107)
  %109 = load i32, i32* @GTCR_TEST_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %114 = load i32, i32* @MII_100T2CR, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @PHY_WRITE(%struct.mii_softc* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %44, %37
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
