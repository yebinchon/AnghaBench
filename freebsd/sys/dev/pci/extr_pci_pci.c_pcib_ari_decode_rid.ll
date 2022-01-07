; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_ari_decode_rid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_ari_decode_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32 }

@PCIB_ENABLE_ARI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32*)* @pcib_ari_decode_rid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcib_ari_decode_rid(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pcib_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.pcib_softc* @device_get_softc(i32 %12)
  store %struct.pcib_softc* %13, %struct.pcib_softc** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @PCI_RID2BUS(i32 %14)
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.pcib_softc*, %struct.pcib_softc** %11, align 8
  %18 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCIB_ENABLE_ARI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @PCIE_ARI_RID2SLOT(i32 %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PCIE_ARI_RID2FUNC(i32 %27)
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PCI_RID2SLOT(i32 %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @PCI_RID2FUNC(i32 %34)
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %23
  ret void
}

declare dso_local %struct.pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @PCI_RID2BUS(i32) #1

declare dso_local i32 @PCIE_ARI_RID2SLOT(i32) #1

declare dso_local i32 @PCIE_ARI_RID2FUNC(i32) #1

declare dso_local i32 @PCI_RID2SLOT(i32) #1

declare dso_local i32 @PCI_RID2FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
