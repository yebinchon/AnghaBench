; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_mapdev_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_mapdev_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"pmap_mapdev: Couldn't alloc kernel virtual memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pmap_mapdev_attr(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %11, %12
  %14 = sub nsw i64 %13, 1
  %15 = call i64 @MIPS_DIRECT_MAPPABLE(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @MIPS_PHYS_TO_DIRECT_UNCACHED(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %4, align 8
  br label %67

25:                                               ; preds = %17, %3
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = call i64 @roundup(i64 %31, i64 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @kva_alloc(i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %25
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @trunc_page(i64 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %47, %40
  %45 = load i64, i64* %6, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @pmap_kenter_attr(i64 %48, i64 %49, i32 %50)
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %5, align 8
  br label %44

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %63, %64
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %62, %21
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i64 @MIPS_DIRECT_MAPPABLE(i64) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT_UNCACHED(i64) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i64 @kva_alloc(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @pmap_kenter_attr(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
