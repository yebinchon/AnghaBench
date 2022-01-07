; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ofw_pci_softc = type { i32 }
%struct.rman = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"rman mismatch\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@PCI_RES_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @ofw_pci_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pci_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.ofw_pci_softc*, align 8
  %13 = alloca %struct.rman*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.ofw_pci_softc* @device_get_softc(i32 %15)
  store %struct.ofw_pci_softc* %16, %struct.ofw_pci_softc** %12, align 8
  %17 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.resource*, %struct.resource** %11, align 8
  %20 = call i32 @rman_get_flags(%struct.resource* %19)
  %21 = call %struct.rman* @ofw_pci_get_rman(%struct.ofw_pci_softc* %17, i32 %18, i32 %20)
  store %struct.rman* %21, %struct.rman** %13, align 8
  %22 = load %struct.rman*, %struct.rman** %13, align 8
  %23 = icmp eq %struct.rman* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.resource*, %struct.resource** %11, align 8
  %30 = call i32 @bus_generic_release_resource(i32 %25, i32 %26, i32 %27, i32 %28, %struct.resource* %29)
  store i32 %30, i32* %6, align 4
  br label %55

31:                                               ; preds = %5
  %32 = load %struct.resource*, %struct.resource** %11, align 8
  %33 = load %struct.rman*, %struct.rman** %13, align 8
  %34 = call i32 @rman_is_region_manager(%struct.resource* %32, %struct.rman* %33)
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.resource*, %struct.resource** %11, align 8
  %37 = call i32 @rman_get_flags(%struct.resource* %36)
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.resource*, %struct.resource** %11, align 8
  %46 = call i32 @bus_deactivate_resource(i32 %42, i32 %43, i32 %44, %struct.resource* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.resource*, %struct.resource** %11, align 8
  %54 = call i32 @rman_release_resource(%struct.resource* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %49, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @ofw_pci_get_rman(%struct.ofw_pci_softc*, i32, i32) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @bus_generic_release_resource(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @bus_deactivate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
