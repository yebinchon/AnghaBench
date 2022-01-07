; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_xlp_pcib_hardware_swap_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_xlp_pcib_hardware_swap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BRIDGE_PCIEMEM_BASE0 = common dso_local global i64 0, align 8
@PCIE_BYTE_SWAP_MEM_BASE = common dso_local global i32 0, align 4
@BRIDGE_PCIEMEM_LIMIT0 = common dso_local global i64 0, align 8
@PCIE_BYTE_SWAP_MEM_LIM = common dso_local global i32 0, align 4
@BRIDGE_PCIEIO_BASE0 = common dso_local global i64 0, align 8
@PCIE_BYTE_SWAP_IO_BASE = common dso_local global i32 0, align 4
@BRIDGE_PCIEIO_LIMIT0 = common dso_local global i64 0, align 8
@PCIE_BYTE_SWAP_IO_LIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @xlp_pcib_hardware_swap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_pcib_hardware_swap_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @XLP_IO_PCIE_OFFSET(i32 %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @nlm_dev_exists(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @nlm_get_bridge_regbase(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @nlm_pcicfg_base(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* @BRIDGE_PCIEMEM_BASE0, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @nlm_read_bridge_reg(i32 %21, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PCIE_BYTE_SWAP_MEM_BASE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @nlm_write_pci_reg(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* @BRIDGE_PCIEMEM_LIMIT0, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @nlm_read_bridge_reg(i32 %31, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PCIE_BYTE_SWAP_MEM_LIM, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 4095
  %41 = call i32 @nlm_write_pci_reg(i32 %37, i32 %38, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* @BRIDGE_PCIEIO_BASE0, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @nlm_read_bridge_reg(i32 %42, i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PCIE_BYTE_SWAP_IO_BASE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @nlm_write_pci_reg(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* @BRIDGE_PCIEIO_LIMIT0, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i32 @nlm_read_bridge_reg(i32 %52, i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PCIE_BYTE_SWAP_IO_LIM, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, 4095
  %62 = call i32 @nlm_write_pci_reg(i32 %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @XLP_IO_PCIE_OFFSET(i32, i32) #1

declare dso_local i32 @nlm_dev_exists(i32) #1

declare dso_local i32 @nlm_get_bridge_regbase(i32) #1

declare dso_local i32 @nlm_pcicfg_base(i32) #1

declare dso_local i32 @nlm_read_bridge_reg(i32, i64) #1

declare dso_local i32 @nlm_write_pci_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
