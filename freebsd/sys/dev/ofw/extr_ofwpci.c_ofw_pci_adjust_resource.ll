; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.rman = type { i32 }
%struct.ofw_pci_softc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"rman mismatch\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"active resources cannot be adjusted\00", align 1
@PCI_RES_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*, i32, i32)* @ofw_pci_adjust_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pci_adjust_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rman*, align 8
  %15 = alloca %struct.ofw_pci_softc*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.ofw_pci_softc* @device_get_softc(i32 %16)
  store %struct.ofw_pci_softc* %17, %struct.ofw_pci_softc** %15, align 8
  %18 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %15, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.resource*, %struct.resource** %11, align 8
  %21 = call i32 @rman_get_flags(%struct.resource* %20)
  %22 = call %struct.rman* @ofw_pci_get_rman(%struct.ofw_pci_softc* %18, i32 %19, i32 %21)
  store %struct.rman* %22, %struct.rman** %14, align 8
  %23 = load %struct.rman*, %struct.rman** %14, align 8
  %24 = icmp eq %struct.rman* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.resource*, %struct.resource** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @bus_generic_adjust_resource(i32 %26, i32 %27, i32 %28, %struct.resource* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %50

33:                                               ; preds = %6
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = load %struct.rman*, %struct.rman** %14, align 8
  %36 = call i32 @rman_is_region_manager(%struct.resource* %34, %struct.rman* %35)
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.resource*, %struct.resource** %11, align 8
  %39 = call i32 @rman_get_flags(%struct.resource* %38)
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @rman_adjust_resource(%struct.resource* %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %33, %25
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @ofw_pci_get_rman(%struct.ofw_pci_softc*, i32, i32) #1

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @bus_generic_adjust_resource(i32, i32, i32, %struct.resource*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @rman_adjust_resource(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
