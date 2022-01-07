; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_count_vmpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_count_vmpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_count_vmpages(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %7, align 8
  store i32 1, i32* %11, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @VM_PAGE_TO_PHYS(i32 %21)
  store i64 %22, i64* %8, align 8
  store i32 1, i32* %10, align 4
  br label %23

23:                                               ; preds = %44, %15
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @VM_PAGE_TO_PHYS(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %27
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %42
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @VM_PAGE_TO_PHYS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
