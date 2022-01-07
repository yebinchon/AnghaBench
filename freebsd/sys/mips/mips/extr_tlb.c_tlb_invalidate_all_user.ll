; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_all_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tlb.c_tlb_invalidate_all_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }

@TLBHI_ASID_MASK = common dso_local global i32 0, align 4
@num_tlbentries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_invalidate_all_user(%struct.pmap* %0) #0 {
  %2 = alloca %struct.pmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %2, align 8
  %7 = call i32 (...) @intr_disable()
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @mips_rd_entryhi()
  %9 = load i32, i32* @TLBHI_ASID_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @mips_rd_wired()
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @num_tlbentries, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mips_wr_index(i32 %17)
  %19 = call i32 (...) @tlb_read()
  %20 = call i32 (...) @mips_rd_entryhi()
  %21 = load i32, i32* @TLBHI_ASID_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.pmap*, %struct.pmap** %2, align 8
  %24 = icmp eq %struct.pmap* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %40

29:                                               ; preds = %25
  br label %37

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.pmap*, %struct.pmap** %2, align 8
  %33 = call i32 @pmap_asid(%struct.pmap* %32)
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @tlb_invalidate_one(i32 %38)
  br label %40

40:                                               ; preds = %37, %35, %28
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @mips_wr_entryhi(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @intr_restore(i32 %46)
  ret void
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @mips_rd_entryhi(...) #1

declare dso_local i32 @mips_rd_wired(...) #1

declare dso_local i32 @mips_wr_index(i32) #1

declare dso_local i32 @tlb_read(...) #1

declare dso_local i32 @pmap_asid(%struct.pmap*) #1

declare dso_local i32 @tlb_invalidate_one(i32) #1

declare dso_local i32 @mips_wr_entryhi(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
