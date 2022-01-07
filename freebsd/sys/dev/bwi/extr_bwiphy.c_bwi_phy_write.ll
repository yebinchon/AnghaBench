; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32 }

@BWI_PHY_CTRL = common dso_local global i32 0, align 4
@BWI_PHY_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_phy_write(%struct.bwi_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_softc*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 0
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %7, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %12 = load i32, i32* @BWI_PHY_CTRL, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %7, align 8
  %16 = load i32, i32* @BWI_PHY_DATA, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
