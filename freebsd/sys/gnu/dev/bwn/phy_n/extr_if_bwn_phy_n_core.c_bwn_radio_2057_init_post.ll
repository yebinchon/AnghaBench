; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_2057_init_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_radio_2057_init_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@R2057_XTALPUOVR_PINCTRL = common dso_local global i32 0, align 4
@R2057_RFPLL_MISC_CAL_RESETN = common dso_local global i32 0, align 4
@R2057_XTAL_CONFIG2 = common dso_local global i32 0, align 4
@R2057_RFPLL_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_radio_2057_init_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_radio_2057_init_post(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %3 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %4 = load i32, i32* @R2057_XTALPUOVR_PINCTRL, align 4
  %5 = call i32 @BWN_RF_SET(%struct.bwn_mac* %3, i32 %4, i32 1)
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = load i32, i32* @R2057_RFPLL_MISC_CAL_RESETN, align 4
  %8 = call i32 @BWN_RF_SET(%struct.bwn_mac* %6, i32 %7, i32 120)
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = load i32, i32* @R2057_XTAL_CONFIG2, align 4
  %11 = call i32 @BWN_RF_SET(%struct.bwn_mac* %9, i32 %10, i32 128)
  %12 = call i32 @DELAY(i32 2000)
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = load i32, i32* @R2057_RFPLL_MISC_CAL_RESETN, align 4
  %15 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %13, i32 %14, i32 -121)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = load i32, i32* @R2057_XTAL_CONFIG2, align 4
  %18 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %16, i32 %17, i32 -129)
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %26 = call i32 @bwn_radio_2057_rcal(%struct.bwn_mac* %25)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = call i32 @bwn_radio_2057_rccal(%struct.bwn_mac* %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %31 = load i32, i32* @R2057_RFPLL_MASTER, align 4
  %32 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %30, i32 %31, i32 -9)
  ret void
}

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_radio_2057_rcal(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_radio_2057_rccal(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
