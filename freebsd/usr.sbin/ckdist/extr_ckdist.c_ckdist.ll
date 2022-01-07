; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_ckdist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_ckdist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@E_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ckdist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckdist(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @isstdin(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %13 = load i32*, i32** @stdin, align 8
  store i32* %13, i32** %6, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @fail(i8* %19, i32* null)
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** @stdin, align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @distfile(i8* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @fgetc(i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 77
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 80
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 129, i32 0
  br label %49

49:                                               ; preds = %44, %43
  %50 = phi i32 [ 128, %43 ], [ %48, %44 ]
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @ungetc(i32 %51, i32* %52)
  br label %54

54:                                               ; preds = %49, %35
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %5, align 4
  switch i32 %57, label %66 [
    i32 128, label %58
    i32 129, label %62
  ]

58:                                               ; preds = %56
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @chkmd5(i32* %59, i8* %60)
  store i32 %61, i32* %7, align 4
  br label %70

62:                                               ; preds = %56
  %63 = load i32*, i32** %6, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @chkinf(i32* %63, i8* %64)
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @E_UNKNOWN, align 4
  %69 = call i32 @report(i8* %67, i32* null, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %62, %58
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @ferror(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** @stdin, align 8
  %80 = icmp ne i32* %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = call i64 @fclose(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %81, %77
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @isstdin(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fail(i8*, i32*) #1

declare dso_local i32 @distfile(i8*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @chkmd5(i32*, i8*) #1

declare dso_local i32 @chkinf(i32*, i8*) #1

declare dso_local i32 @report(i8*, i32*, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
