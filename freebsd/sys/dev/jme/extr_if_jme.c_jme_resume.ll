; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jme_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.jme_softc* @device_get_softc(i32 %7)
  store %struct.jme_softc* %8, %struct.jme_softc** %3, align 8
  %9 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %10 = call i32 @JME_LOCK(%struct.jme_softc* %9)
  %11 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %12 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCIY_PMG, align 4
  %15 = call i64 @pci_find_cap(i32 %13, i32 %14, i32* %6)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %19 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @pci_read_config(i32 %20, i64 %24, i32 2)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %31 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pci_write_config(i32 %32, i64 %36, i32 %37, i32 2)
  br label %39

39:                                               ; preds = %17, %1
  %40 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %41 = call i32 @jme_phy_up(%struct.jme_softc* %40)
  %42 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %43 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %42, i32 0, i32 0
  %44 = load %struct.ifnet*, %struct.ifnet** %43, align 8
  store %struct.ifnet* %44, %struct.ifnet** %4, align 8
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_UP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %39
  %52 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %59 = call i32 @jme_init_locked(%struct.jme_softc* %58)
  br label %60

60:                                               ; preds = %51, %39
  %61 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %62 = call i32 @JME_UNLOCK(%struct.jme_softc* %61)
  ret i32 0
}

declare dso_local %struct.jme_softc* @device_get_softc(i32) #1

declare dso_local i32 @JME_LOCK(%struct.jme_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @jme_phy_up(%struct.jme_softc*) #1

declare dso_local i32 @jme_init_locked(%struct.jme_softc*) #1

declare dso_local i32 @JME_UNLOCK(%struct.jme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
