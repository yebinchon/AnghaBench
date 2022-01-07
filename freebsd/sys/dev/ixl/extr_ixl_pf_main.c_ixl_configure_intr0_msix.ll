; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_configure_intr0_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_configure_intr0_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0 = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ECC_ERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_GRST_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_HMC_ERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ADMINQ_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_VFLR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0 = common dso_local global i32 0, align 4
@IXL_RX_ITR = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_INTENA_MSK_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_STAT_CTL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_configure_intr0_msix(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %5 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %6 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %5, i32 0, i32 0
  store %struct.i40e_hw* %6, %struct.i40e_hw** %3, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %8 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %9 = call i32 @wr32(%struct.i40e_hw* %7, i32 %8, i32 0)
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %11 = load i32, i32* @I40E_PFINT_ICR0, align 4
  %12 = call i32 @rd32(%struct.i40e_hw* %10, i32 %11)
  %13 = load i32, i32* @I40E_PFINT_ICR0_ENA_ECC_ERR_MASK, align 4
  %14 = load i32, i32* @I40E_PFINT_ICR0_ENA_GRST_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @I40E_PFINT_ICR0_ENA_HMC_ERR_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @I40E_PFINT_ICR0_ENA_ADMINQ_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @I40E_PFINT_ICR0_ENA_VFLR_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %29 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @wr32(%struct.i40e_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %33 = load i32, i32* @I40E_PFINT_LNKLST0, align 4
  %34 = call i32 @wr32(%struct.i40e_hw* %32, i32 %33, i32 2047)
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %36 = load i32, i32* @IXL_RX_ITR, align 4
  %37 = call i32 @I40E_PFINT_ITR0(i32 %36)
  %38 = call i32 @wr32(%struct.i40e_hw* %35, i32 %37, i32 62)
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %40 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %41 = load i32, i32* @I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK, align 4
  %42 = load i32, i32* @I40E_PFINT_DYN_CTL0_INTENA_MSK_MASK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @wr32(%struct.i40e_hw* %39, i32 %40, i32 %43)
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %46 = load i32, i32* @I40E_PFINT_STAT_CTL0, align 4
  %47 = call i32 @wr32(%struct.i40e_hw* %45, i32 %46, i32 0)
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_PFINT_ITR0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
