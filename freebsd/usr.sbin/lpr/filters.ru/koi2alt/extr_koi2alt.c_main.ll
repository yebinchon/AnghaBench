; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/filters.ru/koi2alt/extr_koi2alt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/filters.ru/koi2alt/extr_koi2alt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@length = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@lines = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@koi2alt = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %34 [
    i32 108, label %25
  ]

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = call i32 @atoi(i8* %27)
  store i32 %28, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* @length, align 8
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %20, %33
  br label %35

35:                                               ; preds = %34, %13
  br label %9

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %94, %62, %47, %36
  %38 = call i32 (...) @getchar()
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 25
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = call i32 (...) @getchar()
  store i32 %45, i32* %6, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  store i64 0, i64* @lines, align 8
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fflush(i32 %48)
  %50 = call i32 (...) @getpid()
  %51 = load i32, i32* @SIGSTOP, align 4
  %52 = call i32 @kill(i32 %50, i32 %51)
  br label %37

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @stdin, align 4
  %56 = call i32 @ungetc(i32 %54, i32 %55)
  store i32 25, i32* %6, align 4
  br label %57

57:                                               ; preds = %53
  br label %85

58:                                               ; preds = %41
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32*, i32** @koi2alt, align 8
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 127
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fputs(i32 %68, i32 %69)
  br label %37

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* @lines, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* @lines, align 8
  br label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 12
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64, i64* @length, align 8
  store i64 %81, i64* @lines, align 8
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %74
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @putchar(i32 %86)
  %88 = load i64, i64* @lines, align 8
  %89 = load i64, i64* @length, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  store i64 0, i64* @lines, align 8
  %92 = load i32, i32* @stdout, align 4
  %93 = call i32 @fflush(i32 %92)
  br label %94

94:                                               ; preds = %91, %85
  br label %37

95:                                               ; preds = %37
  ret i32 0
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @ungetc(i32, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
