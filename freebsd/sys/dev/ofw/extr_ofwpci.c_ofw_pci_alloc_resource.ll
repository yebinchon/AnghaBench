; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ofw_pci_softc = type { i32 }
%struct.rman = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to reserve resource for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to activate resource for %s\0A\00", align 1
@PCI_RES_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @ofw_pci_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @ofw_pci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ofw_pci_softc*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca %struct.rman*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %21, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %17, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.ofw_pci_softc* @device_get_softc(i32 %29)
  store %struct.ofw_pci_softc* %30, %struct.ofw_pci_softc** %18, align 8
  %31 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %18, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call %struct.rman* @ofw_pci_get_rman(%struct.ofw_pci_softc* %31, i32 %32, i32 %33)
  store %struct.rman* %34, %struct.rman** %20, align 8
  %35 = load %struct.rman*, %struct.rman** %20, align 8
  %36 = icmp eq %struct.rman* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %21, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.resource* @bus_generic_alloc_resource(i32 %38, i32 %39, i32 %40, i32* %41, i32 %42, i32 %43, i32 %44, i32 %47)
  store %struct.resource* %48, %struct.resource** %9, align 8
  br label %89

49:                                               ; preds = %8
  %50 = load %struct.rman*, %struct.rman** %20, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.resource* @rman_reserve_resource(%struct.rman* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store %struct.resource* %56, %struct.resource** %19, align 8
  %57 = load %struct.resource*, %struct.resource** %19, align 8
  %58 = icmp eq %struct.resource* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @device_get_nameunit(i32 %61)
  %63 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %89

64:                                               ; preds = %49
  %65 = load %struct.resource*, %struct.resource** %19, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rman_set_rid(%struct.resource* %65, i32 %67)
  %69 = load i32, i32* %21, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %64
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %19, align 8
  %77 = call i64 @bus_activate_resource(i32 %72, i32 %73, i32 %75, %struct.resource* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @device_get_nameunit(i32 %81)
  %83 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.resource*, %struct.resource** %19, align 8
  %85 = call i32 @rman_release_resource(%struct.resource* %84)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %89

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %88, %struct.resource** %9, align 8
  br label %89

89:                                               ; preds = %87, %79, %59, %37
  %90 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %90
}

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @ofw_pci_get_rman(%struct.ofw_pci_softc*, i32, i32) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
