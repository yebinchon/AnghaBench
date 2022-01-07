; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_is_cacheable_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_is_cacheable_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@physmem_desc = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_cacheable_mem(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i64*, i64** @physmem_desc, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %6, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %5
  %14 = load i64, i64* %3, align 8
  %15 = load i64*, i64** @physmem_desc, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %14, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load i64, i64* %3, align 8
  %23 = load i64*, i64** @physmem_desc, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %36

31:                                               ; preds = %21, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %4, align 4
  br label %5

35:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
