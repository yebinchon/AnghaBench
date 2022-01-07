; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/tests/extr_stress.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/tests/extr_stress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"Testing...\0A\00", align 1
@malloc_first = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\0D\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%lu worked.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Total: %lu\0A\00", align 1
@DIV_REG = common dso_local global i8* null, align 8
@seed = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca [32 x i32*], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [32 x i32*], [32 x i32*]* %1, i64 0, i64 0
  %10 = call i32 @memset(i32** %9, i32 0, i32 256)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %64, %0
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 20
  br i1 %13, label %14, label %67

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i64 0, i64* @malloc_first, align 8
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = call i32 (...) @rand()
  %21 = and i32 %20, 31
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32 x i32*], [32 x i32*]* %1, i64 0, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32 x i32*], [32 x i32*]* %1, i64 0, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free(i32* %31)
  br label %33

33:                                               ; preds = %27, %19
  %34 = call i32 (...) @rand()
  %35 = call i32 (...) @rand()
  %36 = and i32 %35, 63
  %37 = add nsw i32 %34, %36
  %38 = call i32* @malloc(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x i32*], [32 x i32*]* %1, i64 0, i64 %40
  store i32* %38, i32** %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i32*], [32 x i32*]* %1, i64 0, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 255
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %15

58:                                               ; preds = %15
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
