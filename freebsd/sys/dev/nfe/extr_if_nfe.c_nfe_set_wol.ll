; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_set_wol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@NFE_WOL_MAGIC = common dso_local global i32 0, align 4
@NFE_WOL_CTL = common dso_local global i32 0, align 4
@NFE_PWR_MGMT = common dso_local global i32 0, align 4
@NFE_PWR2_CTL = common dso_local global i32 0, align 4
@NFE_PWR2_GATE_CLOCKS = common dso_local global i32 0, align 4
@NFE_RX_RING_ADDR_HI = common dso_local global i32 0, align 4
@NFE_RX_RING_ADDR_LO = common dso_local global i32 0, align 4
@NFE_RX_CTL = common dso_local global i32 0, align 4
@NFE_RX_START = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*)* @nfe_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_set_wol(%struct.nfe_softc* %0) #0 {
  %2 = alloca %struct.nfe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %2, align 8
  %7 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %8 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %7)
  %9 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCIY_PMG, align 4
  %13 = call i64 @pci_find_cap(i32 %11, i32 %12, i32* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @if_getcapenable(i32 %20)
  %22 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @NFE_WOL_MAGIC, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %30 = load i32, i32* @NFE_WOL_CTL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @NFE_WRITE(%struct.nfe_softc* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @if_getcapenable(i32 %33)
  %35 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %28
  %39 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %40 = call i32 @nfe_set_linkspeed(%struct.nfe_softc* %39)
  %41 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %42 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFE_PWR_MGMT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %49 = load i32, i32* @NFE_PWR2_CTL, align 4
  %50 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %51 = load i32, i32* @NFE_PWR2_CTL, align 4
  %52 = call i32 @NFE_READ(%struct.nfe_softc* %50, i32 %51)
  %53 = load i32, i32* @NFE_PWR2_GATE_CLOCKS, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @NFE_WRITE(%struct.nfe_softc* %48, i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %47, %38
  %58 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %59 = load i32, i32* @NFE_RX_RING_ADDR_HI, align 4
  %60 = call i32 @NFE_WRITE(%struct.nfe_softc* %58, i32 %59, i32 0)
  %61 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %62 = load i32, i32* @NFE_RX_RING_ADDR_LO, align 4
  %63 = call i32 @NFE_WRITE(%struct.nfe_softc* %61, i32 %62, i32 0)
  %64 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %65 = load i32, i32* @NFE_RX_CTL, align 4
  %66 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %67 = load i32, i32* @NFE_RX_CTL, align 4
  %68 = call i32 @NFE_READ(%struct.nfe_softc* %66, i32 %67)
  %69 = load i32, i32* @NFE_RX_START, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @NFE_WRITE(%struct.nfe_softc* %64, i32 %65, i32 %70)
  br label %72

72:                                               ; preds = %57, %28
  %73 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %74 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @pci_read_config(i32 %75, i64 %79, i32 2)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %82 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @if_getcapenable(i32 %87)
  %89 = load i32, i32* @IFCAP_WOL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %72
  %93 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %94 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %92, %72
  %99 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %100 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @pci_write_config(i32 %101, i64 %105, i32 %106, i32 2)
  br label %108

108:                                              ; preds = %98, %15
  ret void
}

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @nfe_set_linkspeed(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
