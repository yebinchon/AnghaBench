; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_allocate_pci_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci.c_isci_allocate_pci_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_softc = type { i32, %struct.ISCI_PCI_BAR* }
%struct.ISCI_PCI_BAR = type { i32*, i32, i32, i32 }

@ISCI_NUM_PCI_BARS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to allocate pci resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_softc*)* @isci_allocate_pci_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_allocate_pci_memory(%struct.isci_softc* %0) #0 {
  %2 = alloca %struct.isci_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ISCI_PCI_BAR*, align 8
  store %struct.isci_softc* %0, %struct.isci_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %51, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ISCI_NUM_PCI_BARS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %54

9:                                                ; preds = %5
  %10 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %11 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %10, i32 0, i32 1
  %12 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %12, i64 %14
  store %struct.ISCI_PCI_BAR* %15, %struct.ISCI_PCI_BAR** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %16, 2
  %18 = call i32 @PCIR_BAR(i32 %17)
  %19 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %20 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.isci_softc*, %struct.isci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %26 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %25, i32 0, i32 3
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i32* @bus_alloc_resource_any(i32 %23, i32 %24, i32* %26, i32 %27)
  %29 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %30 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %32 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = call i32 @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %50

37:                                               ; preds = %9
  %38 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %39 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_bustag(i32* %40)
  %42 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %43 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %45 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @rman_get_bushandle(i32* %46)
  %48 = load %struct.ISCI_PCI_BAR*, %struct.ISCI_PCI_BAR** %4, align 8
  %49 = getelementptr inbounds %struct.ISCI_PCI_BAR, %struct.ISCI_PCI_BAR* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %37, %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %5

54:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
