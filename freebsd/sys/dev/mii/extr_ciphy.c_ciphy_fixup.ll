; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ciphy.c_ciphy_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ciphy.c_ciphy_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@CIPHY_MII_PHYIDR2 = common dso_local global i32 0, align 4
@CIPHY_MII_AUXCSR = common dso_local global i32 0, align 4
@CIPHY_AUXCSR_SPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nfe\00", align 1
@CIPHY_MII_ECTL1 = common dso_local global i32 0, align 4
@CIPHY_ECTL1_IOVOL = common dso_local global i32 0, align 4
@CIPHY_ECTL1_INTSEL = common dso_local global i32 0, align 4
@CIPHY_IOVOL_2500MV = common dso_local global i32 0, align 4
@CIPHY_INTSEL_RGMII = common dso_local global i32 0, align 4
@CIPHY_AUXCSR_MDPPS = common dso_local global i32 0, align 4
@CIPHY_MII_10BTCSR = common dso_local global i32 0, align 4
@CIPHY_10BTCSR_ECHO = common dso_local global i32 0, align 4
@CIPHY_SPEED10 = common dso_local global i32 0, align 4
@CIPHY_SPEED100 = common dso_local global i32 0, align 4
@CIPHY_AUXCSR_FDX = common dso_local global i32 0, align 4
@CIPHY_MII_LED = common dso_local global i32 0, align 4
@CIPHY_LED_LINKACTBLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown CICADA PHY model %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @ciphy_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciphy_fixup(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = load i32, i32* @CIPHY_MII_PHYIDR2, align 4
  %9 = call i32 @PHY_READ(%struct.mii_softc* %7, i32 %8)
  %10 = call i32 @MII_MODEL(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %12 = load i32, i32* @CIPHY_MII_AUXCSR, align 4
  %13 = call i32 @PHY_READ(%struct.mii_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CIPHY_AUXCSR_SPEED, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %18 = call i64 @mii_phy_mac_match(%struct.mii_softc* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %1
  %21 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %22 = load i32, i32* @CIPHY_MII_ECTL1, align 4
  %23 = call i32 @PHY_READ(%struct.mii_softc* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @CIPHY_ECTL1_IOVOL, align 4
  %25 = load i32, i32* @CIPHY_ECTL1_INTSEL, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @CIPHY_IOVOL_2500MV, align 4
  %31 = load i32, i32* @CIPHY_INTSEL_RGMII, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %36 = load i32, i32* @CIPHY_MII_ECTL1, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @PHY_WRITE(%struct.mii_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %40 = load i32, i32* @CIPHY_MII_AUXCSR, align 4
  %41 = call i32 @PHY_READ(%struct.mii_softc* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @CIPHY_AUXCSR_MDPPS, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %46 = load i32, i32* @CIPHY_MII_AUXCSR, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @PHY_WRITE(%struct.mii_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %50 = load i32, i32* @CIPHY_MII_10BTCSR, align 4
  %51 = call i32 @PHY_READ(%struct.mii_softc* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @CIPHY_10BTCSR_ECHO, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %56 = load i32, i32* @CIPHY_MII_10BTCSR, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @PHY_WRITE(%struct.mii_softc* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %20, %1
  %60 = load i32, i32* %3, align 4
  switch i32 %60, label %118 [
    i32 133, label %61
    i32 136, label %61
    i32 135, label %93
    i32 134, label %93
    i32 131, label %117
    i32 130, label %117
    i32 132, label %117
    i32 129, label %117
    i32 128, label %117
  ]

61:                                               ; preds = %59, %59
  %62 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %63 = load i32, i32* @CIPHY_MII_AUXCSR, align 4
  %64 = load i32, i32* @CIPHY_AUXCSR_MDPPS, align 4
  %65 = call i32 @PHY_SETBIT(%struct.mii_softc* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @CIPHY_SPEED10, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @CIPHY_SPEED100, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69, %61
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @CIPHY_AUXCSR_FDX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %80 = load i32, i32* @CIPHY_MII_10BTCSR, align 4
  %81 = load i32, i32* @CIPHY_10BTCSR_ECHO, align 4
  %82 = call i32 @PHY_SETBIT(%struct.mii_softc* %79, i32 %80, i32 %81)
  br label %88

83:                                               ; preds = %73, %69
  %84 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %85 = load i32, i32* @CIPHY_MII_10BTCSR, align 4
  %86 = load i32, i32* @CIPHY_10BTCSR_ECHO, align 4
  %87 = call i32 @PHY_CLRBIT(%struct.mii_softc* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %90 = load i32, i32* @CIPHY_MII_LED, align 4
  %91 = load i32, i32* @CIPHY_LED_LINKACTBLINK, align 4
  %92 = call i32 @PHY_SETBIT(%struct.mii_softc* %89, i32 %90, i32 %91)
  br label %124

93:                                               ; preds = %59, %59
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @CIPHY_SPEED10, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @CIPHY_SPEED100, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97, %93
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @CIPHY_AUXCSR_FDX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %108 = load i32, i32* @CIPHY_MII_10BTCSR, align 4
  %109 = load i32, i32* @CIPHY_10BTCSR_ECHO, align 4
  %110 = call i32 @PHY_SETBIT(%struct.mii_softc* %107, i32 %108, i32 %109)
  br label %116

111:                                              ; preds = %101, %97
  %112 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %113 = load i32, i32* @CIPHY_MII_10BTCSR, align 4
  %114 = load i32, i32* @CIPHY_10BTCSR_ECHO, align 4
  %115 = call i32 @PHY_CLRBIT(%struct.mii_softc* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %124

117:                                              ; preds = %59, %59, %59, %59, %59
  br label %124

118:                                              ; preds = %59
  %119 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %120 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @device_printf(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %117, %116, %88
  ret void
}

declare dso_local i32 @MII_MODEL(i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i64 @mii_phy_mac_match(%struct.mii_softc*, i8*) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_SETBIT(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_CLRBIT(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
