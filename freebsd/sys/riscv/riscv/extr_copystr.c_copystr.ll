; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_copystr.c_copystr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_copystr.c_copystr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copystr(i8* noalias %0, i8* noalias %1, i64 %2, i64* noalias %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %38, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 %24, i8* %27, align 1
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %41

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %16

41:                                               ; preds = %34, %16
  %42 = load i64*, i64** %8, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
