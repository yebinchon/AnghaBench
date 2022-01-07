; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32, i32 }

@AGE_GPHY_CTRL = common dso_local global i32 0, align 4
@GPHY_CTRL_RST = common dso_local global i32 0, align 4
@GPHY_CTRL_CLR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@ATPHY_CDTC = common dso_local global i32 0, align 4
@ATPHY_CDTS = common dso_local global i32 0, align 4
@ATPHY_DBG_ADDR = common dso_local global i32 0, align 4
@ATPHY_DBG_DATA = common dso_local global i32 0, align 4
@PHY_CDTC_ENB = common dso_local global i32 0, align 4
@PHY_CDTC_POFF = common dso_local global i32 0, align 4
@PHY_CDTS_STAT_MASK = common dso_local global i32 0, align 4
@PHY_CDTS_STAT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_phy_reset(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %7 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %8 = load i32, i32* @AGE_GPHY_CTRL, align 4
  %9 = load i32, i32* @GPHY_CTRL_RST, align 4
  %10 = call i32 @CSR_WRITE_4(%struct.age_softc* %7, i32 %8, i32 %9)
  %11 = call i32 @DELAY(i32 2000)
  %12 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %13 = load i32, i32* @AGE_GPHY_CTRL, align 4
  %14 = load i32, i32* @GPHY_CTRL_CLR, align 4
  %15 = call i32 @CSR_WRITE_4(%struct.age_softc* %12, i32 %13, i32 %14)
  %16 = call i32 @DELAY(i32 2000)
  %17 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %18 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %21 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = load i32, i32* @BMCR_RESET, align 4
  %25 = call i32 @age_miibus_writereg(i32 %19, i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %76, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %79

29:                                               ; preds = %26
  %30 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %31 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %34 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %37, 1
  %39 = call i32 @age_miibus_writereg(i32 %32, i32 %35, i32 22, i32 %38)
  store i32 200, i32* %5, align 4
  br label %40

40:                                               ; preds = %57, %29
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = call i32 @DELAY(i32 1000)
  %45 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %46 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %49 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @age_miibus_readreg(i32 %47, i32 %50, i32 22)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %60

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  br label %40

60:                                               ; preds = %55, %40
  %61 = call i32 @DELAY(i32 1000)
  %62 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %63 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %66 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @age_miibus_readreg(i32 %64, i32 %67, i32 28)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, 768
  %71 = icmp ne i32 %70, 512
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %79

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %26

79:                                               ; preds = %72, %26
  %80 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %81 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %84 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MII_BMCR, align 4
  %87 = load i32, i32* @BMCR_RESET, align 4
  %88 = load i32, i32* @BMCR_AUTOEN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @BMCR_STARTNEG, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @age_miibus_writereg(i32 %82, i32 %85, i32 %86, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %79
  %96 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %97 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %100 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @age_miibus_writereg(i32 %98, i32 %101, i32 29, i32 0)
  %103 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %104 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %107 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @age_miibus_writereg(i32 %105, i32 %108, i32 30, i32 4686)
  %110 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %111 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %114 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @age_miibus_writereg(i32 %112, i32 %115, i32 29, i32 1)
  %117 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %118 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %121 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @age_miibus_readreg(i32 %119, i32 %122, i32 30)
  store i32 %123, i32* %3, align 4
  %124 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %125 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %128 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %3, align 4
  %131 = or i32 %130, 3
  %132 = call i32 @age_miibus_writereg(i32 %126, i32 %129, i32 30, i32 %131)
  %133 = call i32 @DELAY(i32 1500000)
  %134 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %135 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %138 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @age_miibus_writereg(i32 %136, i32 %139, i32 29, i32 0)
  %141 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %142 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %145 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @age_miibus_writereg(i32 %143, i32 %146, i32 30, i32 590)
  br label %148

148:                                              ; preds = %95, %79
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @age_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @age_miibus_readreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
