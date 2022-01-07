; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_lmem_map1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_lmem_map1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE_C_CACHE = common dso_local global i32 0, align 4
@PTE_D = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PTE_G = common dso_local global i32 0, align 4
@cmap1_ptep = common dso_local global i32 0, align 4
@cmap1_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @pmap_lmem_map1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_lmem_map1(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @critical_enter()
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TLBLO_PA_TO_PFN(i32 %4)
  %6 = load i32, i32* @PTE_C_CACHE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PTE_D, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PTE_V, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PTE_G, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @cmap1_ptep, align 4
  %15 = call i32* @PCPU_GET(i32 %14)
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @cmap1_addr, align 4
  %17 = call i32* @PCPU_GET(i32 %16)
  ret i32* %17
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @TLBLO_PA_TO_PFN(i32) #1

declare dso_local i32* @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
