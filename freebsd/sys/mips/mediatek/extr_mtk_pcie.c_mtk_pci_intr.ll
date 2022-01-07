; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32, i32, %struct.intr_event** }
%struct.intr_event = type { i32 }

@MTK_PCI_PCIINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Stray PCI IRQ %d\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtk_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pci_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtk_pci_softc*, align 8
  %4 = alloca %struct.intr_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mtk_pci_softc*
  store %struct.mtk_pci_softc* %9, %struct.mtk_pci_softc** %3, align 8
  %10 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %11 = load i32, i32* @MTK_PCI_PCIINT, align 4
  %12 = call i32 @MT_READ32(%struct.mtk_pci_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %59, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ule i32 %17, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %34, i32 0, i32 2
  %36 = load %struct.intr_event**, %struct.intr_event*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %36, i64 %38
  %40 = load %struct.intr_event*, %struct.intr_event** %39, align 8
  store %struct.intr_event* %40, %struct.intr_event** %4, align 8
  %41 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %42 = icmp ne %struct.intr_event* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %45 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %44, i32 0, i32 0
  %46 = call i64 @CK_SLIST_EMPTY(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43, %28
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %59

55:                                               ; preds = %43
  %56 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %57 = call i32 @intr_event_handle(%struct.intr_event* %56, i32* null)
  br label %58

58:                                               ; preds = %55, %22
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %16

62:                                               ; preds = %16
  %63 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %63
}

declare dso_local i32 @MT_READ32(%struct.mtk_pci_softc*, i32) #1

declare dso_local i64 @CK_SLIST_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @intr_event_handle(%struct.intr_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
