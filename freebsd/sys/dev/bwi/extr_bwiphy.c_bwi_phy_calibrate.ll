; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_calibrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.bwi_phy }
%struct.bwi_phy = type { i32, i64, i32 }

@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_PHY_F_CALIBRATED = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_phy_calibrate(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %6 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %5, i32 0, i32 1
  store %struct.bwi_phy* %6, %struct.bwi_phy** %4, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BWI_MAC_STATUS, align 4
  %11 = call i32 @CSR_READ_4(i32 %9, i32 %10)
  %12 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %13 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BWI_PHY_F_CALIBRATED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %21 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %27 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %32 = call i32 @bwi_mac_reset(%struct.bwi_mac* %31, i32 0)
  %33 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %34 = call i32 @bwi_phy_init_11g(%struct.bwi_mac* %33)
  %35 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %36 = call i32 @bwi_mac_reset(%struct.bwi_mac* %35, i32 1)
  br label %37

37:                                               ; preds = %30, %25, %19
  %38 = load i32, i32* @BWI_PHY_F_CALIBRATED, align 4
  %39 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %40 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @CSR_READ_4(i32, i32) #1

declare dso_local i32 @bwi_mac_reset(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_phy_init_11g(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
