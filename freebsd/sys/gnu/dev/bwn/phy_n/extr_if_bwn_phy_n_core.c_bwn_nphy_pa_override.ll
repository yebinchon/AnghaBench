; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_pa_override.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_pa_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i32 }

@BWN_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_nphy_pa_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_pa_override(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy_n*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  store %struct.bwn_phy_n* %11, %struct.bwn_phy_n** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %2
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %16 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %17 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %20 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %22 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %23 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %26 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = call i64 @bwn_current_band(%struct.bwn_mac* %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %30 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 7
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  store i32 5248, i32* %7, align 4
  br label %56

35:                                               ; preds = %14
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %37 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @BWN_BAND_5G, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1536, i32* %7, align 4
  br label %47

46:                                               ; preds = %41
  store i32 1152, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %45
  br label %55

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @BWN_BAND_5G, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 384, i32* %7, align 4
  br label %54

53:                                               ; preds = %48
  store i32 288, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %58 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %57, i32 %58, i32 %59)
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %62 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %61, i32 %62, i32 %63)
  br label %78

65:                                               ; preds = %2
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %67 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %68 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %69 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %66, i32 %67, i32 %70)
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %73 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %74 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %75 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %72, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %65, %56
  ret void
}

declare dso_local i8* @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
