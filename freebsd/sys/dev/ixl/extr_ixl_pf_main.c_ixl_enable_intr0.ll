; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_intr0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_enable_intr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_PFINT_DYN_CTL0_INTENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_CLEARPBA_MASK = common dso_local global i32 0, align 4
@IXL_ITR_NONE = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_enable_intr0(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %4 = load i32, i32* @I40E_PFINT_DYN_CTL0_INTENA_MASK, align 4
  %5 = load i32, i32* @I40E_PFINT_DYN_CTL0_CLEARPBA_MASK, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IXL_ITR_NONE, align 4
  %8 = load i32, i32* @I40E_PFINT_DYN_CTL0_ITR_INDX_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = or i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %12 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @wr32(%struct.i40e_hw* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
