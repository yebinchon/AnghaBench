; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@TLBHI_ASID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_invalidate_address(%struct.pmap* %0, i32 %1) #0 {
  %3 = alloca %struct.pmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @PAGE_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = call i32 (...) @intr_disable()
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @mips_rd_entryhi()
  %14 = load i32, i32* @TLBHI_ASID_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = call i32 @mips_wr_pagemask(i32 0)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.pmap*, %struct.pmap** %3, align 8
  %19 = call i32 @pmap_asid(%struct.pmap* %18)
  %20 = call i32 @TLBHI_ENTRY(i32 %17, i32 %19)
  %21 = call i32 @mips_wr_entryhi(i32 %20)
  %22 = call i32 (...) @tlb_probe()
  %23 = call i32 (...) @mips_rd_index()
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @tlb_invalidate_one(i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mips_wr_entryhi(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @intr_restore(i32 %32)
  ret void
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @mips_rd_entryhi(...) #1

declare dso_local i32 @mips_wr_pagemask(i32) #1

declare dso_local i32 @mips_wr_entryhi(i32) #1

declare dso_local i32 @TLBHI_ENTRY(i32, i32) #1

declare dso_local i32 @pmap_asid(%struct.pmap*) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @mips_rd_index(...) #1

declare dso_local i32 @tlb_invalidate_one(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
