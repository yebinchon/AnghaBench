; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_disable_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_disable_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }
%struct.pci_io = type { i32, i64, i32, i32 }

@PCI_CFG_ROM_BAR = common dso_local global i32 0, align 4
@PCIOCWRITE = common dso_local global i32 0, align 4
@PCI_CFG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pci_conf*, i64*)* @pci_disable_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_disable_bars(i32 %0, %struct.pci_conf* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pci_io, align 8
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %10 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @PCI_CFG_ROM_BAR, align 4
  %14 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PCIOCWRITE, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, %struct.pci_io* %8)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %24 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @PCI_CFG_CMD, align 4
  %28 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.pci_io, %struct.pci_io* %8, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PCIOCWRITE, align 4
  %35 = call i32 @ioctl(i32 %33, i32 %34, %struct.pci_io* %8)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %40

39:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %37, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ioctl(i32, i32, %struct.pci_io*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
