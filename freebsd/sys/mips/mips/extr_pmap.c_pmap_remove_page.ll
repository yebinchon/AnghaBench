; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_remove_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_remove_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmap*, i32)* @pmap_remove_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_page(%struct.pmap* %0, i32 %1) #0 {
  %3 = alloca %struct.pmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  store %struct.pmap* %0, %struct.pmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @RA_WLOCKED, align 4
  %8 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %7)
  %9 = load %struct.pmap*, %struct.pmap** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PMAP_LOCK_ASSERT(%struct.pmap* %9, i32 %10)
  %12 = load %struct.pmap*, %struct.pmap** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64* @pmap_pde(%struct.pmap* %12, i32 %13)
  store i64* %14, i64** %5, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  br label %41

22:                                               ; preds = %17
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32* @pmap_pde_to_pte(i64* %23, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @PTE_V, align 4
  %28 = call i32 @pte_test(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.pmap*, %struct.pmap** %3, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pmap_remove_pte(%struct.pmap* %32, i32* %33, i32 %34, i64 %36)
  %38 = load %struct.pmap*, %struct.pmap** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pmap_invalidate_page(%struct.pmap* %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %30, %21
  ret void
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.pmap*, i32) #1

declare dso_local i64* @pmap_pde(%struct.pmap*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i64*, i32) #1

declare dso_local i32 @pte_test(i32*, i32) #1

declare dso_local i32 @pmap_remove_pte(%struct.pmap*, i32*, i32, i64) #1

declare dso_local i32 @pmap_invalidate_page(%struct.pmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
