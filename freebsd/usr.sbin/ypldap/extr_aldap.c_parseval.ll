; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_parseval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_parseval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parseval(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, 1
  %12 = call i8* @calloc(i32 1, i64 %11)
  store i8* %12, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %58

15:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 92
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @strlcpy(i8* %28, i8* %32, i32 3)
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %35 = call i64 @strtoumax(i8* %34, i32* null, i32 16)
  %36 = trunc i64 %35 to i8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 %36, i8* %39, align 1
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %9, align 8
  br label %52

42:                                               ; preds = %20
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %49, align 1
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %42, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %16

56:                                               ; preds = %16
  %57 = load i8*, i8** %7, align 8
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %56, %14
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strtoumax(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
