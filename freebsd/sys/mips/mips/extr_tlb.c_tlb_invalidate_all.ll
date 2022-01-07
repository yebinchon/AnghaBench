; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLBHI_ASID_MASK = common dso_local global i32 0, align 4
@num_tlbentries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_invalidate_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @intr_disable()
  store i32 %4, i32* %2, align 4
  %5 = call i32 (...) @mips_rd_entryhi()
  %6 = load i32, i32* @TLBHI_ASID_MASK, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = call i32 (...) @mips_rd_wired()
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %16, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @num_tlbentries, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @tlb_invalidate_one(i32 %14)
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %9

19:                                               ; preds = %9
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @mips_wr_entryhi(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @intr_restore(i32 %22)
  ret void
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @mips_rd_entryhi(...) #1

declare dso_local i32 @mips_rd_wired(...) #1

declare dso_local i32 @tlb_invalidate_one(i32) #1

declare dso_local i32 @mips_wr_entryhi(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
