; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_sprom.c_bwn_nphy_get_core_power_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_sprom.c_bwn_nphy_get_core_power_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_nphy_power_vars = type { i32 }
%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_phy_n_core_pwr_info = type { i32 }

@bwn_nphy_power_vars = common dso_local global %struct.bwn_nphy_power_vars* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_nphy_get_core_power_info(%struct.bwn_mac* %0, i32 %1, %struct.bwn_phy_n_core_pwr_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwn_phy_n_core_pwr_info*, align 8
  %8 = alloca %struct.bwn_softc*, align 8
  %9 = alloca %struct.bwn_nphy_power_vars*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bwn_phy_n_core_pwr_info* %2, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %13, align 8
  store %struct.bwn_softc* %14, %struct.bwn_softc** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.bwn_nphy_power_vars*, %struct.bwn_nphy_power_vars** @bwn_nphy_power_vars, align 8
  %20 = call i32 @nitems(%struct.bwn_nphy_power_vars* %19)
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %17
  %25 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  %26 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %4, align 4
  br label %69

33:                                               ; preds = %24
  %34 = load %struct.bwn_nphy_power_vars*, %struct.bwn_nphy_power_vars** @bwn_nphy_power_vars, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bwn_nphy_power_vars, %struct.bwn_nphy_power_vars* %34, i64 %36
  store %struct.bwn_nphy_power_vars* %37, %struct.bwn_nphy_power_vars** %9, align 8
  %38 = load %struct.bwn_phy_n_core_pwr_info*, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %39 = call i32 @memset(%struct.bwn_phy_n_core_pwr_info* %38, i32 0, i32 4)
  %40 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  %41 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bwn_nphy_power_vars*, %struct.bwn_nphy_power_vars** %9, align 8
  %44 = getelementptr inbounds %struct.bwn_nphy_power_vars, %struct.bwn_nphy_power_vars* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bwn_phy_n_core_pwr_info*, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %47 = getelementptr inbounds %struct.bwn_phy_n_core_pwr_info, %struct.bwn_phy_n_core_pwr_info* %46, i32 0, i32 0
  %48 = call i32 @bhnd_nvram_getvar_uint8(i32 %42, i32 %45, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %33
  %54 = load i32, i32* %10, align 4
  %55 = icmp sge i32 %54, 4
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %57, 10
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  %61 = load %struct.bwn_nphy_power_vars*, %struct.bwn_nphy_power_vars** %9, align 8
  %62 = load %struct.bwn_phy_n_core_pwr_info*, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %63 = call i32 @bwn_nphy_get_core_power_info_r4_r10(%struct.bwn_softc* %60, %struct.bwn_nphy_power_vars* %61, %struct.bwn_phy_n_core_pwr_info* %62)
  store i32 %63, i32* %4, align 4
  br label %69

64:                                               ; preds = %56, %53
  %65 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  %66 = load %struct.bwn_nphy_power_vars*, %struct.bwn_nphy_power_vars** %9, align 8
  %67 = load %struct.bwn_phy_n_core_pwr_info*, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %68 = call i32 @bwn_nphy_get_core_power_info_r11(%struct.bwn_softc* %65, %struct.bwn_nphy_power_vars* %66, %struct.bwn_phy_n_core_pwr_info* %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %59, %51, %31, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @nitems(%struct.bwn_nphy_power_vars*) #1

declare dso_local i32 @memset(%struct.bwn_phy_n_core_pwr_info*, i32, i32) #1

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i32, i32*) #1

declare dso_local i32 @bwn_nphy_get_core_power_info_r4_r10(%struct.bwn_softc*, %struct.bwn_nphy_power_vars*, %struct.bwn_phy_n_core_pwr_info*) #1

declare dso_local i32 @bwn_nphy_get_core_power_info_r11(%struct.bwn_softc*, %struct.bwn_nphy_power_vars*, %struct.bwn_phy_n_core_pwr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
