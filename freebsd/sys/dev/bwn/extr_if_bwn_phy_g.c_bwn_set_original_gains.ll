; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_set_original_gains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_set_original_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32 }

@BWN_OFDMTAB_GAINX = common dso_local global i32 0, align 4
@BWN_OFDMTAB_GAINX_R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_set_original_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_set_original_gains(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  store %struct.bwn_phy* %10, %struct.bwn_phy** %3, align 8
  store i32 8, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %11 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 16, i32* %7, align 4
  store i32 32, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* @BWN_OFDMTAB_GAINX, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @BWN_OFDMTAB_GAINX_R1, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %16
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 65532
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 1
  %33 = shl i32 %32, 1
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 2
  %38 = ashr i32 %37, 1
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @bwn_ofdmtab_write_2(%struct.bwn_mac* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %63, %49
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @bwn_ofdmtab_write_2(%struct.bwn_mac* %56, i32 %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %68 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %67, i32 1184, i32 49087, i32 16448)
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %70 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %69, i32 1185, i32 49087, i32 16448)
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %72 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %71, i32 1186, i32 49087, i32 16384)
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %74 = call i32 @bwn_dummy_transmission(%struct.bwn_mac* %73, i32 0, i32 1)
  ret void
}

declare dso_local i32 @bwn_ofdmtab_write_2(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_dummy_transmission(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
