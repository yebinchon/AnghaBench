; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_cardbus_windows.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_cardbus_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@PCIR_BRIDGECTL_2 = common dso_local global i32 0, align 4
@PCIR_MEMBASE0_2 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT0_2 = common dso_local global i32 0, align 4
@CBB_BCR_PREFETCH_0_ENABLE = common dso_local global i32 0, align 4
@PCIR_MEMBASE1_2 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT1_2 = common dso_local global i32 0, align 4
@CBB_BCR_PREFETCH_1_ENABLE = common dso_local global i32 0, align 4
@PCIR_IOBASE0_2 = common dso_local global i32 0, align 4
@PCIR_IOLIMIT0_2 = common dso_local global i32 0, align 4
@PCIR_IOBASE1_2 = common dso_local global i32 0, align 4
@PCIR_IOLIMIT1_2 = common dso_local global i32 0, align 4
@CBB_BCR_ISA_ENABLE = common dso_local global i32 0, align 4
@CBB_BCR_VGA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*)* @print_cardbus_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cardbus_windows(i32 %0, %struct.pci_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_conf*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %8 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %7, i32 0, i32 0
  %9 = load i32, i32* @PCIR_BRIDGECTL_2, align 4
  %10 = call i32 @read_config(i32 %6, i32* %8, i32 %9, i32 2)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %13 = load i32, i32* @PCIR_MEMBASE0_2, align 4
  %14 = load i32, i32* @PCIR_MEMLIMIT0_2, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CBB_BCR_PREFETCH_0_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @print_cardbus_mem_window(i32 %11, %struct.pci_conf* %12, i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %21 = load i32, i32* @PCIR_MEMBASE1_2, align 4
  %22 = load i32, i32* @PCIR_MEMLIMIT1_2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CBB_BCR_PREFETCH_1_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @print_cardbus_mem_window(i32 %19, %struct.pci_conf* %20, i32 %21, i32 %22, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %29 = load i32, i32* @PCIR_IOBASE0_2, align 4
  %30 = load i32, i32* @PCIR_IOLIMIT0_2, align 4
  %31 = call i32 @print_cardbus_io_window(i32 %27, %struct.pci_conf* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %34 = load i32, i32* @PCIR_IOBASE1_2, align 4
  %35 = load i32, i32* @PCIR_IOLIMIT1_2, align 4
  %36 = call i32 @print_cardbus_io_window(i32 %32, %struct.pci_conf* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @CBB_BCR_ISA_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CBB_BCR_VGA_ENABLE, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @print_special_decode(i32 %39, i32 %42, i32 0)
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i32, i32) #1

declare dso_local i32 @print_cardbus_mem_window(i32, %struct.pci_conf*, i32, i32, i32) #1

declare dso_local i32 @print_cardbus_io_window(i32, %struct.pci_conf*, i32, i32) #1

declare dso_local i32 @print_special_decode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
