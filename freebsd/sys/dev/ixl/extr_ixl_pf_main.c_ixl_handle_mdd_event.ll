; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_mdd_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_handle_mdd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@IXL_PF_STATE_MDD_PENDING = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_handle_mdd_event(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %5 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %6 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %5, i32 0, i32 1
  store %struct.i40e_hw* %6, %struct.i40e_hw** %3, align 8
  %7 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %8 = call i32 @ixl_handle_tx_mdd_event(%struct.ixl_pf* %7)
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %10 = call i32 @ixl_handle_rx_mdd_event(%struct.ixl_pf* %9)
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 0
  %13 = load i32, i32* @IXL_PF_STATE_MDD_PENDING, align 4
  %14 = call i32 @atomic_clear_32(i32* %12, i32 %13)
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %16 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %17 = call i32 @rd32(%struct.i40e_hw* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @wr32(%struct.i40e_hw* %21, i32 %22, i32 %23)
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %26 = call i32 @ixl_flush(%struct.i40e_hw* %25)
  ret void
}

declare dso_local i32 @ixl_handle_tx_mdd_event(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_handle_rx_mdd_event(%struct.ixl_pf*) #1

declare dso_local i32 @atomic_clear_32(i32*, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
