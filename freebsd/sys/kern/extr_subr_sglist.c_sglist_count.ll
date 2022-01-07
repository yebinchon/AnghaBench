; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_count(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i64 @trunc_page(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %7, align 8
  store i32 1, i32* %10, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @pmap_kextract(i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %42, %14
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @pmap_kextract(i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %27

47:                                               ; preds = %27
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @pmap_kextract(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
