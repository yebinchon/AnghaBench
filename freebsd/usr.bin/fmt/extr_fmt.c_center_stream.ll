; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_center_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_center_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@goal_length = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i32] [i32 37, i32 46, i32 42, i32 108, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@n_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @center_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @center_stream(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @get_line(i32* %12, i64* %7)
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %27, %15
  %18 = load i64, i64* %10, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @iswspace(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %10, align 8
  br label %17

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %5, align 8
  store i32* %34, i32** %6, align 8
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %54, %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = icmp ult i32* %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wcwidth(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  br label %49

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 1, %48 ]
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  br label %35

57:                                               ; preds = %35
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %63, %57
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @goal_length, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = call i32 @putwchar(i8 signext 32)
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 2
  store i64 %66, i64* %10, align 8
  br label %59

67:                                               ; preds = %59
  %68 = load i64, i64* %7, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @wprintf(i8* bitcast ([7 x i32]* @.str to i8*), i32 %69, i32* %70)
  br label %11

72:                                               ; preds = %11
  %73 = load i32*, i32** %3, align 8
  %74 = call i64 @ferror(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @n_errors, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @n_errors, align 4
  br label %81

81:                                               ; preds = %76, %72
  ret void
}

declare dso_local i32* @get_line(i32*, i64*) #1

declare dso_local i64 @iswspace(i32) #1

declare dso_local i32 @wcwidth(i32) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i32 @wprintf(i8*, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
