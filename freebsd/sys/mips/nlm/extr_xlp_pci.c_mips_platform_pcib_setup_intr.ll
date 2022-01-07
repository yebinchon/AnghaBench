; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_mips_platform_pcib_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_mips_platform_pcib_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Interrupt allocation %ju != %ju\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pcib\00", align 1
@PCIE_MSI_EN = common dso_local global i32 0, align 4
@PCIE_MSI_VECTOR_INT_EN = common dso_local global i32 0, align 4
@PCIE_INT_EN0 = common dso_local global i32 0, align 4
@PCIE_MSI_INT_EN = common dso_local global i32 0, align 4
@PCIE_BRIDGE_CMD = common dso_local global i32 0, align 4
@PCIM_CMD_INTxDIS = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSI_ADDRL = common dso_local global i32 0, align 4
@MSI_MIPS_ADDR_BASE = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSI_ADDRH = common dso_local global i32 0, align 4
@PCIE_BRIDGE_MSI_CAP = common dso_local global i32 0, align 4
@PCIM_MSICTRL_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIM_MSICTRL_MMC_32 = common dso_local global i32 0, align 4
@bridge_pcie_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @mips_platform_pcib_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_platform_pcib_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.resource*, %struct.resource** %12, align 8
  %25 = call i32 @rman_activate_resource(%struct.resource* %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32, i32* %18, align 4
  store i32 %29, i32* %9, align 4
  br label %140

30:                                               ; preds = %8
  %31 = load %struct.resource*, %struct.resource** %12, align 8
  %32 = call i32 @rman_get_start(%struct.resource* %31)
  %33 = load %struct.resource*, %struct.resource** %12, align 8
  %34 = call i32 @rman_get_end(%struct.resource* %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.resource*, %struct.resource** %12, align 8
  %39 = call i32 @rman_get_start(%struct.resource* %38)
  %40 = load %struct.resource*, %struct.resource** %12, align 8
  %41 = call i32 @rman_get_end(%struct.resource* %40)
  %42 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %9, align 4
  br label %140

44:                                               ; preds = %30
  %45 = load %struct.resource*, %struct.resource** %12, align 8
  %46 = call i32 @rman_get_start(%struct.resource* %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %140

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @device_get_name(i32 %51)
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %140

56:                                               ; preds = %50
  %57 = load i32, i32* %19, align 4
  %58 = icmp sge i32 %57, 64
  br i1 %58, label %59, label %118

59:                                               ; preds = %56
  %60 = load i32, i32* %19, align 4
  %61 = sub nsw i32 %60, 64
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = srem i32 %62, 32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %140

66:                                               ; preds = %59
  %67 = call i32 (...) @nlm_nodeid()
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %19, align 4
  %69 = sdiv i32 %68, 32
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %22, align 4
  %72 = call i32 @XLP_IO_PCIE_OFFSET(i32 %70, i32 %71)
  %73 = call i32 @nlm_pcicfg_base(i32 %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* @PCIE_MSI_EN, align 4
  %76 = load i32, i32* @PCIE_MSI_VECTOR_INT_EN, align 4
  %77 = call i32 @nlm_write_pci_reg(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* @PCIE_INT_EN0, align 4
  %80 = call i32 @nlm_read_pci_reg(i32 %78, i32 %79)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* @PCIE_INT_EN0, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* @PCIE_MSI_INT_EN, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @nlm_write_pci_reg(i32 %81, i32 %82, i32 %85)
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* @PCIE_BRIDGE_CMD, align 4
  %89 = call i32 @nlm_read_pci_reg(i32 %87, i32 %88)
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* @PCIE_BRIDGE_CMD, align 4
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* @PCIM_CMD_INTxDIS, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @nlm_write_pci_reg(i32 %90, i32 %91, i32 %94)
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* @PCIE_BRIDGE_MSI_ADDRL, align 4
  %98 = load i32, i32* @MSI_MIPS_ADDR_BASE, align 4
  %99 = call i32 @nlm_write_pci_reg(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* @PCIE_BRIDGE_MSI_ADDRH, align 4
  %102 = call i32 @nlm_write_pci_reg(i32 %100, i32 %101, i32 0)
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* @PCIE_BRIDGE_MSI_CAP, align 4
  %105 = call i32 @nlm_read_pci_reg(i32 %103, i32 %104)
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* @PCIE_BRIDGE_MSI_CAP, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  %112 = load i32, i32* @PCIM_MSICTRL_MMC_32, align 4
  %113 = shl i32 %112, 16
  %114 = or i32 %111, %113
  %115 = call i32 @nlm_write_pci_reg(i32 %106, i32 %107, i32 %114)
  %116 = load i32, i32* %22, align 4
  %117 = call i32 @PIC_PCIE_IRQ(i32 %116)
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %66, %56
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @PIC_PCIE_IRQ(i32 0)
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @PIC_PCIE_IRQ(i32 3)
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* @bridge_pcie_ack, align 4
  %129 = call i32 @xlp_set_bus_ack(i32 %127, i32 %128, i32* null)
  br label %130

130:                                              ; preds = %126, %122, %118
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @device_get_name(i32 %131)
  %133 = load i32*, i32** %14, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i8**, i8*** %17, align 8
  %139 = call i32 @cpu_establish_hardintr(i32 %132, i32* %133, i32* %134, i8* %135, i32 %136, i32 %137, i8** %138)
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %130, %65, %55, %49, %36, %28
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @nlm_nodeid(...) #1

declare dso_local i32 @nlm_pcicfg_base(i32) #1

declare dso_local i32 @XLP_IO_PCIE_OFFSET(i32, i32) #1

declare dso_local i32 @nlm_write_pci_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_read_pci_reg(i32, i32) #1

declare dso_local i32 @PIC_PCIE_IRQ(i32) #1

declare dso_local i32 @xlp_set_bus_ack(i32, i32, i32*) #1

declare dso_local i32 @cpu_establish_hardintr(i32, i32*, i32*, i8*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
