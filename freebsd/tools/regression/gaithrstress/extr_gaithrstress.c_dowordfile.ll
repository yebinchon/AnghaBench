; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/gaithrstress/extr_gaithrstress.c_dowordfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/gaithrstress/extr_gaithrstress.c_dowordfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@nrandwords = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@randwords = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"reading words file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dowordfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  store i64 0, i64* @nrandwords, align 8
  br label %13

13:                                               ; preds = %18, %12
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @fgets(i8* %14, i32 64, i32* %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* @nrandwords, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @nrandwords, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @ferror(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i64 @fseek(i32* %26, i32 0, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %21
  br label %71

31:                                               ; preds = %25
  %32 = load i64, i64* @nrandwords, align 8
  %33 = call i32** @calloc(i64 %32, i32 8)
  store i32** %33, i32*** @randwords, align 8
  %34 = load i32**, i32*** @randwords, align 8
  %35 = icmp eq i32** %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %71

37:                                               ; preds = %31
  %38 = load i64, i64* @nrandwords, align 8
  store i64 %38, i64* %6, align 8
  store i64 0, i64* @nrandwords, align 8
  br label %39

39:                                               ; preds = %66, %37
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @fgets(i8* %40, i32 64, i32* %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %46 = call i64 @strcspn(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %46
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %49 = call i32* @strdup(i8* %48)
  %50 = load i32**, i32*** @randwords, align 8
  %51 = load i64, i64* @nrandwords, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  store i32* %49, i32** %52, align 8
  %53 = load i32**, i32*** @randwords, align 8
  %54 = load i64, i64* @nrandwords, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %44
  %61 = load i64, i64* @nrandwords, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* @nrandwords, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  br label %39

67:                                               ; preds = %65, %39
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* @nrandwords, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fclose(i32* %69)
  store i32 0, i32* %2, align 4
  br label %74

71:                                               ; preds = %36, %30
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @fclose(i32* %72)
  store i32 -1, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %67, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32** @calloc(i64, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
