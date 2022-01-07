; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tlphy.c_tlphy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tlphy.c_tlphy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlphy_softc = type { i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlphy_softc*)* @tlphy_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlphy_auto(%struct.tlphy_softc* %0) #0 {
  %2 = alloca %struct.tlphy_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.tlphy_softc* %0, %struct.tlphy_softc** %2, align 8
  %4 = load %struct.tlphy_softc*, %struct.tlphy_softc** %2, align 8
  %5 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %4, i32 0, i32 1
  %6 = call i32 @mii_phy_auto(i32* %5)
  store i32 %6, i32* %3, align 4
  switch i32 %6, label %15 [
    i32 129, label %7
    i32 128, label %12
  ]

7:                                                ; preds = %1
  %8 = load %struct.tlphy_softc*, %struct.tlphy_softc** %2, align 8
  %9 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %8, i32 0, i32 1
  %10 = load i32, i32* @MII_BMCR, align 4
  %11 = call i32 @PHY_WRITE(i32* %9, i32 %10, i32 0)
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.tlphy_softc*, %struct.tlphy_softc** %2, align 8
  %14 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.tlphy_softc*, %struct.tlphy_softc** %2, align 8
  %17 = call i32 @tlphy_acomp(%struct.tlphy_softc* %16)
  br label %18

18:                                               ; preds = %15, %12, %7
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @mii_phy_auto(i32*) #1

declare dso_local i32 @PHY_WRITE(i32*, i32, i32) #1

declare dso_local i32 @tlphy_acomp(%struct.tlphy_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
