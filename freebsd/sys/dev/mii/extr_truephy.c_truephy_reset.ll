; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_truephy.c_truephy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_truephy.c_truephy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.truephy_dsp = type { i32, i32 }
%struct.mii_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MII_MODEL_AGERE_ET1011 = common dso_local global i64 0, align 8
@MII_PHYIDR1 = common dso_local global i32 0, align 4
@MII_PHYIDR2 = common dso_local global i32 0, align 4
@TRUEPHY_CTRL = common dso_local global i32 0, align 4
@TRUEPHY_CTRL_DIAG = common dso_local global i32 0, align 4
@TRUEPHY_CTRL_RSV1 = common dso_local global i32 0, align 4
@TRUEPHY_INDEX = common dso_local global i32 0, align 4
@TRUEPHY_INDEX_MAGIC = common dso_local global i32 0, align 4
@TRUEPHY_DATA = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@BMCR_S1000 = common dso_local global i32 0, align 4
@TRUEPHY_CTRL_RSV0 = common dso_local global i32 0, align 4
@truephy_dspcode = common dso_local global %struct.truephy_dsp* null, align 8
@TRUEPHY_CONF = common dso_local global i32 0, align 4
@TRUEPHY_CONF_TXFIFO_MASK = common dso_local global i32 0, align 4
@TRUEPHY_CONF_TXFIFO_24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @truephy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truephy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.truephy_dsp*, align 8
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MII_MODEL_AGERE_ET1011, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %13 = call i32 @mii_phy_reset(%struct.mii_softc* %12)
  br label %149

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %45, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @MII_PHYIDR1, align 4
  %21 = call i32 @PHY_READ(%struct.mii_softc* %19, i32 %20)
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = load i32, i32* @MII_PHYIDR2, align 4
  %24 = call i32 @PHY_READ(%struct.mii_softc* %22, i32 %23)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = load i32, i32* @TRUEPHY_CTRL, align 4
  %27 = call i32 @PHY_READ(%struct.mii_softc* %25, i32 %26)
  %28 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %29 = load i32, i32* @TRUEPHY_CTRL, align 4
  %30 = load i32, i32* @TRUEPHY_CTRL_DIAG, align 4
  %31 = load i32, i32* @TRUEPHY_CTRL_RSV1, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @PHY_WRITE(%struct.mii_softc* %28, i32 %29, i32 %32)
  %34 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %35 = load i32, i32* @TRUEPHY_INDEX, align 4
  %36 = load i32, i32* @TRUEPHY_INDEX_MAGIC, align 4
  %37 = call i32 @PHY_WRITE(%struct.mii_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %39 = load i32, i32* @TRUEPHY_DATA, align 4
  %40 = call i32 @PHY_READ(%struct.mii_softc* %38, i32 %39)
  %41 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %42 = load i32, i32* @TRUEPHY_CTRL, align 4
  %43 = load i32, i32* @TRUEPHY_CTRL_RSV1, align 4
  %44 = call i32 @PHY_WRITE(%struct.mii_softc* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %18
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %50 = load i32, i32* @MII_BMCR, align 4
  %51 = call i32 @PHY_READ(%struct.mii_softc* %49, i32 %50)
  %52 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %53 = load i32, i32* @TRUEPHY_CTRL, align 4
  %54 = call i32 @PHY_READ(%struct.mii_softc* %52, i32 %53)
  %55 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %56 = load i32, i32* @MII_BMCR, align 4
  %57 = load i32, i32* @BMCR_AUTOEN, align 4
  %58 = load i32, i32* @BMCR_PDOWN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @BMCR_S1000, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @PHY_WRITE(%struct.mii_softc* %55, i32 %56, i32 %61)
  %63 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %64 = load i32, i32* @TRUEPHY_CTRL, align 4
  %65 = load i32, i32* @TRUEPHY_CTRL_DIAG, align 4
  %66 = load i32, i32* @TRUEPHY_CTRL_RSV1, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @TRUEPHY_CTRL_RSV0, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @PHY_WRITE(%struct.mii_softc* %63, i32 %64, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %102, %48
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.truephy_dsp*, %struct.truephy_dsp** @truephy_dspcode, align 8
  %74 = call i32 @nitems(%struct.truephy_dsp* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %71
  %77 = load %struct.truephy_dsp*, %struct.truephy_dsp** @truephy_dspcode, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.truephy_dsp, %struct.truephy_dsp* %77, i64 %79
  store %struct.truephy_dsp* %80, %struct.truephy_dsp** %4, align 8
  %81 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %82 = load i32, i32* @TRUEPHY_INDEX, align 4
  %83 = load %struct.truephy_dsp*, %struct.truephy_dsp** %4, align 8
  %84 = getelementptr inbounds %struct.truephy_dsp, %struct.truephy_dsp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PHY_WRITE(%struct.mii_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %88 = load i32, i32* @TRUEPHY_DATA, align 4
  %89 = load %struct.truephy_dsp*, %struct.truephy_dsp** %4, align 8
  %90 = getelementptr inbounds %struct.truephy_dsp, %struct.truephy_dsp* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PHY_WRITE(%struct.mii_softc* %87, i32 %88, i32 %91)
  %93 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %94 = load i32, i32* @TRUEPHY_INDEX, align 4
  %95 = load %struct.truephy_dsp*, %struct.truephy_dsp** %4, align 8
  %96 = getelementptr inbounds %struct.truephy_dsp, %struct.truephy_dsp* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PHY_WRITE(%struct.mii_softc* %93, i32 %94, i32 %97)
  %99 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %100 = load i32, i32* @TRUEPHY_DATA, align 4
  %101 = call i32 @PHY_READ(%struct.mii_softc* %99, i32 %100)
  br label %102

102:                                              ; preds = %76
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %71

105:                                              ; preds = %71
  %106 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %107 = load i32, i32* @MII_BMCR, align 4
  %108 = call i32 @PHY_READ(%struct.mii_softc* %106, i32 %107)
  %109 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %110 = load i32, i32* @TRUEPHY_CTRL, align 4
  %111 = call i32 @PHY_READ(%struct.mii_softc* %109, i32 %110)
  %112 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %113 = load i32, i32* @MII_BMCR, align 4
  %114 = load i32, i32* @BMCR_AUTOEN, align 4
  %115 = load i32, i32* @BMCR_S1000, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @PHY_WRITE(%struct.mii_softc* %112, i32 %113, i32 %116)
  %118 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %119 = load i32, i32* @TRUEPHY_CTRL, align 4
  %120 = load i32, i32* @TRUEPHY_CTRL_RSV1, align 4
  %121 = call i32 @PHY_WRITE(%struct.mii_softc* %118, i32 %119, i32 %120)
  %122 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %123 = call i32 @mii_phy_reset(%struct.mii_softc* %122)
  %124 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %125 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @if_getmtu(i32 %128)
  %130 = icmp sgt i32 %129, 2048
  %131 = zext i1 %130 to i32
  %132 = call i64 @TRUEPHY_FRAMELEN(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %105
  %135 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %136 = load i32, i32* @TRUEPHY_CONF, align 4
  %137 = call i32 @PHY_READ(%struct.mii_softc* %135, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @TRUEPHY_CONF_TXFIFO_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* @TRUEPHY_CONF_TXFIFO_24, align 4
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %146 = load i32, i32* @TRUEPHY_CONF, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @PHY_WRITE(%struct.mii_softc* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %11, %134, %105
  ret void
}

declare dso_local i32 @mii_phy_reset(%struct.mii_softc*) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @nitems(%struct.truephy_dsp*) #1

declare dso_local i64 @TRUEPHY_FRAMELEN(i32) #1

declare dso_local i32 @if_getmtu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
