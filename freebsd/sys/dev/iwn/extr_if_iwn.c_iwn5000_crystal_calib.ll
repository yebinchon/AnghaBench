; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_crystal_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_crystal_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32 }
%struct.iwn5000_phy_calib_crystal = type { i32, i32, i32*, i32 }

@IWN5000_PHY_CALIB_CRYSTAL = common dso_local global i32 0, align 4
@IWN_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sending crystal calibration %d, %d\0A\00", align 1
@IWN_CMD_PHY_CALIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*)* @iwn5000_crystal_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn5000_crystal_calib(%struct.iwn_softc* %0) #0 {
  %2 = alloca %struct.iwn_softc*, align 8
  %3 = alloca %struct.iwn5000_phy_calib_crystal, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %2, align 8
  %4 = call i32 @memset(%struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 24)
  %5 = load i32, i32* @IWN5000_PHY_CALIB_CRYSTAL, align 4
  %6 = getelementptr inbounds %struct.iwn5000_phy_calib_crystal, %struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 3
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.iwn5000_phy_calib_crystal, %struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.iwn5000_phy_calib_crystal, %struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32toh(i32 %11)
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.iwn5000_phy_calib_crystal, %struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %18 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32toh(i32 %19)
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds %struct.iwn5000_phy_calib_crystal, %struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %27 = load i32, i32* @IWN_DEBUG_CALIBRATE, align 4
  %28 = getelementptr inbounds %struct.iwn5000_phy_calib_crystal, %struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.iwn5000_phy_calib_crystal, %struct.iwn5000_phy_calib_crystal* %3, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DPRINTF(%struct.iwn_softc* %26, i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %38 = load i32, i32* @IWN_CMD_PHY_CALIB, align 4
  %39 = call i32 @iwn_cmd(%struct.iwn_softc* %37, i32 %38, %struct.iwn5000_phy_calib_crystal* %3, i32 24, i32 0)
  ret i32 %39
}

declare dso_local i32 @memset(%struct.iwn5000_phy_calib_crystal*, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @DPRINTF(%struct.iwn_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @iwn_cmd(%struct.iwn_softc*, i32, %struct.iwn5000_phy_calib_crystal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
