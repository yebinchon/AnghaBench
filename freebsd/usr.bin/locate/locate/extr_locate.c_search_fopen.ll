; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locate/locate/extr_locate.c_search_fopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locate/locate/extr_locate.c_search_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_stdin = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"read database from stdin, use only `%s' as pattern\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@f_statistic = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"fseek to begin of ``%s''\0A\00", align 1
@f_icase = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_fopen(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i64, i64* @f_stdin, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32*, i32** @stdin, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %14, %8
  br label %29

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i64, i64* @f_statistic, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @statistic(i32* %33, i8* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fclose(i32* %36)
  br label %75

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i8**, i8*** %4, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load i64, i64* @f_stdin, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i32 @fseek(i32* %47, i64 0, i32 %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %46, %43
  %55 = load i64, i64* @f_icase, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = load i8**, i8*** %4, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @fastfind_icase(i32* %58, i8* %60, i8* %61)
  br label %69

63:                                               ; preds = %54
  %64 = load i32*, i32** %5, align 8
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @fastfind(i32* %64, i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %4, align 8
  br label %39

72:                                               ; preds = %39
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @fclose(i32* %73)
  br label %75

75:                                               ; preds = %72, %32
  ret void
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @statistic(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fastfind_icase(i32*, i8*, i8*) #1

declare dso_local i32 @fastfind(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
