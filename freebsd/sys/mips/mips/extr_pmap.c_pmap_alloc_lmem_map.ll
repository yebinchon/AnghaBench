; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_alloc_lmem_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_alloc_lmem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmap1_addr = common dso_local global i32 0, align 4
@virtual_avail = common dso_local global i64 0, align 8
@cmap2_addr = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@cmap1_ptep = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@cmap2_ptep = common dso_local global i32 0, align 4
@qmap_addr = common dso_local global i32 0, align 4
@qmap_ptep = common dso_local global i32 0, align 4
@crashdumpva = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmap_alloc_lmem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_alloc_lmem_map() #0 {
  %1 = load i32, i32* @cmap1_addr, align 4
  %2 = load i64, i64* @virtual_avail, align 8
  %3 = call i32 @PCPU_SET(i32 %1, i64 %2)
  %4 = load i32, i32* @cmap2_addr, align 4
  %5 = load i64, i64* @virtual_avail, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  %9 = call i32 @PCPU_SET(i32 %4, i64 %8)
  %10 = load i32, i32* @cmap1_ptep, align 4
  %11 = load i32, i32* @kernel_pmap, align 4
  %12 = load i64, i64* @virtual_avail, align 8
  %13 = call i64 @pmap_pte(i32 %11, i64 %12)
  %14 = call i32 @PCPU_SET(i32 %10, i64 %13)
  %15 = load i32, i32* @cmap2_ptep, align 4
  %16 = load i32, i32* @kernel_pmap, align 4
  %17 = load i64, i64* @virtual_avail, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i64 @pmap_pte(i32 %16, i64 %20)
  %22 = call i32 @PCPU_SET(i32 %15, i64 %21)
  %23 = load i32, i32* @qmap_addr, align 4
  %24 = load i64, i64* @virtual_avail, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @PCPU_SET(i32 %23, i64 %28)
  %30 = load i32, i32* @qmap_ptep, align 4
  %31 = load i32, i32* @kernel_pmap, align 4
  %32 = load i64, i64* @virtual_avail, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i64 @pmap_pte(i32 %31, i64 %36)
  %38 = call i32 @PCPU_SET(i32 %30, i64 %37)
  %39 = load i64, i64* @virtual_avail, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul nsw i32 3, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* @crashdumpva, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = mul nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @virtual_avail, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* @virtual_avail, align 8
  ret void
}

declare dso_local i32 @PCPU_SET(i32, i64) #1

declare dso_local i64 @pmap_pte(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
