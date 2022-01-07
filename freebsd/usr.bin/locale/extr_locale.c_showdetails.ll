; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_showdetails.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_showdetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown keyword: `%s'\0A\00", align 1
@prt_categories = common dso_local global i64 0, align 8
@prt_keywords = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%-20s \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%-20s\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s=\22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showdetails(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @kwval_lookup(i8* %8, i8** %7, i32* %4, i32* %3, i32* %6)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %76

15:                                               ; preds = %1
  %16 = load i64, i64* @prt_categories, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i64, i64* @prt_keywords, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @lookup_localecat(i32 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %30

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @lookup_localecat(i32 %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %28)
  br label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i64, i64* @prt_keywords, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  switch i32 %35, label %51 [
    i32 130, label %36
    i32 129, label %43
    i32 128, label %47
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %41)
  br label %51

43:                                               ; preds = %34
  %44 = load i8*, i8** %2, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %45)
  br label %51

47:                                               ; preds = %34
  %48 = load i8*, i8** %2, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %34, %47, %43, %36
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i64, i64* @prt_categories, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @prt_keywords, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  switch i32 %59, label %69 [
    i32 130, label %60
    i32 129, label %66
    i32 128, label %66
  ]

60:                                               ; preds = %58
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  br label %69

66:                                               ; preds = %58, %58
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %58, %66, %60
  br label %70

70:                                               ; preds = %69, %55, %52
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @free(i8* %74)
  br label %76

76:                                               ; preds = %11, %73, %70
  ret void
}

declare dso_local i64 @kwval_lookup(i8*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @lookup_localecat(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
