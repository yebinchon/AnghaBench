; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/tests/extr_test-memset.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/tests/extr_test-memset.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed at offset %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"At %lx\0D\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\0AAt end: \0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%lx: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @SIZE, align 4
  %5 = call i32* @malloc(i32 %4)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* @SIZE, align 4
  %8 = call i32 @memset(i32* %6, i32 85, i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @SIZE, align 4
  %11 = call i32 @memset(i32* %9, i32 170, i32 %10)
  %12 = load i32*, i32** %1, align 8
  store i32* %12, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %32, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %2, align 8
  %20 = load i32, i32* %18, align 4
  %21 = icmp ne i32 %20, 170
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = getelementptr inbounds i32, i32* %39, i64 -16
  store i32* %40, i32** %2, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %62, %35
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 32
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = ptrtoint i32* %49 to i32
  %51 = load i32*, i32** %1, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = sub nsw i32 %50, %52
  %54 = load i32, i32* @SIZE, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %42

65:                                               ; preds = %42
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
