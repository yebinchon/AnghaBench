; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_set_bbatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_set_bbatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32 }

@BWN_PHY0 = common dso_local global i32 0, align 4
@BWN_PHY_DACCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_phy_g_set_bbatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_g_set_bbatt(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  store %struct.bwn_phy* %7, %struct.bwn_phy** %5, align 8
  %8 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %9 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = load i32, i32* @BWN_PHY0, align 4
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %16 = load i32, i32* @BWN_PHY0, align 4
  %17 = call i32 @BWN_READ_2(%struct.bwn_mac* %15, i32 %16)
  %18 = and i32 %17, 65520
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %13, i32 %14, i32 %20)
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %24 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = load i32, i32* @BWN_PHY_DACCTL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 2
  %32 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %28, i32 %29, i32 65475, i32 %31)
  br label %39

33:                                               ; preds = %22
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %35 = load i32, i32* @BWN_PHY_DACCTL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 3
  %38 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %34, i32 %35, i32 65415, i32 %37)
  br label %39

39:                                               ; preds = %33, %27, %12
  ret void
}

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
