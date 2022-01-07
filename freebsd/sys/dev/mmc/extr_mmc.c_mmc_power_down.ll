; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_power_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }

@opendrain = common dso_local global i32 0, align 4
@cs_dontcare = common dso_local global i32 0, align 4
@bus_width_1 = common dso_local global i32 0, align 4
@power_off = common dso_local global i32 0, align 4
@bus_timing_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_softc*)* @mmc_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_power_down(%struct.mmc_softc* %0) #0 {
  %2 = alloca %struct.mmc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %2, align 8
  %4 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @opendrain, align 4
  %9 = call i32 @mmcbr_set_bus_mode(i32 %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @cs_dontcare, align 4
  %12 = call i32 @mmcbr_set_chip_select(i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @bus_width_1, align 4
  %15 = call i32 @mmcbr_set_bus_width(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @power_off, align 4
  %18 = call i32 @mmcbr_set_power_mode(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mmcbr_set_clock(i32 %19, i32 0)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @bus_timing_normal, align 4
  %23 = call i32 @mmcbr_set_timing(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @mmcbr_update_ios(i32 %24)
  ret void
}

declare dso_local i32 @mmcbr_set_bus_mode(i32, i32) #1

declare dso_local i32 @mmcbr_set_chip_select(i32, i32) #1

declare dso_local i32 @mmcbr_set_bus_width(i32, i32) #1

declare dso_local i32 @mmcbr_set_power_mode(i32, i32) #1

declare dso_local i32 @mmcbr_set_clock(i32, i32) #1

declare dso_local i32 @mmcbr_set_timing(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
