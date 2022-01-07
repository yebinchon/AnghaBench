; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_isa_pci.c_isab_pci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_isa_pci.c_isab_pci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.isab_pci_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.resource*, i32 }

@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64, i32, i32*, i32, i32, i32, i32)* @isab_pci_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @isab_pci_alloc_resource(i64 %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.isab_pci_softc*, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @device_get_parent(i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call %struct.resource* @bus_generic_alloc_resource(i64 %25, i64 %26, i32 %27, i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store %struct.resource* %33, %struct.resource** %9, align 8
  br label %115

34:                                               ; preds = %8
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %104 [
    i32 128, label %36
    i32 129, label %36
  ]

36:                                               ; preds = %34, %34
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PCI_RID2BAR(i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %36
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %115

47:                                               ; preds = %42
  %48 = load i64, i64* %10, align 8
  %49 = call %struct.isab_pci_softc* @device_get_softc(i64 %48)
  store %struct.isab_pci_softc* %49, %struct.isab_pci_softc** %18, align 8
  %50 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %18, align 8
  %51 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %56, align 8
  %58 = icmp eq %struct.resource* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %47
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call %struct.resource* @bus_alloc_resource(i64 %60, i32 %61, i32* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %18, align 8
  %69 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store %struct.resource* %67, %struct.resource** %74, align 8
  br label %75

75:                                               ; preds = %59, %47
  %76 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %18, align 8
  %77 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.resource*, %struct.resource** %82, align 8
  %84 = icmp ne %struct.resource* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %75
  %86 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %18, align 8
  %87 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %85, %75
  %96 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %18, align 8
  %97 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %struct.resource*, %struct.resource** %102, align 8
  store %struct.resource* %103, %struct.resource** %9, align 8
  br label %115

104:                                              ; preds = %34
  %105 = load i64, i64* %10, align 8
  %106 = call i64 @device_get_parent(i64 %105)
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call %struct.resource* @BUS_ALLOC_RESOURCE(i64 %106, i64 %107, i32 %108, i32* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store %struct.resource* %114, %struct.resource** %9, align 8
  br label %115

115:                                              ; preds = %104, %95, %46, %24
  %116 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %116
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i64, i64, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_RID2BAR(i32) #1

declare dso_local %struct.isab_pci_softc* @device_get_softc(i64) #1

declare dso_local %struct.resource* @bus_alloc_resource(i64, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i64, i64, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
