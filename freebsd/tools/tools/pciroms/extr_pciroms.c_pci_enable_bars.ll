; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_enable_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_enable_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32, i32 }
%struct.pci_io = type { i32, i32, i32, i32 }

@PCI_CFG_CMD = common dso_local global i32 0, align 4
@PCIOCREAD = common dso_local global i32 0, align 4
@PCI_CMD_MEM_SPACE = common dso_local global i32 0, align 4
@PCIOCWRITE = common dso_local global i32 0, align 4
@PCI_CFG_ROM_BAR = common dso_local global i32 0, align 4
@base_addr = common dso_local global i32 0, align 4
@PCI_ROM_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pci_conf*, i64*)* @pci_enable_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_enable_bars(i32 %0, %struct.pci_conf* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pci_io, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %10 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %16 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @PCI_CFG_CMD, align 4
  %20 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 0
  store i32 2, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PCIOCREAD, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, %struct.pci_io* %8)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %59

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* @PCI_CMD_MEM_SPACE, align 4
  %33 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PCIOCWRITE, align 4
  %38 = call i32 @ioctl(i32 %36, i32 %37, %struct.pci_io* %8)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %59

41:                                               ; preds = %27
  %42 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %43 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @PCI_CFG_ROM_BAR, align 4
  %47 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 0
  store i32 4, i32* %48, align 4
  %49 = load i32, i32* @base_addr, align 4
  %50 = load i32, i32* @PCI_ROM_ACTIVATE, align 4
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PCIOCWRITE, align 4
  %55 = call i32 @ioctl(i32 %53, i32 %54, %struct.pci_io* %8)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %59

58:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57, %40, %26, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ioctl(i32, i32, %struct.pci_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
