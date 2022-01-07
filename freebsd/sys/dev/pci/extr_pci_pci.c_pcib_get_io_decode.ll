; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_get_io_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_get_io_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i8*, i8*, i32 }

@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@PCIM_BRIO_MASK = common dso_local global i32 0, align 4
@PCIM_BRIO_32 = common dso_local global i32 0, align 4
@PCIR_IOBASEH_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITH_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcib_softc*)* @pcib_get_io_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcib_get_io_decode(%struct.pcib_softc* %0) #0 {
  %2 = alloca %struct.pcib_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pcib_softc* %0, %struct.pcib_softc** %2, align 8
  %5 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %10 = call i32 @pci_read_config(i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PCIM_BRIO_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PCIM_BRIO_32, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PCIR_IOBASEH_1, align 4
  %19 = call i32 @pci_read_config(i32 %17, i32 %18, i32 2)
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @PCI_PPBIOBASE(i32 %19, i32 %20)
  %22 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %23 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @PCI_PPBIOBASE(i32 0, i32 %25)
  %27 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %28 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %32 = call i32 @pci_read_config(i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PCIM_BRIO_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @PCIM_BRIO_32, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PCIR_IOLIMITH_1, align 4
  %41 = call i32 @pci_read_config(i32 %39, i32 %40, i32 2)
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @PCI_PPBIOLIMIT(i32 %41, i32 %42)
  %44 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %45 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %51

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @PCI_PPBIOLIMIT(i32 0, i32 %47)
  %49 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %50 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %38
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i8* @PCI_PPBIOBASE(i32, i32) #1

declare dso_local i8* @PCI_PPBIOLIMIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
