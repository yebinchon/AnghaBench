; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32 }
%struct.mii_data = type { i32 }

@TCR = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@TCR_SWFDUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smc_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.smc_softc*
  store %struct.smc_softc* %8, %struct.smc_softc** %3, align 8
  %9 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.mii_data*
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %15 = call i32 @SMC_LOCK(%struct.smc_softc* %14)
  %16 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %17 = call i32 @smc_select_bank(%struct.smc_softc* %16, i32 0)
  %18 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %19 = load i32, i32* @TCR, align 4
  %20 = call i32 @smc_read_2(%struct.smc_softc* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %22 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IFM_OPTIONS(i32 %23)
  %25 = load i32, i32* @IFM_FDX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @TCR_SWFDUP, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load i32, i32* @TCR_SWFDUP, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %39 = load i32, i32* @TCR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @smc_write_2(%struct.smc_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.smc_softc*, %struct.smc_softc** %3, align 8
  %43 = call i32 @SMC_UNLOCK(%struct.smc_softc* %42)
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @SMC_LOCK(%struct.smc_softc*) #1

declare dso_local i32 @smc_select_bank(%struct.smc_softc*, i32) #1

declare dso_local i32 @smc_read_2(%struct.smc_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @smc_write_2(%struct.smc_softc*, i32, i32) #1

declare dso_local i32 @SMC_UNLOCK(%struct.smc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
