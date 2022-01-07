; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_invltlb_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mp_x86.c_invltlb_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smp_tlb_generation = common dso_local global i32 0, align 4
@smp_tlb_pmap = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@smp_tlb_done = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@ipi_invltlb_counts = common dso_local global i32** null, align 8
@xhits_gbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invltlb_handler() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @smp_tlb_generation, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @smp_tlb_pmap, align 8
  %4 = load i64, i64* @kernel_pmap, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @invltlb_glob()
  br label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @invltlb()
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, i32* @smp_tlb_done, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @PCPU_SET(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @invltlb_glob(...) #1

declare dso_local i32 @invltlb(...) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
