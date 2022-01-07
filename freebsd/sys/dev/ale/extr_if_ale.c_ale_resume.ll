; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ale_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ale_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ale_softc* @device_get_softc(i32 %7)
  store %struct.ale_softc* %8, %struct.ale_softc** %3, align 8
  %9 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %10 = call i32 @ALE_LOCK(%struct.ale_softc* %9)
  %11 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCIY_PMG, align 4
  %15 = call i64 @pci_find_cap(i32 %13, i32 %14, i32* %5)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @pci_read_config(i32 %20, i64 %24, i32 2)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %17
  %31 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pci_write_config(i32 %37, i64 %41, i32 %42, i32 2)
  br label %44

44:                                               ; preds = %30, %17
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %47 = call i32 @ale_phy_reset(%struct.ale_softc* %46)
  %48 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %48, i32 0, i32 0
  %50 = load %struct.ifnet*, %struct.ifnet** %49, align 8
  store %struct.ifnet* %50, %struct.ifnet** %4, align 8
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_UP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %65 = call i32 @ale_init_locked(%struct.ale_softc* %64)
  br label %66

66:                                               ; preds = %57, %45
  %67 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %68 = call i32 @ALE_UNLOCK(%struct.ale_softc* %67)
  ret i32 0
}

declare dso_local %struct.ale_softc* @device_get_softc(i32) #1

declare dso_local i32 @ALE_LOCK(%struct.ale_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ale_phy_reset(%struct.ale_softc*) #1

declare dso_local i32 @ale_init_locked(%struct.ale_softc*) #1

declare dso_local i32 @ALE_UNLOCK(%struct.ale_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
