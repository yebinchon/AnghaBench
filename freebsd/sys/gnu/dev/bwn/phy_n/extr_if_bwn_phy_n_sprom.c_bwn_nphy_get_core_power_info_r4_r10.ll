; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_sprom.c_bwn_nphy_get_core_power_info_r4_r10.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_sprom.c_bwn_nphy_get_core_power_info_r4_r10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { i32 }
%struct.bwn_nphy_power_vars = type { i32, i32 }
%struct.bwn_phy_n_core_pwr_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_softc*, %struct.bwn_nphy_power_vars*, %struct.bwn_phy_n_core_pwr_info*)* @bwn_nphy_get_core_power_info_r4_r10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_get_core_power_info_r4_r10(%struct.bwn_softc* %0, %struct.bwn_nphy_power_vars* %1, %struct.bwn_phy_n_core_pwr_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.bwn_nphy_power_vars*, align 8
  %7 = alloca %struct.bwn_phy_n_core_pwr_info*, align 8
  %8 = alloca i32, align 4
  store %struct.bwn_softc* %0, %struct.bwn_softc** %5, align 8
  store %struct.bwn_nphy_power_vars* %1, %struct.bwn_nphy_power_vars** %6, align 8
  store %struct.bwn_phy_n_core_pwr_info* %2, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %10 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bwn_nphy_power_vars*, %struct.bwn_nphy_power_vars** %6, align 8
  %13 = getelementptr inbounds %struct.bwn_nphy_power_vars, %struct.bwn_nphy_power_vars* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bwn_phy_n_core_pwr_info*, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %16 = getelementptr inbounds %struct.bwn_phy_n_core_pwr_info, %struct.bwn_phy_n_core_pwr_info* %15, i32 0, i32 1
  %17 = call i32 @bhnd_nvram_getvar_uint8(i32 %11, i32 %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %24 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bwn_nphy_power_vars*, %struct.bwn_nphy_power_vars** %6, align 8
  %27 = getelementptr inbounds %struct.bwn_nphy_power_vars, %struct.bwn_nphy_power_vars* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bwn_phy_n_core_pwr_info*, %struct.bwn_phy_n_core_pwr_info** %7, align 8
  %30 = getelementptr inbounds %struct.bwn_phy_n_core_pwr_info, %struct.bwn_phy_n_core_pwr_info* %29, i32 0, i32 0
  %31 = call i32 @bhnd_nvram_getvar_uint8(i32 %25, i32 %28, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %34, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
