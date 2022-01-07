; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_mapdev_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_mapdev_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"moea_mapdev: Couldn't alloc kernel virtual memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @moea_mapdev_attr(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @trunc_page(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PAGE_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = call i64 @roundup(i64 %23, i64 %24)
  store i64 %25, i64* %8, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %40, %4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @moea_bat_mapped(i32 %30, i32 %31, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %5, align 8
  br label %82

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @kva_alloc(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %55, %50
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @moea_kenter_attr(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @tlbie(i32 %61)
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %5, align 8
  br label %82

82:                                               ; preds = %76, %35
  %83 = load i8*, i8** %5, align 8
  ret i8* %83
}

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i64 @moea_bat_mapped(i32, i32, i64) #1

declare dso_local i32 @kva_alloc(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @moea_kenter_attr(i32, i32, i32, i32) #1

declare dso_local i32 @tlbie(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
