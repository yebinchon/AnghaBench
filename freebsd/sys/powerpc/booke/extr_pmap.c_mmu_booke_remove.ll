; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i64 0, align 8
@virtual_avail = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mmu_booke_remove: kernel pmap, non kernel va\00", align 1
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"mmu_booke_remove: user pmap, non user va\00", align 1
@pvh_global_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @mmu_booke_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_remove(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @kernel_pmap, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @virtual_avail, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %25 = icmp sle i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %36

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %33 = icmp sle i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @PMAP_REMOVE_DONE(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %79

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @PTBL_HOLD_FLAG(i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @PMAP_LOCK(i64 %45)
  br label %47

47:                                               ; preds = %69, %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32* @pte_find(i32 %52, i64 %53, i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @PTE_ISVALID(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @pte_remove(i32 %63, i64 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %58, %51
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %47

75:                                               ; preds = %47
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @PMAP_UNLOCK(i64 %76)
  %78 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  br label %79

79:                                               ; preds = %75, %40
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @PMAP_REMOVE_DONE(i64) #1

declare dso_local i32 @PTBL_HOLD_FLAG(i64) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32* @pte_find(i32, i64, i32) #1

declare dso_local i64 @PTE_ISVALID(i32*) #1

declare dso_local i32 @pte_remove(i32, i64, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
