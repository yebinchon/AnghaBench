; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_ksz9031_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_micphy.c_ksz9031_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@MII_KSZ9031_MMD_ACCESS_CTRL = common dso_local global i32 0, align 4
@MII_KSZ9031_MMD_ACCESS_DATA = common dso_local global i32 0, align 4
@MII_KSZ9031_MMD_DATA_NOINC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, i32, i32)* @ksz9031_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9031_read(%struct.mii_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %8 = load i32, i32* @MII_KSZ9031_MMD_ACCESS_CTRL, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @PHY_WRITE(%struct.mii_softc* %7, i32 %8, i32 %9)
  %11 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %12 = load i32, i32* @MII_KSZ9031_MMD_ACCESS_DATA, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @PHY_WRITE(%struct.mii_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %16 = load i32, i32* @MII_KSZ9031_MMD_ACCESS_CTRL, align 4
  %17 = load i32, i32* @MII_KSZ9031_MMD_DATA_NOINC, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @PHY_WRITE(%struct.mii_softc* %15, i32 %16, i32 %19)
  %21 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %22 = load i32, i32* @MII_KSZ9031_MMD_ACCESS_DATA, align 4
  %23 = call i32 @PHY_READ(%struct.mii_softc* %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
