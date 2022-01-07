; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_qremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_qremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmap_nqremove = common dso_local global i32 0, align 4
@tte_list_global_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_qremove(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @pmap_nqremove, align 4
  %7 = call i32 @PMAP_STATS_INC(i32 %6)
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = call i32 @rw_wlock(i32* @tte_list_global_lock)
  br label %10

10:                                               ; preds = %14, %2
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pmap_kremove(i32 %15)
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %10

22:                                               ; preds = %10
  %23 = call i32 @rw_wunlock(i32* @tte_list_global_lock)
  %24 = load i32, i32* @kernel_pmap, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @tlb_range_demap(i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @pmap_kremove(i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @tlb_range_demap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
