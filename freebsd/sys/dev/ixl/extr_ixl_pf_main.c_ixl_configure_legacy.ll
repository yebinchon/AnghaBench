; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_configure_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_configure_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ixl_pf = type { i32, i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_PFINT_ICR0_ENA_ECC_ERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_GRST_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_HMC_ERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_VFLR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ADMINQ_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_STAT_CTL0 = common dso_local global i32 0, align 4
@IXL_ITR_NONE = common dso_local global i32 0, align 4
@I40E_PFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0 = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@IXL_RX_ITR = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_TX = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@IXL_TX_ITR = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@IXL_QUEUE_EOL = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@rxr = common dso_local global %struct.TYPE_8__* null, align 8
@txr = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_configure_legacy(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %6 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %6, i32 0, i32 3
  store %struct.i40e_hw* %7, %struct.i40e_hw** %3, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 2
  store %struct.ixl_vsi* %9, %struct.ixl_vsi** %4, align 8
  %10 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %11 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %14 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %12, i32* %18, align 4
  %19 = load i32, i32* @I40E_PFINT_ICR0_ENA_ECC_ERR_MASK, align 4
  %20 = load i32, i32* @I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @I40E_PFINT_ICR0_ENA_GRST_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @I40E_PFINT_ICR0_ENA_HMC_ERR_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @I40E_PFINT_ICR0_ENA_VFLR_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @I40E_PFINT_ICR0_ENA_ADMINQ_MASK, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %35 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @wr32(%struct.i40e_hw* %34, i32 %35, i32 %36)
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %39 = load i32, i32* @I40E_PFINT_STAT_CTL0, align 4
  %40 = load i32, i32* @IXL_ITR_NONE, align 4
  %41 = load i32, i32* @I40E_PFINT_STAT_CTL0_OTHER_ITR_INDX_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @wr32(%struct.i40e_hw* %38, i32 %39, i32 %42)
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %45 = load i32, i32* @I40E_PFINT_LNKLST0, align 4
  %46 = call i32 @wr32(%struct.i40e_hw* %44, i32 %45, i32 0)
  %47 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %48 = load i32, i32* @IXL_RX_ITR, align 4
  %49 = load i32, i32* @I40E_QINT_RQCTL_ITR_INDX_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32, i32* @I40E_QUEUE_TYPE_TX, align 4
  %53 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %57 = call i32 @I40E_QINT_RQCTL(i32 0)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @wr32(%struct.i40e_hw* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %61 = load i32, i32* @IXL_TX_ITR, align 4
  %62 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load i32, i32* @IXL_QUEUE_EOL, align 4
  %66 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  store i32 %68, i32* %5, align 4
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %70 = call i32 @I40E_QINT_TQCTL(i32 0)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @wr32(%struct.i40e_hw* %69, i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
