; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_switch_to_hs400.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_switch_to_hs400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_ivars = type { i32, i32, i32 }

@bus_timing_hs = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, %struct.mmc_ivars*, i32, i32)* @mmc_switch_to_hs400 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_switch_to_hs400(%struct.mmc_softc* %0, %struct.mmc_ivars* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_softc*, align 8
  %7 = alloca %struct.mmc_ivars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %6, align 8
  store %struct.mmc_ivars* %1, %struct.mmc_ivars** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %14 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %17 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %21 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mmcbr_set_clock(i32 %19, i32 %22)
  %24 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %25 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %26 = load i32, i32* @bus_timing_hs, align 4
  %27 = call i32 @mmc_set_timing(%struct.mmc_softc* %24, %struct.mmc_ivars* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MMC_ERR_NONE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %67

33:                                               ; preds = %4
  %34 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %35 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @mmc_set_card_bus_width(%struct.mmc_softc* %34, %struct.mmc_ivars* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @MMC_ERR_NONE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %67

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %46 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mmcbr_set_bus_width(i32 %44, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @mmcbr_update_ios(i32 %49)
  %51 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %52 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @mmc_set_timing(%struct.mmc_softc* %51, %struct.mmc_ivars* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @MMC_ERR_NONE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %67

60:                                               ; preds = %43
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @mmcbr_set_clock(i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @mmcbr_update_ios(i32 %64)
  %66 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %58, %41, %31
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @mmcbr_set_clock(i32, i32) #1

declare dso_local i32 @mmc_set_timing(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmc_set_card_bus_width(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmcbr_set_bus_width(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
