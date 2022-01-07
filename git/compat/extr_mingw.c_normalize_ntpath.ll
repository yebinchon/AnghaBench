; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_normalize_ntpath.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_normalize_ntpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 92, i32 63, i32 63, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 92, i32 92, i32 63, i32 92, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i32] [i32 92, i32 68, i32 111, i32 115, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 85, i32 78, i32 67, i32 92, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @normalize_ntpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @normalize_ntpath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 92
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @wcsncmp(i8* %10, i8* bitcast ([5 x i32]* @.str to i8*), i32 4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @wcsncmp(i8* %14, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %9
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %19, i8** %2, align 8
  br label %28

20:                                               ; preds = %13
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @wcsnicmp(i8* %21, i8* bitcast ([13 x i32]* @.str.2 to i8*), i32 12)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 12
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @wcsnicmp(i8* %29, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %2, align 8
  %35 = load i8*, i8** %2, align 8
  store i8 92, i8* %35, align 1
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %1
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i8*, i8** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 92
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 47, i8* %57, align 1
  br label %58

58:                                               ; preds = %53, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load i8*, i8** %2, align 8
  ret i8* %63
}

declare dso_local i32 @wcsncmp(i8*, i8*, i32) #1

declare dso_local i32 @wcsnicmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
