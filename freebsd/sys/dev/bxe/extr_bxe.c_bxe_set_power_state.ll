; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_power_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@BXE_PM_CAPABLE_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No power capability\0A\00", align 1
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_DMASK = common dso_local global i32 0, align 4
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_D3 = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't support PCI power state = 0x%x pmcsr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_set_power_state(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BXE_PM_CAPABLE_FLAG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %16 = call i32 @BLOGW(%struct.bxe_softc* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %22 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @pci_read_config(i32 %20, i64 %26, i32 2)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %86 [
    i32 129, label %29
    i32 128, label %53
  ]

29:                                               ; preds = %17
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCIM_PSTAT_DMASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @pci_write_config(i32 %32, i64 %38, i32 %44, i32 2)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PCIM_PSTAT_DMASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = call i32 @DELAY(i32 20000)
  br label %52

52:                                               ; preds = %50, %29
  br label %91

53:                                               ; preds = %17
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %55 = call i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %92

58:                                               ; preds = %53
  %59 = load i32, i32* @PCIM_PSTAT_DMASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @PCIM_PSTAT_D3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %67 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %58
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %76 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %79 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @pci_write_config(i32 %77, i64 %83, i32 %84, i32 4)
  br label %91

86:                                               ; preds = %17
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @BLOGE(%struct.bxe_softc* %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  store i32 -1, i32* %3, align 4
  br label %92

91:                                               ; preds = %74, %52
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %86, %57, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
