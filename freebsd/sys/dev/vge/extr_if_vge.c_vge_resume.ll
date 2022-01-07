; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, %struct.ifnet*, i64, i32 }
%struct.ifnet = type { i32, i32 }

@VGE_FLAG_PMCAP = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@VGE_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vge_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.vge_softc* @device_get_softc(i32 %6)
  store %struct.vge_softc* %7, %struct.vge_softc** %3, align 8
  %8 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %9 = call i32 @VGE_LOCK(%struct.vge_softc* %8)
  %10 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VGE_FLAG_PMCAP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  %17 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %20, i32 0, i32 2
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
  %35 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %39 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pci_write_config(i32 %37, i64 %42, i32 %43, i32 2)
  br label %45

45:                                               ; preds = %30, %16
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %48 = call i32 @vge_clrwol(%struct.vge_softc* %47)
  %49 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %50 = call i32 @vge_miipoll_start(%struct.vge_softc* %49)
  %51 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %51, i32 0, i32 1
  %53 = load %struct.ifnet*, %struct.ifnet** %52, align 8
  store %struct.ifnet* %53, %struct.ifnet** %4, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_UP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %46
  %61 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %68 = call i32 @vge_init_locked(%struct.vge_softc* %67)
  br label %69

69:                                               ; preds = %60, %46
  %70 = load i32, i32* @VGE_FLAG_SUSPENDED, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %73 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %77 = call i32 @VGE_UNLOCK(%struct.vge_softc* %76)
  ret i32 0
}

declare dso_local %struct.vge_softc* @device_get_softc(i32) #1

declare dso_local i32 @VGE_LOCK(%struct.vge_softc*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @vge_clrwol(%struct.vge_softc*) #1

declare dso_local i32 @vge_miipoll_start(%struct.vge_softc*) #1

declare dso_local i32 @vge_init_locked(%struct.vge_softc*) #1

declare dso_local i32 @VGE_UNLOCK(%struct.vge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
