; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_txgain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_txgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_txgain = type { i32, i32, i32, i32 }

@BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_txgain*)* @bwn_phy_lp_set_txgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_set_txgain(%struct.bwn_mac* %0, %struct.bwn_txgain* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_txgain*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store %struct.bwn_txgain* %1, %struct.bwn_txgain** %4, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = load i32, i32* @BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %14 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 7
  %18 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %19 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 3
  %22 = or i32 %17, %21
  %23 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %24 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %12, i32 %13, i32 63488, i32 %26)
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %30 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bwn_phy_lp_set_txgain_dac(%struct.bwn_mac* %28, i32 %31)
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %34 = call i32 @bwn_phy_lp_set_txgain_override(%struct.bwn_mac* %33)
  br label %85

35:                                               ; preds = %2
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %37 = call i32 @bwn_phy_lp_get_pa_gain(%struct.bwn_mac* %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %39 = load i32, i32* @BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %40 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %41 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %45 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  %48 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %38, i32 %39, i32 %47)
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %50 = call i32 @BWN_PHY_OFDM(i32 251)
  %51 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %52 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 6
  %56 = or i32 %53, %55
  %57 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %49, i32 %50, i32 32768, i32 %56)
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %59 = call i32 @BWN_PHY_OFDM(i32 252)
  %60 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %61 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %65 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %58, i32 %59, i32 %67)
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %70 = call i32 @BWN_PHY_OFDM(i32 253)
  %71 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %72 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %73, %75
  %77 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %69, i32 %70, i32 32768, i32 %76)
  %78 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %79 = load %struct.bwn_txgain*, %struct.bwn_txgain** %4, align 8
  %80 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bwn_phy_lp_set_txgain_dac(%struct.bwn_mac* %78, i32 %81)
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %84 = call i32 @bwn_phy_lp_set_txgain_override(%struct.bwn_mac* %83)
  br label %85

85:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txgain_dac(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txgain_override(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_get_pa_gain(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_OFDM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
