; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32, i32, i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@FXP_FLAG_WOL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fxp_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.fxp_softc* @device_get_softc(i32 %7)
  store %struct.fxp_softc* %8, %struct.fxp_softc** %3, align 8
  %9 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %10 = call i32 @FXP_LOCK(%struct.fxp_softc* %9)
  %11 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCIY_PMG, align 4
  %18 = call i64 @pci_find_cap(i32 %16, i32 %17, i32* %5)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %1
  %21 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %22 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config(i32 %23, i64 %27, i32 2)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %30 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @if_getcapenable(i32 %35)
  %37 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %20
  %41 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %42 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @FXP_FLAG_WOL, align 4
  %47 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %48 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %53 = call i32 @if_setdrvflagbits(i32 %51, i32 0, i32 %52)
  %54 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %55 = call i32 @fxp_init_body(%struct.fxp_softc* %54, i32 0)
  br label %56

56:                                               ; preds = %40, %20
  %57 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %58 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @pci_write_config(i32 %59, i64 %63, i32 %64, i32 2)
  br label %66

66:                                               ; preds = %56, %1
  %67 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %68 = call i32 @fxp_stop(%struct.fxp_softc* %67)
  %69 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %70 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %72 = call i32 @FXP_UNLOCK(%struct.fxp_softc* %71)
  ret i32 0
}

declare dso_local %struct.fxp_softc* @device_get_softc(i32) #1

declare dso_local i32 @FXP_LOCK(%struct.fxp_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @fxp_init_body(%struct.fxp_softc*, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @fxp_stop(%struct.fxp_softc*) #1

declare dso_local i32 @FXP_UNLOCK(%struct.fxp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
