; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_superswitch_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_superswitch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWN_NPHY_GPIO_LOOEN = common dso_local global i32 0, align 4
@BWN_NPHY_GPIO_HIOEN = common dso_local global i32 0, align 4
@BWN_MACCTL = common dso_local global i32 0, align 4
@BWN_MACCTL_GPOUT_MASK = common dso_local global i32 0, align 4
@BWN_GPIO_MASK = common dso_local global i32 0, align 4
@BWN_GPIO_CONTROL = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_LO1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_LO2 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32)* @bwn_nphy_superswitch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_superswitch_init(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %19
  br label %64

24:                                               ; preds = %13
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %26 = load i32, i32* @BWN_NPHY_GPIO_LOOEN, align 4
  %27 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %25, i32 %26, i32 0)
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %29 = load i32, i32* @BWN_NPHY_GPIO_HIOEN, align 4
  %30 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %28, i32 %29, i32 0)
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %32 = call i32 @bwn_gpio_control(%struct.bwn_mac* %31, i32 64512)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %24
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %38 = load i32, i32* @BWN_MACCTL, align 4
  %39 = load i32, i32* @BWN_MACCTL_GPOUT_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @BWN_WRITE_SETMASK4(%struct.bwn_mac* %37, i32 %38, i32 %40, i32 0)
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %43 = load i32, i32* @BWN_GPIO_MASK, align 4
  %44 = call i32 @BWN_WRITE_SETMASK2(%struct.bwn_mac* %42, i32 %43, i32 -1, i32 64512)
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %46 = load i32, i32* @BWN_GPIO_CONTROL, align 4
  %47 = call i32 @BWN_WRITE_SETMASK2(%struct.bwn_mac* %45, i32 %46, i32 1023, i32 0)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %36
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %52 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_LO1, align 4
  %53 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %51, i32 %52, i32 728)
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %55 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %56 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %54, i32 %55, i32 769)
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %58 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_LO2, align 4
  %59 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %57, i32 %58, i32 728)
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %61 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %62 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %60, i32 %61, i32 769)
  br label %63

63:                                               ; preds = %50, %36
  br label %64

64:                                               ; preds = %63, %23
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %34, %22, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_gpio_control(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_SETMASK4(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_WRITE_SETMASK2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
