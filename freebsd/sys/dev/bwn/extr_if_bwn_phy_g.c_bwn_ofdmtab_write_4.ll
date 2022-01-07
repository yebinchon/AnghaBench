; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_ofdmtab_write_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_ofdmtab_write_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i64, i32 }

@BWN_OFDMTAB_DIR_WRITE = common dso_local global i64 0, align 8
@BWN_PHY_OTABLECTL = common dso_local global i32 0, align 4
@BWN_PHY_OTABLEI = common dso_local global i32 0, align 4
@BWN_PHY_OTABLEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32, i32)* @bwn_ofdmtab_write_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_ofdmtab_write_4(%struct.bwn_mac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwn_phy_g*, align 8
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.bwn_phy_g* %13, %struct.bwn_phy_g** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %9, align 8
  %18 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BWN_OFDMTAB_DIR_WRITE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %9, align 8
  %26 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22, %4
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %31 = load i32, i32* @BWN_PHY_OTABLECTL, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %30, i32 %31, i32 %32)
  %34 = load i64, i64* @BWN_OFDMTAB_DIR_WRITE, align 8
  %35 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %9, align 8
  %36 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %9, align 8
  %40 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %42 = load i32, i32* @BWN_PHY_OTABLEI, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %41, i32 %42, i32 %43)
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %46 = load i32, i32* @BWN_PHY_OTABLEQ, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 16
  %49 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %45, i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
