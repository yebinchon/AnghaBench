; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pci.c_ofw_pci_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pci.c_ofw_pci_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ofw_pci_softc = type { %struct.rman, %struct.rman }
%struct.rman = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_pci_adjust_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ofw_pci_softc*, align 8
  %15 = alloca %struct.rman*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.ofw_pci_softc* @device_get_softc(i32 %16)
  store %struct.ofw_pci_softc* %17, %struct.ofw_pci_softc** %14, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %33 [
    i32 129, label %19
    i32 128, label %27
    i32 130, label %30
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.resource*, %struct.resource** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @bus_generic_adjust_resource(i32 %20, i32 %21, i32 %22, %struct.resource* %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %47

27:                                               ; preds = %6
  %28 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %14, align 8
  %29 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %28, i32 0, i32 1
  store %struct.rman* %29, %struct.rman** %15, align 8
  br label %35

30:                                               ; preds = %6
  %31 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %14, align 8
  %32 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %31, i32 0, i32 0
  store %struct.rman* %32, %struct.rman** %15, align 8
  br label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %7, align 4
  br label %47

35:                                               ; preds = %30, %27
  %36 = load %struct.resource*, %struct.resource** %11, align 8
  %37 = load %struct.rman*, %struct.rman** %15, align 8
  %38 = call i64 @rman_is_region_manager(%struct.resource* %36, %struct.rman* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %7, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load %struct.resource*, %struct.resource** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @rman_adjust_resource(%struct.resource* %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %40, %33, %19
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_adjust_resource(i32, i32, i32, %struct.resource*, i32, i32) #1

declare dso_local i64 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @rman_adjust_resource(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
