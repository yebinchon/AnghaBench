; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ste_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ste_softc* @device_get_softc(i32 %7)
  store %struct.ste_softc* %8, %struct.ste_softc** %3, align 8
  %9 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %10 = call i32 @STE_LOCK(%struct.ste_softc* %9)
  %11 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCIY_PMG, align 4
  %15 = call i64 @pci_find_cap(i32 %13, i32 %14, i32* %5)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %18, i32 0, i32 1
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
  %35 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %35, i32 0, i32 1
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
  %46 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %46, i32 0, i32 0
  %48 = load %struct.ifnet*, %struct.ifnet** %47, align 8
  store %struct.ifnet* %48, %struct.ifnet** %4, align 8
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_UP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %63 = call i32 @ste_init_locked(%struct.ste_softc* %62)
  br label %64

64:                                               ; preds = %55, %45
  %65 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %66 = call i32 @STE_UNLOCK(%struct.ste_softc* %65)
  ret i32 0
}

declare dso_local %struct.ste_softc* @device_get_softc(i32) #1

declare dso_local i32 @STE_LOCK(%struct.ste_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ste_init_locked(%struct.ste_softc*) #1

declare dso_local i32 @STE_UNLOCK(%struct.ste_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
