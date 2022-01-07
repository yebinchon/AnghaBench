; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_cardbus_io_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_cardbus_io_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@PCIM_CBBIO_MASK = common dso_local global i32 0, align 4
@PCIM_CBBIO_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"I/O Port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i32, i32)* @print_cardbus_io_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cardbus_io_window(i32 %0, %struct.pci_conf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %15 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %14, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @read_config(i32 %13, i32* %15, i32 %16, i32 2)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @PCIM_CBBIO_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @PCIM_CBBIO_32, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %26 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @read_config(i32 %24, i32* %26, i32 %27, i32 4)
  %29 = call i32 @PCI_CBBIOBASE(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %32 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @read_config(i32 %30, i32* %32, i32 %33, i32 4)
  %35 = call i32 @PCI_CBBIOBASE(i32 %34)
  store i32 %35, i32* %10, align 4
  store i32 32, i32* %12, align 4
  br label %45

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @PCI_CBBIOBASE(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %41 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @read_config(i32 %39, i32* %41, i32 %42, i32 2)
  %44 = call i32 @PCI_CBBIOBASE(i32 %43)
  store i32 %44, i32* %10, align 4
  store i32 16, i32* %12, align 4
  br label %45

45:                                               ; preds = %36, %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @print_window(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i32, i32) #1

declare dso_local i32 @PCI_CBBIOBASE(i32) #1

declare dso_local i32 @print_window(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
