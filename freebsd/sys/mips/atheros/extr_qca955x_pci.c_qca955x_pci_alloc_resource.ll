; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ar71xx_pci_softc = type { %struct.rman, %struct.rman }
%struct.rman = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @qca955x_pci_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @qca955x_pci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ar71xx_pci_softc*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca %struct.rman*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.ar71xx_pci_softc* @device_get_softc(i32 %21)
  store %struct.ar71xx_pci_softc* %22, %struct.ar71xx_pci_softc** %18, align 8
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %30 [
    i32 129, label %24
    i32 128, label %27
  ]

24:                                               ; preds = %8
  %25 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %18, align 8
  %26 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %25, i32 0, i32 1
  store %struct.rman* %26, %struct.rman** %20, align 8
  br label %31

27:                                               ; preds = %8
  %28 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %18, align 8
  %29 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %28, i32 0, i32 0
  store %struct.rman* %29, %struct.rman** %20, align 8
  br label %31

30:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %65

31:                                               ; preds = %27, %24
  %32 = load %struct.rman*, %struct.rman** %20, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.resource* @rman_reserve_resource(%struct.rman* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct.resource* %38, %struct.resource** %19, align 8
  %39 = load %struct.resource*, %struct.resource** %19, align 8
  %40 = icmp eq %struct.resource* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %65

42:                                               ; preds = %31
  %43 = load %struct.resource*, %struct.resource** %19, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rman_set_rid(%struct.resource* %43, i32 %45)
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @RF_ACTIVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.resource*, %struct.resource** %19, align 8
  %57 = call i64 @bus_activate_resource(i32 %52, i32 %53, i32 %55, %struct.resource* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.resource*, %struct.resource** %19, align 8
  %61 = call i32 @rman_release_resource(%struct.resource* %60)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %65

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %64, %struct.resource** %9, align 8
  br label %65

65:                                               ; preds = %63, %59, %41, %30
  %66 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %66
}

declare dso_local %struct.ar71xx_pci_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
