; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd_bus.c_vmd_bus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd_bus.c_vmd_bus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.vmd_softc = type { %struct.resource** }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @vmd_bus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @vmd_bus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vmd_softc*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  %21 = call %struct.vmd_softc* @device_get_softc(i32 %20)
  store %struct.vmd_softc* %21, %struct.vmd_softc** %18, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.vmd_softc*, %struct.vmd_softc** %18, align 8
  %32 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %31, i32 0, i32 0
  %33 = load %struct.resource**, %struct.resource*** %32, align 8
  %34 = getelementptr inbounds %struct.resource*, %struct.resource** %33, i64 1
  %35 = load %struct.resource*, %struct.resource** %34, align 8
  store %struct.resource* %35, %struct.resource** %9, align 8
  br label %63

36:                                               ; preds = %25
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.vmd_softc*, %struct.vmd_softc** %18, align 8
  %43 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %42, i32 0, i32 0
  %44 = load %struct.resource**, %struct.resource*** %43, align 8
  %45 = getelementptr inbounds %struct.resource*, %struct.resource** %44, i64 2
  %46 = load %struct.resource*, %struct.resource** %45, align 8
  store %struct.resource* %46, %struct.resource** %9, align 8
  br label %63

47:                                               ; preds = %36
  %48 = load %struct.vmd_softc*, %struct.vmd_softc** %18, align 8
  %49 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %48, i32 0, i32 0
  %50 = load %struct.resource**, %struct.resource*** %49, align 8
  %51 = getelementptr inbounds %struct.resource*, %struct.resource** %50, i64 2
  %52 = load %struct.resource*, %struct.resource** %51, align 8
  store %struct.resource* %52, %struct.resource** %9, align 8
  br label %63

53:                                               ; preds = %8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call %struct.resource* @pci_alloc_resource(i32 %54, i32 %55, i32 %56, i32* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store %struct.resource* %62, %struct.resource** %9, align 8
  br label %63

63:                                               ; preds = %53, %47, %41, %30
  %64 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %64
}

declare dso_local %struct.vmd_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @pci_alloc_resource(i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
