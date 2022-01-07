; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_stop_playback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_stop_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i32, i64 }

@BWN_NPHY_SAMP_STAT = common dso_local global i32 0, align 4
@BWN_NPHY_SAMP_CMD = common dso_local global i32 0, align 4
@BWN_NPHY_SAMP_CMD_STOP = common dso_local global i32 0, align 4
@BWN_NPHY_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_stop_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_stop_playback(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  store %struct.bwn_phy* %7, %struct.bwn_phy** %3, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %9, i32 0, i32 1
  %11 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  store %struct.bwn_phy_n* %11, %struct.bwn_phy_n** %4, align 8
  %12 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %13 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %17, i32 1)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = load i32, i32* @BWN_NPHY_SAMP_STAT, align 4
  %22 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = load i32, i32* @BWN_NPHY_SAMP_CMD, align 4
  %29 = load i32, i32* @BWN_NPHY_SAMP_CMD_STOP, align 4
  %30 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %27, i32 %28, i32 %29)
  br label %40

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %37 = load i32, i32* @BWN_NPHY_IQLOCAL_CMDGCTL, align 4
  %38 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %36, i32 %37, i32 32767)
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %42 = load i32, i32* @BWN_NPHY_SAMP_CMD, align 4
  %43 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %41, i32 %42, i32 -5)
  %44 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %45 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, -2147483648
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %51 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 65535
  store i32 %53, i32* %5, align 4
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %55 = call i32 @BWN_NTAB16(i32 15, i32 87)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @bwn_ntab_write(%struct.bwn_mac* %54, i32 %55, i32 %56)
  %58 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %59 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %49, %40
  %61 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %62 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 7
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %67 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %72 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 19
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %77 = call i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac* %76, i32 128, i32 0, i32 0, i32 1, i32 1)
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %80 = call i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac* %79, i32 128, i32 0, i32 0, i32 1, i32 1)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %83 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %65, %60
  %85 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %86 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %84
  ret void
}

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
