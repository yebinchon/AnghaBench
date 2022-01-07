; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@tte_list_global_lock = common dso_local global i32 0, align 4
@PMAP_TSB_THRESH = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tte*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %84

17:                                               ; preds = %5
  %18 = call i32 @rw_wlock(i32* @tte_list_global_lock)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @PMAP_LOCK(i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @PMAP_LOCK(i64 %25)
  br label %32

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @PMAP_LOCK(i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @PMAP_LOCK(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PMAP_TSB_THRESH, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @tsb_foreach(i64 %37, i64 %38, i64 %39, i64 %42, i32 (i64, i64, %struct.tte*, i64)* @pmap_copy_tte)
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @tlb_context_demap(i64 %44)
  br label %78

46:                                               ; preds = %32
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %66, %46
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %50, %51
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call %struct.tte* @tsb_tte_lookup(i64 %55, i64 %56)
  store %struct.tte* %57, %struct.tte** %11, align 8
  %58 = icmp ne %struct.tte* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.tte*, %struct.tte** %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @pmap_copy_tte(i64 %60, i64 %61, %struct.tte* %62, i64 %63)
  br label %65

65:                                               ; preds = %59, %54
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %12, align 8
  br label %48

70:                                               ; preds = %48
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %73, %74
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @tlb_range_demap(i64 %71, i64 %72, i64 %76)
  br label %78

78:                                               ; preds = %70, %36
  %79 = call i32 @rw_wunlock(i32* @tte_list_global_lock)
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @PMAP_UNLOCK(i64 %80)
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @PMAP_UNLOCK(i64 %82)
  br label %84

84:                                               ; preds = %78, %16
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32 @tsb_foreach(i64, i64, i64, i64, i32 (i64, i64, %struct.tte*, i64)*) #1

declare dso_local i32 @pmap_copy_tte(i64, i64, %struct.tte*, i64) #1

declare dso_local i32 @tlb_context_demap(i64) #1

declare dso_local %struct.tte* @tsb_tte_lookup(i64, i64) #1

declare dso_local i32 @tlb_range_demap(i64, i64, i64) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
