; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octopci_softc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCTEON_FEATURE_PCIE = common dso_local global i32 0, align 4
@OCTEON_IRQ_PCI_INT0 = common dso_local global i32 0, align 4
@OCTEON_IRQ_PCI_INT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @octopci_route_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octopci_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.octopci_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.octopci_softc* @device_get_softc(i32 %13)
  store %struct.octopci_softc* %14, %struct.octopci_softc** %8, align 8
  %15 = load i32, i32* @OCTEON_FEATURE_PCIE, align 4
  %16 = call i64 @octeon_has_feature(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @OCTEON_IRQ_PCI_INT0, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pci_get_bus(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pci_get_slot(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_get_function(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %33 [
  ]

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %35, %36
  %38 = sub i32 %37, 3
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @OCTEON_IRQ_PCI_INT0, align 4
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 3
  %42 = add i32 %39, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.octopci_softc* @device_get_softc(i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
