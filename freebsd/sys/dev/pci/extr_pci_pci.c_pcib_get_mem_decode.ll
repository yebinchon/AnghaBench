; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_get_mem_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_get_mem_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i8*, i8*, i8*, i8*, i32 }

@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEL_1 = common dso_local global i32 0, align 4
@PCIM_BRPM_MASK = common dso_local global i32 0, align 4
@PCIM_BRPM_64 = common dso_local global i32 0, align 4
@PCIR_PMBASEH_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITH_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcib_softc*)* @pcib_get_mem_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcib_get_mem_decode(%struct.pcib_softc* %0) #0 {
  %2 = alloca %struct.pcib_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pcib_softc* %0, %struct.pcib_softc** %2, align 8
  %5 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %10 = call i32 @pci_read_config(i32 %8, i32 %9, i32 2)
  %11 = call i8* @PCI_PPBMEMBASE(i32 0, i32 %10)
  %12 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %13 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCIR_MEMLIMIT_1, align 4
  %16 = call i32 @pci_read_config(i32 %14, i32 %15, i32 2)
  %17 = call i8* @PCI_PPBMEMLIMIT(i32 0, i32 %16)
  %18 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %19 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %22 = call i32 @pci_read_config(i32 %20, i32 %21, i32 2)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PCIM_BRPM_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @PCIM_BRPM_64, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PCIR_PMBASEH_1, align 4
  %31 = call i32 @pci_read_config(i32 %29, i32 %30, i32 4)
  %32 = load i32, i32* %4, align 4
  %33 = call i8* @PCI_PPBMEMBASE(i32 %31, i32 %32)
  %34 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %35 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %41

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @PCI_PPBMEMBASE(i32 0, i32 %37)
  %39 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %40 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %28
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %44 = call i32 @pci_read_config(i32 %42, i32 %43, i32 2)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PCIM_BRPM_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @PCIM_BRPM_64, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @PCIR_PMLIMITH_1, align 4
  %53 = call i32 @pci_read_config(i32 %51, i32 %52, i32 4)
  %54 = load i32, i32* %4, align 4
  %55 = call i8* @PCI_PPBMEMLIMIT(i32 %53, i32 %54)
  %56 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %57 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %63

58:                                               ; preds = %41
  %59 = load i32, i32* %4, align 4
  %60 = call i8* @PCI_PPBMEMLIMIT(i32 0, i32 %59)
  %61 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %62 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %58, %50
  ret void
}

declare dso_local i8* @PCI_PPBMEMBASE(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i8* @PCI_PPBMEMLIMIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
