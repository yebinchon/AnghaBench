; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64 }

@BWN_BAND_5G = common dso_local global i64 0, align 8
@BWN_NPHY_IQFLIP = common dso_local global i32 0, align 4
@BWN_NPHY_IQFLIP_ADC1 = common dso_local global i32 0, align 4
@BWN_NPHY_IQFLIP_ADC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_nphy_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_workarounds(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_phy*, align 8
  %5 = alloca %struct.bwn_phy_n*, align 8
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  store %struct.bwn_phy* %8, %struct.bwn_phy** %4, align 8
  %9 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %9, i32 0, i32 1
  %11 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  store %struct.bwn_phy_n* %11, %struct.bwn_phy_n** %5, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = call i64 @bwn_current_band(%struct.bwn_mac* %12)
  %14 = load i64, i64* @BWN_BAND_5G, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %18 = call i32 @bwn_nphy_classifier(%struct.bwn_mac* %17, i32 1, i32 0)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %21 = call i32 @bwn_nphy_classifier(%struct.bwn_mac* %20, i32 1, i32 1)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %24 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %32 = load i32, i32* @BWN_NPHY_IQFLIP, align 4
  %33 = load i32, i32* @BWN_NPHY_IQFLIP_ADC1, align 4
  %34 = load i32, i32* @BWN_NPHY_IQFLIP_ADC2, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %31, i32 %32, i32 %35)
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %38 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 7
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %44 = call i32 @bwn_nphy_workarounds_rev7plus(%struct.bwn_mac* %43)
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %30
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %53 = call i32 @bwn_nphy_workarounds_rev3plus(%struct.bwn_mac* %52)
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %56 = call i32 @bwn_nphy_workarounds_rev1_2(%struct.bwn_mac* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %72

63:                                               ; preds = %58
  %64 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %65 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %70 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %63
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_classifier(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_workarounds_rev7plus(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_workarounds_rev3plus(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_workarounds_rev1_2(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
