; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_get_powerstate_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_get_powerstate_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@PCIM_PSTAT_DMASK = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D0 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D1 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D2 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D3 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_get_powerstate_method(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pci_devinfo* @device_get_ivars(i32 %9)
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %5, align 8
  %11 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %12 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %11, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PCI_READ_CONFIG(i32 %19, i32 %20, i32 %24, i32 2)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCIM_PSTAT_DMASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %37 [
    i32 131, label %29
    i32 130, label %31
    i32 129, label %33
    i32 128, label %35
  ]

29:                                               ; preds = %18
  %30 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  store i32 %30, i32* %8, align 4
  br label %39

31:                                               ; preds = %18
  %32 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  store i32 %32, i32* %8, align 4
  br label %39

33:                                               ; preds = %18
  %34 = load i32, i32* @PCI_POWERSTATE_D2, align 4
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %18
  %36 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  store i32 %36, i32* %8, align 4
  br label %39

37:                                               ; preds = %18
  %38 = load i32, i32* @PCI_POWERSTATE_UNKNOWN, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %31, %29
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @PCI_READ_CONFIG(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
