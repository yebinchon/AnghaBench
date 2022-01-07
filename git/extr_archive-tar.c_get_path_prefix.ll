; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_get_path_prefix.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_get_path_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64)* @get_path_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_path_prefix(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 47
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %19, %11, %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 47
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi i1 [ false, %32 ], [ %41, %35 ]
  br i1 %43, label %29, label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
