; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_switch_to_hs200.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_switch_to_hs200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_ivars = type { i32, i32, i32 }

@bus_timing_mmc_ddr52 = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@bus_timing_hs = common dso_local global i32 0, align 4
@bus_timing_mmc_hs200 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, %struct.mmc_ivars*, i32)* @mmc_switch_to_hs200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_switch_to_hs200(%struct.mmc_softc* %0, %struct.mmc_ivars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_softc*, align 8
  %6 = alloca %struct.mmc_ivars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %5, align 8
  store %struct.mmc_ivars* %1, %struct.mmc_ivars** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %15 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %19 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mmcbr_set_clock(i32 %17, i32 %20)
  %22 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %23 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %24 = load i32, i32* @bus_timing_mmc_ddr52, align 4
  %25 = call i32 @mmc_set_timing(%struct.mmc_softc* %22, %struct.mmc_ivars* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MMC_ERR_NONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %70

31:                                               ; preds = %3
  %32 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %33 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %34 = load i32, i32* @bus_timing_hs, align 4
  %35 = call i32 @mmc_set_card_bus_width(%struct.mmc_softc* %32, %struct.mmc_ivars* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MMC_ERR_NONE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %70

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %44 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mmcbr_set_bus_width(i32 %42, i32 %45)
  %47 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %48 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @bus_timing_hs, align 4
  %51 = call i32 @mmcbr_set_timing(i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mmcbr_update_ios(i32 %52)
  %54 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %55 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %56 = load i32, i32* @bus_timing_mmc_hs200, align 4
  %57 = call i32 @mmc_set_timing(%struct.mmc_softc* %54, %struct.mmc_ivars* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MMC_ERR_NONE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %41
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @mmcbr_set_clock(i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @mmcbr_update_ios(i32 %67)
  %69 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %61, %39, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mmcbr_set_clock(i32, i32) #1

declare dso_local i32 @mmc_set_timing(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmc_set_card_bus_width(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmcbr_set_bus_width(i32, i32) #1

declare dso_local i32 @mmcbr_set_timing(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
