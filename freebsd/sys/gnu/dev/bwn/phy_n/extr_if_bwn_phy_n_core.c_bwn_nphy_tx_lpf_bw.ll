; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_lpf_bw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_lpf_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWN_NPHY_TXF_40CO_B32S2 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B1S2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_lpf_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_lpf_bw(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 7
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %68

16:                                               ; preds = %9
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 5, i32 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %34 = load i32, i32* @BWN_NPHY_TXF_40CO_B32S2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 %35, 9
  %37 = load i32, i32* %3, align 4
  %38 = shl i32 %37, 6
  %39 = or i32 %36, %38
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 %40, 3
  %42 = or i32 %39, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %33, i32 %34, i32 %44)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %47 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %32
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %51 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 4, i32 1
  store i32 %54, i32* %3, align 4
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %56 = load i32, i32* @BWN_NPHY_TXF_40CO_B1S2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = shl i32 %57, 9
  %59 = load i32, i32* %3, align 4
  %60 = shl i32 %59, 6
  %61 = or i32 %58, %60
  %62 = load i32, i32* %3, align 4
  %63 = shl i32 %62, 3
  %64 = or i32 %61, %63
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %55, i32 %56, i32 %66)
  br label %68

68:                                               ; preds = %15, %49, %32
  ret void
}

declare dso_local i64 @bwn_nphy_ipa(%struct.bwn_mac*) #1

declare dso_local i64 @bwn_is_40mhz(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
