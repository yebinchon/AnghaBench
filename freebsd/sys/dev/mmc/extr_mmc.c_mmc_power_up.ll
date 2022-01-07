; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_power_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }

@opendrain = common dso_local global i32 0, align 4
@cs_dontcare = common dso_local global i32 0, align 4
@bus_width_1 = common dso_local global i32 0, align 4
@power_up = common dso_local global i32 0, align 4
@vccq_330 = common dso_local global i32 0, align 4
@vccq_120 = common dso_local global i32 0, align 4
@SD_MMC_CARD_ID_FREQUENCY = common dso_local global i32 0, align 4
@bus_timing_normal = common dso_local global i32 0, align 4
@power_on = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_softc*)* @mmc_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_power_up(%struct.mmc_softc* %0) #0 {
  %2 = alloca %struct.mmc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %2, align 8
  %5 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @mmcbr_get_host_ocr(i32 %9)
  %11 = call i32 @mmc_highest_voltage(i32 %10)
  %12 = call i32 @mmcbr_set_vdd(i32 %8, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @opendrain, align 4
  %15 = call i32 @mmcbr_set_bus_mode(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @cs_dontcare, align 4
  %18 = call i32 @mmcbr_set_chip_select(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @bus_width_1, align 4
  %21 = call i32 @mmcbr_set_bus_width(i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @power_up, align 4
  %24 = call i32 @mmcbr_set_power_mode(i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @mmcbr_set_clock(i32 %25, i32 0)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mmcbr_update_ios(i32 %27)
  %29 = load i32, i32* @vccq_330, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mmcbr_set_vccq(i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @mmcbr_switch_vccq(i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @vccq_120, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %30
  br label %46

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %4, align 4
  br label %30

46:                                               ; preds = %41
  %47 = call i32 @mmc_ms_delay(i32 1)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SD_MMC_CARD_ID_FREQUENCY, align 4
  %50 = call i32 @mmcbr_set_clock(i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @bus_timing_normal, align 4
  %53 = call i32 @mmcbr_set_timing(i32 %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @power_on, align 4
  %56 = call i32 @mmcbr_set_power_mode(i32 %54, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @mmcbr_update_ios(i32 %57)
  %59 = call i32 @mmc_ms_delay(i32 2)
  ret void
}

declare dso_local i32 @mmcbr_set_vdd(i32, i32) #1

declare dso_local i32 @mmc_highest_voltage(i32) #1

declare dso_local i32 @mmcbr_get_host_ocr(i32) #1

declare dso_local i32 @mmcbr_set_bus_mode(i32, i32) #1

declare dso_local i32 @mmcbr_set_chip_select(i32, i32) #1

declare dso_local i32 @mmcbr_set_bus_width(i32, i32) #1

declare dso_local i32 @mmcbr_set_power_mode(i32, i32) #1

declare dso_local i32 @mmcbr_set_clock(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

declare dso_local i32 @mmcbr_set_vccq(i32, i32) #1

declare dso_local i64 @mmcbr_switch_vccq(i32) #1

declare dso_local i32 @mmc_ms_delay(i32) #1

declare dso_local i32 @mmcbr_set_timing(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
