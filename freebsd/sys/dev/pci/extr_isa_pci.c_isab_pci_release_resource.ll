; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_isa_pci.c_isab_pci_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_isa_pci.c_isab_pci_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.isab_pci_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource* }

@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"isa_pci resource mismatch\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"isa_pci resource reference count underflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, %struct.resource*)* @isab_pci_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isab_pci_release_resource(i64 %0, i64 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.isab_pci_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @device_get_parent(i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.resource*, %struct.resource** %11, align 8
  %25 = call i32 @bus_generic_release_resource(i64 %20, i64 %21, i32 %22, i32 %23, %struct.resource* %24)
  store i32 %25, i32* %6, align 4
  br label %129

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %121 [
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %26, %26
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @PCI_RID2BAR(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %6, align 4
  br label %129

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = call %struct.isab_pci_softc* @device_get_softc(i64 %40)
  store %struct.isab_pci_softc* %41, %struct.isab_pci_softc** %12, align 8
  %42 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %12, align 8
  %43 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.resource*, %struct.resource** %48, align 8
  %50 = icmp eq %struct.resource* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %6, align 4
  br label %129

53:                                               ; preds = %39
  %54 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %12, align 8
  %55 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load %struct.resource*, %struct.resource** %60, align 8
  %62 = load %struct.resource*, %struct.resource** %11, align 8
  %63 = icmp eq %struct.resource* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @KASSERT(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %12, align 8
  %67 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %85

75:                                               ; preds = %53
  %76 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %12, align 8
  %77 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  store i32 0, i32* %6, align 4
  br label %129

85:                                               ; preds = %53
  %86 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %12, align 8
  %87 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @KASSERT(i32 %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.resource*, %struct.resource** %11, align 8
  %101 = call i32 @bus_release_resource(i64 %97, i32 %98, i32 %99, %struct.resource* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %85
  %105 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %12, align 8
  %106 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store %struct.resource* null, %struct.resource** %111, align 8
  %112 = load %struct.isab_pci_softc*, %struct.isab_pci_softc** %12, align 8
  %113 = getelementptr inbounds %struct.isab_pci_softc, %struct.isab_pci_softc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %104, %85
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %6, align 4
  br label %129

121:                                              ; preds = %26
  %122 = load i64, i64* %7, align 8
  %123 = call i64 @device_get_parent(i64 %122)
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.resource*, %struct.resource** %11, align 8
  %128 = call i32 @BUS_RELEASE_RESOURCE(i64 %123, i64 %124, i32 %125, i32 %126, %struct.resource* %127)
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %121, %119, %75, %51, %37, %19
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @bus_generic_release_resource(i64, i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @PCI_RID2BAR(i32) #1

declare dso_local %struct.isab_pci_softc* @device_get_softc(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i64, i64, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
