; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/column/extr_column.c_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/column/extr_column.c_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input.maxentry = internal global i32 0, align 4
@MAXLINELEN = common dso_local global i32 0, align 4
@list = common dso_local global i32** null, align 8
@DEFNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"line too long\00", align 1
@eval = common dso_local global i32 0, align 4
@maxlength = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @MAXLINELEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32**, i32*** @list, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @DEFNUM, align 4
  store i32 %14, i32* @input.maxentry, align 4
  %15 = call i32** @calloc(i32 %14, i32 8)
  store i32** %15, i32*** @list, align 8
  %16 = icmp eq i32** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @err(i32 1, i32* null)
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %1
  br label %21

21:                                               ; preds = %98, %51, %46, %20
  %22 = load i32, i32* @MAXLINELEN, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @fgetws(i32* %10, i32 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %107

26:                                               ; preds = %21
  store i32* %10, i32** %4, align 8
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @iswspace(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  br label %27

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %21

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @wcschr(i32* %48, i32 10)
  store i32* %49, i32** %4, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @eval, align 4
  br label %21

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  store i32 0, i32* %54, align 4
  %55 = call i32 @width(i32* %10)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @maxlength, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* @maxlength, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = load i32, i32* @entries, align 4
  %63 = load i32, i32* @input.maxentry, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* @DEFNUM, align 4
  %67 = load i32, i32* @input.maxentry, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* @input.maxentry, align 4
  %69 = load i32**, i32*** @list, align 8
  %70 = load i32, i32* @input.maxentry, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32** @realloc(i32** %69, i32 %73)
  store i32** %74, i32*** @list, align 8
  %75 = icmp ne i32** %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  %77 = call i32 @err(i32 1, i32* null)
  br label %78

78:                                               ; preds = %76, %65
  br label %79

79:                                               ; preds = %78, %61
  %80 = call i32 @wcslen(i32* %10)
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32* @malloc(i32 %84)
  %86 = load i32**, i32*** @list, align 8
  %87 = load i32, i32* @entries, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  store i32* %85, i32** %89, align 8
  %90 = load i32**, i32*** @list, align 8
  %91 = load i32, i32* @entries, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = call i32 @err(i32 1, i32* null)
  br label %98

98:                                               ; preds = %96, %79
  %99 = load i32**, i32*** @list, align 8
  %100 = load i32, i32* @entries, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @wcscpy(i32* %103, i32* %10)
  %105 = load i32, i32* @entries, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @entries, align 4
  br label %21

107:                                              ; preds = %21
  %108 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32** @calloc(i32, i32) #2

declare dso_local i32 @err(i32, i32*) #2

declare dso_local i64 @fgetws(i32*, i32, i32*) #2

declare dso_local i64 @iswspace(i32) #2

declare dso_local i32* @wcschr(i32*, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @width(i32*) #2

declare dso_local i32** @realloc(i32**, i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
