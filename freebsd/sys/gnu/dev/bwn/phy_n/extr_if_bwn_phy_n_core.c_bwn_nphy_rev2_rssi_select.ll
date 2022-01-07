; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rev2_rssi_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rev2_rssi_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_RSSIO1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_RSSIO2 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD_RXEN = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD_CORESEL = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD_START = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD_CORESEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32)* @bwn_nphy_rev2_rssi_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_rev2_rssi_select(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %13 [
    i32 129, label %10
    i32 128, label %10
    i32 131, label %10
    i32 130, label %11
    i32 132, label %12
  ]

10:                                               ; preds = %3, %3, %3
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %14

11:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %14

12:                                               ; preds = %3
  store i32 2, i32* %7, align 4
  br label %14

13:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 12
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 14
  %19 = or i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %21 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %20, i32 %21, i32 4095, i32 %22)
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %25 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %24, i32 %25, i32 4095, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %14
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %32 = load i32, i32* @BWN_NPHY_RFCTL_RSSIO1, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  %35 = shl i32 %34, 4
  %36 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %31, i32 %32, i32 65487, i32 %35)
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %38 = load i32, i32* @BWN_NPHY_RFCTL_RSSIO2, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  %41 = shl i32 %40, 4
  %42 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %37, i32 %38, i32 65487, i32 %41)
  br label %43

43:                                               ; preds = %30, %14
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %48 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %49 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %47, i32 %48, i32 -12289)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %54 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %55 = load i32, i32* @BWN_NPHY_RFCTL_CMD_RXEN, align 4
  %56 = load i32, i32* @BWN_NPHY_RFCTL_CMD_CORESEL, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %53, i32 %54, i32 %58)
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %61 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %62 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %60, i32 %61, i32 -4132)
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %64 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %65 = load i32, i32* @BWN_NPHY_RFCTL_CMD_START, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %63, i32 %64, i32 %66)
  %68 = call i32 @DELAY(i32 20)
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %70 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %71 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %69, i32 %70, i32 -2)
  br label %72

72:                                               ; preds = %52, %46
  br label %104

73:                                               ; preds = %43
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %75 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %76 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %74, i32 %75, i32 12288)
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %73
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %81 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %82 = load i32, i32* @BWN_NPHY_RFCTL_CMD_RXEN, align 4
  %83 = load i32, i32* @BWN_NPHY_RFCTL_CMD_CORESEL, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* @BWN_NPHY_RFCTL_CMD_RXEN, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @BWN_NPHY_RFCTL_CMD_CORESEL_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %80, i32 %81, i32 %85, i32 %90)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %93 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %94 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %92, i32 %93, i32 4131)
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %96 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %97 = load i32, i32* @BWN_NPHY_RFCTL_CMD_START, align 4
  %98 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %95, i32 %96, i32 %97)
  %99 = call i32 @DELAY(i32 20)
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %101 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %102 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %100, i32 %101, i32 -2)
  br label %103

103:                                              ; preds = %79, %73
  br label %104

104:                                              ; preds = %103, %72
  ret void
}

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
