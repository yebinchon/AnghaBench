; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BACKTOBACK = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@AR724X_PCI_CRP_BASE = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@AR724X_PCI_RESET = common dso_local global i32 0, align 4
@ar71xx_soc = common dso_local global i64 0, align 8
@AR71XX_SOC_AR7240 = common dso_local global i64 0, align 8
@AR724X_PCI_APP_LTSSM_ENABLE = common dso_local global i32 0, align 4
@AR724X_PCI_APP = common dso_local global i32 0, align 4
@AR724X_PCI_RESET_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no PCIe controller found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AR71XX_SOC_AR7241 = common dso_local global i64 0, align 8
@AR71XX_SOC_AR7242 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar724x_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar724x_pci_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %6 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PCIM_CMD_BACKTOBACK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @AR724X_PCI_CRP_BASE, align 4
  %17 = load i32, i32* @PCIR_COMMAND, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ar724x_pci_write(i32 %16, i32 %17, i32 %18, i32 2)
  %20 = load i32, i32* @AR724X_PCI_CRP_BASE, align 4
  %21 = call i32 @ar724x_pci_write(i32 %20, i32 32, i32 535826432, i32 4)
  %22 = load i32, i32* @AR724X_PCI_CRP_BASE, align 4
  %23 = call i32 @ar724x_pci_write(i32 %22, i32 36, i32 535826432, i32 4)
  %24 = load i32, i32* @AR724X_PCI_RESET, align 4
  %25 = call i32 @ATH_READ_REG(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 7
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = call i32 @DELAY(i32 100000)
  %30 = load i32, i32* @AR724X_PCI_RESET, align 4
  %31 = call i32 @ATH_WRITE_REG(i32 %30, i32 0)
  %32 = call i32 @DELAY(i32 100)
  %33 = load i32, i32* @AR724X_PCI_RESET, align 4
  %34 = call i32 @ATH_WRITE_REG(i32 %33, i32 4)
  %35 = call i32 @DELAY(i32 100000)
  br label %36

36:                                               ; preds = %28, %1
  %37 = load i64, i64* @ar71xx_soc, align 8
  %38 = load i64, i64* @AR71XX_SOC_AR7240, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @AR724X_PCI_APP_LTSSM_ENABLE, align 4
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %36
  store i32 131009, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* @AR724X_PCI_APP, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ATH_WRITE_REG(i32 %44, i32 %45)
  %47 = load i32, i32* @AR724X_PCI_APP, align 4
  %48 = call i32 @ATH_READ_REG(i32 %47)
  %49 = call i32 @DELAY(i32 1000)
  %50 = load i32, i32* @AR724X_PCI_RESET, align 4
  %51 = call i32 @ATH_READ_REG(i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @AR724X_PCI_RESET_LINK_UP, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %77

60:                                               ; preds = %43
  %61 = load i64, i64* @ar71xx_soc, align 8
  %62 = load i64, i64* @AR71XX_SOC_AR7241, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* @ar71xx_soc, align 8
  %66 = load i64, i64* @AR71XX_SOC_AR7242, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @AR724X_PCI_APP, align 4
  %70 = call i32 @ATH_READ_REG(i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, 65536
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @AR724X_PCI_APP, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @ATH_WRITE_REG(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %64
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ar724x_pci_write(i32, i32, i32, i32) #1

declare dso_local i32 @ATH_READ_REG(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATH_WRITE_REG(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
