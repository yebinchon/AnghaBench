; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@TLBLO_SWBITS_MASK = common dso_local global i32 0, align 4
@TLBHI_ASID_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_update(%struct.pmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @PAGE_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @TLBLO_SWBITS_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = call i32 (...) @intr_disable()
  store i32 %18, i32* %8, align 4
  %19 = call i32 (...) @mips_rd_entryhi()
  %20 = load i32, i32* @TLBHI_ASID_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = call i32 @mips_wr_pagemask(i32 0)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.pmap*, %struct.pmap** %4, align 8
  %25 = call i32 @pmap_asid(%struct.pmap* %24)
  %26 = call i32 @TLBHI_ENTRY(i32 %23, i32 %25)
  %27 = call i32 @mips_wr_entryhi(i32 %26)
  %28 = call i32 (...) @tlb_probe()
  %29 = call i32 (...) @mips_rd_index()
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %3
  %33 = call i32 (...) @tlb_read()
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mips_wr_entrylo0(i32 %39)
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mips_wr_entrylo1(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = call i32 (...) @tlb_write_indexed()
  br label %46

46:                                               ; preds = %44, %3
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mips_wr_entryhi(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @intr_restore(i32 %49)
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

declare dso_local i32 @tlb_read(...) #1

declare dso_local i32 @mips_wr_entrylo0(i32) #1

declare dso_local i32 @mips_wr_entrylo1(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
