; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_power_ctl_idle_tssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_power_ctl_idle_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@N_RSSI_TSSI_2G = common dso_local global i32 0, align 4
@N_RSSI_W1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_power_ctl_idle_tssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_power_ctl_idle_tssi(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  store %struct.bwn_phy* %8, %struct.bwn_phy** %3, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %10, i32 0, i32 1
  %12 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %11, align 8
  store %struct.bwn_phy_n* %12, %struct.bwn_phy_n** %4, align 8
  %13 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %15 = call i64 @bwn_is_chan_passive(%struct.bwn_mac* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %153

18:                                               ; preds = %1
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = call i32 @bwn_nphy_ipa_internal_tssi_setup(%struct.bwn_mac* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %27 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 19
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %32 = call i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac* %31, i32 4096, i32 0, i32 3, i32 0, i32 0)
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %35 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 7
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %40 = call i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac* %39, i32 4096, i32 0, i32 3, i32 0, i32 0)
  br label %50

41:                                               ; preds = %33
  %42 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %43 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = call i32 @bwn_nphy_rf_ctl_override(%struct.bwn_mac* %47, i32 8192, i32 0, i32 3, i32 0)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = call i32 @bwn_nphy_stop_playback(%struct.bwn_mac* %52)
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %55 = call i32 @bwn_nphy_tx_tone(%struct.bwn_mac* %54, i32 4000, i32 0, i32 0, i32 0, i32 0)
  %56 = call i32 @DELAY(i32 20)
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %58 = load i32, i32* @N_RSSI_TSSI_2G, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %60 = call i32 @bwn_nphy_poll_rssi(%struct.bwn_mac* %57, i32 %58, i32* %59, i32 1)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %62 = call i32 @bwn_nphy_stop_playback(%struct.bwn_mac* %61)
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %64 = load i32, i32* @N_RSSI_W1, align 4
  %65 = call i32 @bwn_nphy_rssi_select(%struct.bwn_mac* %63, i32 0, i32 %64)
  %66 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %67 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 19
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %72 = call i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac* %71, i32 4096, i32 0, i32 3, i32 1, i32 0)
  br label %91

73:                                               ; preds = %51
  %74 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %75 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 7
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %80 = call i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac* %79, i32 4096, i32 0, i32 3, i32 1, i32 0)
  br label %90

81:                                               ; preds = %73
  %82 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %83 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 3
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %88 = call i32 @bwn_nphy_rf_ctl_override(%struct.bwn_mac* %87, i32 8192, i32 0, i32 3, i32 1)
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %70
  %92 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %93 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %94, 19
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %153

97:                                               ; preds = %91
  %98 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %99 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 3
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = ashr i32 %103, 24
  %105 = and i32 %104, 255
  %106 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %107 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 255
  %114 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %115 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 4
  br label %135

119:                                              ; preds = %97
  %120 = load i32, i32* %5, align 4
  %121 = ashr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %124 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, 255
  %130 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %131 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 4
  br label %135

135:                                              ; preds = %119, %102
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = ashr i32 %137, 24
  %139 = and i32 %138, 255
  %140 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %141 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* %5, align 4
  %146 = ashr i32 %145, 8
  %147 = and i32 %146, 255
  %148 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %149 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i32 %147, i32* %152, align 4
  br label %153

153:                                              ; preds = %136, %96, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @bwn_is_chan_passive(%struct.bwn_mac*) #2

declare dso_local i64 @bwn_nphy_ipa(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_ipa_internal_tssi_setup(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_rf_ctl_override(%struct.bwn_mac*, i32, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_stop_playback(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_tx_tone(%struct.bwn_mac*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @bwn_nphy_poll_rssi(%struct.bwn_mac*, i32, i32*, i32) #2

declare dso_local i32 @bwn_nphy_rssi_select(%struct.bwn_mac*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
