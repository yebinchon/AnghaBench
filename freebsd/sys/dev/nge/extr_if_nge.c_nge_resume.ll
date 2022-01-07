; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NGE_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nge_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.nge_softc* @device_get_softc(i32 %7)
  store %struct.nge_softc* %8, %struct.nge_softc** %3, align 8
  %9 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %10 = call i32 @NGE_LOCK(%struct.nge_softc* %9)
  %11 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %11, i32 0, i32 2
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %4, align 8
  %14 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCIY_PMG, align 4
  %18 = call i64 @pci_find_cap(i32 %16, i32 %17, i32* %6)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %1
  %21 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config(i32 %23, i64 %27, i32 2)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %20
  %34 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %39 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pci_write_config(i32 %40, i64 %44, i32 %45, i32 2)
  br label %47

47:                                               ; preds = %33, %20
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_UP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %63 = call i32 @nge_init_locked(%struct.nge_softc* %62)
  br label %64

64:                                               ; preds = %55, %48
  %65 = load i32, i32* @NGE_FLAG_SUSPENDED, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %68 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %72 = call i32 @NGE_UNLOCK(%struct.nge_softc* %71)
  ret i32 0
}

declare dso_local %struct.nge_softc* @device_get_softc(i32) #1

declare dso_local i32 @NGE_LOCK(%struct.nge_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @nge_init_locked(%struct.nge_softc*) #1

declare dso_local i32 @NGE_UNLOCK(%struct.nge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
