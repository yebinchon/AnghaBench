; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, %struct.ifnet*, i64, i32 }
%struct.ifnet = type { i32, i32 }

@ALC_FLAG_PM = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.alc_softc* @device_get_softc(i32 %6)
  store %struct.alc_softc* %7, %struct.alc_softc** %3, align 8
  %8 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %9 = call i32 @ALC_LOCK(%struct.alc_softc* %8)
  %10 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ALC_FLAG_PM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  %17 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @pci_read_config(i32 %19, i64 %24, i32 2)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %16
  %31 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %36 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %39 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pci_write_config(i32 %37, i64 %42, i32 %43, i32 2)
  br label %45

45:                                               ; preds = %30, %16
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %48 = call i32 @alc_phy_reset(%struct.alc_softc* %47)
  %49 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %50 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %49, i32 0, i32 1
  %51 = load %struct.ifnet*, %struct.ifnet** %50, align 8
  store %struct.ifnet* %51, %struct.ifnet** %4, align 8
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFF_UP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %66 = call i32 @alc_init_locked(%struct.alc_softc* %65)
  br label %67

67:                                               ; preds = %58, %46
  %68 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %69 = call i32 @ALC_UNLOCK(%struct.alc_softc* %68)
  ret i32 0
}

declare dso_local %struct.alc_softc* @device_get_softc(i32) #1

declare dso_local i32 @ALC_LOCK(%struct.alc_softc*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @alc_phy_reset(%struct.alc_softc*) #1

declare dso_local i32 @alc_init_locked(%struct.alc_softc*) #1

declare dso_local i32 @ALC_UNLOCK(%struct.alc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
