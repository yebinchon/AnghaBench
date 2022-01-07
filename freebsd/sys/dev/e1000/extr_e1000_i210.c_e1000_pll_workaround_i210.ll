; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_pll_workaround_i210.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_pll_workaround_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_WUC = common dso_local global i32 0, align 4
@E1000_MDICNFG = common dso_local global i32 0, align 4
@E1000_MDICNFG_EXT_MDIO = common dso_local global i32 0, align 4
@E1000_INVM_AUTOLOAD = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_INVM_DEFAULT_AL = common dso_local global i32 0, align 4
@E1000_INVM_PLL_WO_VAL = common dso_local global i32 0, align 4
@E1000_MAX_PLL_TRIES = common dso_local global i32 0, align 4
@E1000_PHY_PLL_FREQ_PAGE = common dso_local global i32 0, align 4
@E1000_PHY_PLL_FREQ_REG = common dso_local global i32 0, align 4
@E1000_PHY_PLL_UNCONF = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PHYPDEN = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDLPE = common dso_local global i32 0, align 4
@E1000_EEARBC_I210 = common dso_local global i32 0, align 4
@E1000_PCI_PMCSR = common dso_local global i32 0, align 4
@E1000_PCI_PMCSR_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_pll_workaround_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_pll_workaround_i210(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_WUC, align 4
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_MDICNFG, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @E1000_MDICNFG_EXT_MDIO, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_MDICNFG, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %24, i32 %25, i32 %26)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = load i32, i32* @E1000_INVM_AUTOLOAD, align 4
  %30 = call i32 @e1000_read_invm_word_i210(%struct.e1000_hw* %28, i32 %29, i32* %9)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @E1000_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @E1000_INVM_DEFAULT_AL, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %1
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @E1000_INVM_PLL_WO_VAL, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %124, %36
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @E1000_MAX_PLL_TRIES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %127

44:                                               ; preds = %40
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = load i32, i32* @E1000_PHY_PLL_FREQ_PAGE, align 4
  %47 = load i32, i32* @E1000_PHY_PLL_FREQ_REG, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @e1000_read_phy_reg_gs40g(%struct.e1000_hw* %45, i32 %48, i32* %10)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @E1000_PHY_PLL_UNCONF, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @E1000_PHY_PLL_UNCONF, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %127

57:                                               ; preds = %44
  %58 = load i32, i32* @E1000_ERR_PHY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = load i32, i32* @E1000_CTRL, align 4
  %63 = call i32 @E1000_READ_REG(%struct.e1000_hw* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = load i32, i32* @E1000_CTRL, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %64, i32 %65, i32 %68)
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = load i32, i32* @E1000_CTRL_EXT, align 4
  %72 = call i32 @E1000_READ_REG(%struct.e1000_hw* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @E1000_CTRL_EXT_PHYPDEN, align 4
  %74 = load i32, i32* @E1000_CTRL_EXT_SDLPE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = load i32, i32* @E1000_CTRL_EXT, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %78, i32 %79, i32 %80)
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %83 = load i32, i32* @E1000_WUC, align 4
  %84 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %82, i32 %83, i32 0)
  %85 = load i32, i32* @E1000_INVM_AUTOLOAD, align 4
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %12, align 4
  %88 = shl i32 %87, 16
  %89 = or i32 %86, %88
  store i32 %89, i32* %8, align 4
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = load i32, i32* @E1000_EEARBC_I210, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %90, i32 %91, i32 %92)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %95 = load i32, i32* @E1000_PCI_PMCSR, align 4
  %96 = call i32 @e1000_read_pci_cfg(%struct.e1000_hw* %94, i32 %95, i32* %11)
  %97 = load i32, i32* @E1000_PCI_PMCSR_D3, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %101 = load i32, i32* @E1000_PCI_PMCSR, align 4
  %102 = call i32 @e1000_write_pci_cfg(%struct.e1000_hw* %100, i32 %101, i32* %11)
  %103 = call i32 @msec_delay(i32 1)
  %104 = load i32, i32* @E1000_PCI_PMCSR_D3, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %109 = load i32, i32* @E1000_PCI_PMCSR, align 4
  %110 = call i32 @e1000_write_pci_cfg(%struct.e1000_hw* %108, i32 %109, i32* %11)
  %111 = load i32, i32* @E1000_INVM_AUTOLOAD, align 4
  %112 = shl i32 %111, 4
  %113 = load i32, i32* %9, align 4
  %114 = shl i32 %113, 16
  %115 = or i32 %112, %114
  store i32 %115, i32* %8, align 4
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %117 = load i32, i32* @E1000_EEARBC_I210, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %116, i32 %117, i32 %118)
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %121 = load i32, i32* @E1000_WUC, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %60
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %40

127:                                              ; preds = %55, %40
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %129 = load i32, i32* @E1000_MDICNFG, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %128, i32 %129, i32 %130)
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_read_invm_word_i210(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_read_phy_reg_gs40g(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_read_pci_cfg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_pci_cfg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
