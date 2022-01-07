; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_testrombar.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_testrombar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32, i32 }
%struct.pci_io = type { i32, i32, i32, i32 }

@PCI_CFG_ROM_BAR = common dso_local global i32 0, align 4
@PCIOCWRITE = common dso_local global i32 0, align 4
@PCIOCREAD = common dso_local global i32 0, align 4
@PCI_ROM_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pci_conf*)* @pci_testrombar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_testrombar(i32 %0, %struct.pci_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_conf*, align 8
  %6 = alloca %struct.pci_io, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %9 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %16 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @PCI_CFG_ROM_BAR, align 4
  %20 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %6, i32 0, i32 0
  store i32 4, i32* %21, align 4
  %22 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %6, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PCIOCWRITE, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.pci_io* %6)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PCIOCREAD, align 4
  %32 = call i32 @ioctl(i32 %30, i32 %31, %struct.pci_io* %6)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %56

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCI_ROM_ADDR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCI_ROM_ADDR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %6, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PCIOCWRITE, align 4
  %51 = call i32 @ioctl(i32 %49, i32 %50, %struct.pci_io* %6)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %53, %34, %27, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ioctl(i32, i32, %struct.pci_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
