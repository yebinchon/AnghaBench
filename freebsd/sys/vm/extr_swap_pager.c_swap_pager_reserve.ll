; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWAPBLK_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_pager_reserve(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32 @swp_pager_init_freerange(i64* %11, i64* %10)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @VM_OBJECT_WLOCK(i32 %16)
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %67, %3
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = call i64 @swp_pager_getswapspace(i32* %14, i32 1)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @SWAPBLK_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @swp_pager_meta_free(i32 %31, i64 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @VM_OBJECT_WUNLOCK(i32 %35)
  store i32 -1, i32* %4, align 4
  br label %77

37:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i64 @swp_pager_meta_build(i32 %43, i64 %50, i64 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @SWAPBLK_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @swp_pager_update_freerange(i64* %11, i64* %10, i64 %60)
  br label %62

62:                                               ; preds = %59, %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %38

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %18

71:                                               ; preds = %18
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @swp_pager_freeswapspace(i64 %72, i64 %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @VM_OBJECT_WUNLOCK(i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %30
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @swp_pager_init_freerange(i64*, i64*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i64 @swp_pager_getswapspace(i32*, i32) #1

declare dso_local i32 @swp_pager_meta_free(i32, i64, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i64 @swp_pager_meta_build(i32, i64, i64) #1

declare dso_local i32 @swp_pager_update_freerange(i64*, i64*, i64) #1

declare dso_local i32 @swp_pager_freeswapspace(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
