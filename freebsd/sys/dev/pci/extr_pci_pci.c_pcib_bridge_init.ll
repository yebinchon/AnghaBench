; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_bridge_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@PCIR_IOBASEH_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITH_1 = common dso_local global i32 0, align 4
@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEL_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEH_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITH_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcib_bridge_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %5 = call i32 @pci_write_config(i32 %3, i32 %4, i32 255, i32 1)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @PCIR_IOBASEH_1, align 4
  %8 = call i32 @pci_write_config(i32 %6, i32 %7, i32 65535, i32 2)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %11 = call i32 @pci_write_config(i32 %9, i32 %10, i32 0, i32 1)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @PCIR_IOLIMITH_1, align 4
  %14 = call i32 @pci_write_config(i32 %12, i32 %13, i32 0, i32 2)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %17 = call i32 @pci_write_config(i32 %15, i32 %16, i32 65535, i32 2)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @PCIR_MEMLIMIT_1, align 4
  %20 = call i32 @pci_write_config(i32 %18, i32 %19, i32 0, i32 2)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %23 = call i32 @pci_write_config(i32 %21, i32 %22, i32 65535, i32 2)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @PCIR_PMBASEH_1, align 4
  %26 = call i32 @pci_write_config(i32 %24, i32 %25, i32 -1, i32 4)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %29 = call i32 @pci_write_config(i32 %27, i32 %28, i32 0, i32 2)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @PCIR_PMLIMITH_1, align 4
  %32 = call i32 @pci_write_config(i32 %30, i32 %31, i32 0, i32 4)
  ret void
}

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
