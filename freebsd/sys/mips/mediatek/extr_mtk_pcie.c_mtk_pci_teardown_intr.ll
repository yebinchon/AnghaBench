; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.mtk_pci_softc = type { i32, i32, i32** }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Trying to teardown unoccupied IRQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i8*)* @mtk_pci_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pci_teardown_intr(i32 %0, i32 %1, %struct.resource* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtk_pci_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.mtk_pci_softc* @device_get_softc(i32 %14)
  store %struct.mtk_pci_softc* %15, %struct.mtk_pci_softc** %10, align 8
  %16 = load %struct.resource*, %struct.resource** %8, align 8
  %17 = call i32 @rman_get_start(%struct.resource* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %10, align 8
  %20 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %10, align 8
  %26 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %4
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %65

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %10, align 8
  %34 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %10, align 8
  %38 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %31
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @mtk_pci_mask_irq(i8* %50)
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @intr_event_remove_handler(i8* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %10, align 8
  %58 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %47
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %29
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mtk_pci_mask_irq(i8*) #1

declare dso_local i32 @intr_event_remove_handler(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
