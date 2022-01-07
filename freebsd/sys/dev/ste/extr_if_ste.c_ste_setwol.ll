; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@STE_WAKE_EVENT = common dso_local global i32 0, align 4
@STE_WAKEEVENT_WAKEPKT_ENB = common dso_local global i32 0, align 4
@STE_WAKEEVENT_MAGICPKT_ENB = common dso_local global i32 0, align 4
@STE_WAKEEVENT_LINKEVT_ENB = common dso_local global i32 0, align 4
@STE_WAKEEVENT_WAKEONLAN_ENB = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_setwol(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %7 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %8 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %7)
  %9 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PCIY_PMG, align 4
  %13 = call i64 @pci_find_cap(i32 %11, i32 %12, i32* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %17 = load i32, i32* @STE_WAKE_EVENT, align 4
  %18 = call i32 @CSR_READ_1(%struct.ste_softc* %16, i32 %17)
  %19 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %20 = load i32, i32* @STE_WAKE_EVENT, align 4
  %21 = call i32 @CSR_WRITE_1(%struct.ste_softc* %19, i32 %20, i32 0)
  br label %92

22:                                               ; preds = %1
  %23 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %23, i32 0, i32 1
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %3, align 8
  %26 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %27 = load i32, i32* @STE_WAKE_EVENT, align 4
  %28 = call i32 @CSR_READ_1(%struct.ste_softc* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @STE_WAKEEVENT_WAKEPKT_ENB, align 4
  %30 = load i32, i32* @STE_WAKEEVENT_MAGICPKT_ENB, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @STE_WAKEEVENT_LINKEVT_ENB, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @STE_WAKEEVENT_WAKEONLAN_ENB, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %22
  %46 = load i32, i32* @STE_WAKEEVENT_MAGICPKT_ENB, align 4
  %47 = load i32, i32* @STE_WAKEEVENT_WAKEONLAN_ENB, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %22
  %52 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %53 = load i32, i32* @STE_WAKE_EVENT, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @CSR_WRITE_1(%struct.ste_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @pci_read_config(i32 %58, i64 %62, i32 2)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %65 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %51
  %77 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %78 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %51
  %83 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @pci_write_config(i32 %85, i64 %89, i32 %90, i32 2)
  br label %92

92:                                               ; preds = %82, %15
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_READ_1(%struct.ste_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
