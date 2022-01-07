; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_antenna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32 }

@BWN_ANTAUTO1 = common dso_local global i32 0, align 4
@BWN_HF_UCODE_ANTDIV_HELPER = common dso_local global i32 0, align 4
@BWN_PHY_CRSGAIN_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_phy_lp_set_antenna(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_lp*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  store %struct.bwn_phy* %8, %struct.bwn_phy** %5, align 8
  %9 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %10 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %9, i32 0, i32 1
  store %struct.bwn_phy_lp* %10, %struct.bwn_phy_lp** %6, align 8
  %11 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %12 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BWN_ANTAUTO1, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  br label %47

20:                                               ; preds = %15
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %23 = call i32 @bwn_hf_read(%struct.bwn_mac* %22)
  %24 = load i32, i32* @BWN_HF_UCODE_ANTDIV_HELPER, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @bwn_hf_write(%struct.bwn_mac* %21, i32 %26)
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 2
  %32 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %28, i32 %29, i32 65533, i32 %31)
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %34 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 1
  %37 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %33, i32 %34, i32 65534, i32 %36)
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = call i32 @bwn_hf_read(%struct.bwn_mac* %39)
  %41 = load i32, i32* @BWN_HF_UCODE_ANTDIV_HELPER, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @bwn_hf_write(%struct.bwn_mac* %38, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %6, align 8
  %46 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
