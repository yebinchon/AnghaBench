; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_set_mem_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_set_mem_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32, i32, i32, i32, i32 }

@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEH_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEL_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITH_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcib_softc*)* @pcib_set_mem_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcib_set_mem_decode(%struct.pcib_softc* %0) #0 {
  %2 = alloca %struct.pcib_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pcib_softc* %0, %struct.pcib_softc** %2, align 8
  %5 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %10 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %11 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 16
  %14 = call i32 @pci_write_config(i32 %8, i32 %9, i32 %13, i32 2)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PCIR_MEMLIMIT_1, align 4
  %17 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %18 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 16
  %21 = call i32 @pci_write_config(i32 %15, i32 %16, i32 %20, i32 2)
  %22 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %23 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 32
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PCIR_PMBASEH_1, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pci_write_config(i32 %29, i32 %30, i32 %31, i32 4)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %36 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %37 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 16
  %40 = call i32 @pci_write_config(i32 %34, i32 %35, i32 %39, i32 2)
  %41 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %42 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @PCIR_PMLIMITH_1, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @pci_write_config(i32 %48, i32 %49, i32 %50, i32 4)
  br label %52

52:                                               ; preds = %47, %33
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %55 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %56 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  %59 = call i32 @pci_write_config(i32 %53, i32 %54, i32 %58, i32 2)
  ret void
}

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
