; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_classifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@BWN_NPHY_CLASSCTL = common dso_local global i32 0, align 4
@BWN_NPHY_CLASSCTL_CCKEN = common dso_local global i32 0, align 4
@BWN_NPHY_CLASSCTL_OFDMEN = common dso_local global i32 0, align 4
@BWN_NPHY_CLASSCTL_WAITEDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i32)* @bwn_nphy_classifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_classifier(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwn_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %10, align 8
  store %struct.bwn_softc* %11, %struct.bwn_softc** %7, align 8
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %13 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bhnd_get_hwrev(i32 %14)
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %19 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %22 = load i32, i32* @BWN_NPHY_CLASSCTL, align 4
  %23 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @BWN_NPHY_CLASSCTL_CCKEN, align 4
  %25 = load i32, i32* @BWN_NPHY_CLASSCTL_OFDMEN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BWN_NPHY_CLASSCTL_WAITEDEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %41 = load i32, i32* @BWN_NPHY_CLASSCTL, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %40, i32 %41, i32 65528, i32 %42)
  %44 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %45 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bhnd_get_hwrev(i32 %46)
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %52

49:                                               ; preds = %20
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %51 = call i32 @bwn_mac_enable(%struct.bwn_mac* %50)
  br label %52

52:                                               ; preds = %49, %20
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_mac_enable(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
