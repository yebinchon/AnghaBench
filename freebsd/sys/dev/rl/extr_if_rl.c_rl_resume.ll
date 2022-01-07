; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFCAP_WOL = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rl_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.rl_softc* @device_get_softc(i32 %7)
  store %struct.rl_softc* %8, %struct.rl_softc** %3, align 8
  %9 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 2
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %13 = call i32 @RL_LOCK(%struct.rl_softc* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFCAP_WOL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %1
  %21 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCIY_PMG, align 4
  %25 = call i64 @pci_find_cap(i32 %23, i32 %24, i32* %5)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @pci_read_config(i32 %30, i64 %34, i32 2)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %27
  %41 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %46 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pci_write_config(i32 %47, i64 %51, i32 %52, i32 2)
  br label %54

54:                                               ; preds = %40, %27
  %55 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %56 = call i32 @rl_clrwol(%struct.rl_softc* %55)
  br label %57

57:                                               ; preds = %54, %20, %1
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_UP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %66 = call i32 @rl_init_locked(%struct.rl_softc* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %71 = call i32 @RL_UNLOCK(%struct.rl_softc* %70)
  ret i32 0
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @rl_clrwol(%struct.rl_softc*) #1

declare dso_local i32 @rl_init_locked(%struct.rl_softc*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
