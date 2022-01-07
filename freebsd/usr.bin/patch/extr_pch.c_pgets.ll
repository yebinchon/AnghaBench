; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_pgets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_pgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pfp = common dso_local global i32 0, align 4
@buf_size = common dso_local global i64 0, align 8
@buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@p_indent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pgets(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @pfp, align 4
  %8 = call i8* @fgetln(i32 %7, i64* %4)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %100

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  %14 = load i64, i64* @buf_size, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 1
  %20 = load i64, i64* @buf_size, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @buf_size, align 8
  %24 = mul i64 %23, 2
  store i64 %24, i64* @buf_size, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** @buf, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i64, i64* @buf_size, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** @buf, align 8
  %30 = load i8*, i8** @buf, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  br label %35

35:                                               ; preds = %34, %11
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %86

38:                                               ; preds = %35
  %39 = load i32, i32* @p_indent, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %80, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @p_indent, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 88
  br label %61

61:                                               ; preds = %56, %51, %46
  %62 = phi i1 [ true, %51 ], [ true, %46 ], [ %60, %56 ]
  br label %63

63:                                               ; preds = %61, %42
  %64 = phi i1 [ false, %42 ], [ %62, %61 ]
  br i1 %64, label %65, label %85

65:                                               ; preds = %63
  %66 = load i8*, i8** %3, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 9
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = srem i32 %71, 7
  %73 = sub nsw i32 8, %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %42

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85, %38, %35
  %87 = load i8*, i8** @buf, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %89, %91
  %93 = call i32 @memcpy(i8* %87, i8* %88, i64 %92)
  %94 = load i8*, i8** @buf, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 %95, %97
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %86, %1
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i8* @fgetln(i32, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
