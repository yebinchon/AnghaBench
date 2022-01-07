; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/filters.ru/koi2855/extr_koi2855.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/filters.ru/koi2855/extr_koi2855.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@length = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@lines = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@koi2855 = common dso_local global i32* null, align 8

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

37:                                               ; preds = %93, %62, %47, %36
  %38 = call i32 (...) @getchar()
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %94

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
  br label %84

58:                                               ; preds = %41
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32*, i32** @koi2855, align 8
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 127
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @putchar(i32 %68)
  br label %37

70:                                               ; preds = %58
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* @lines, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @lines, align 8
  br label %82

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 12
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i64, i64* @length, align 8
  store i64 %80, i64* @lines, align 8
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %73
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %57
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @putchar(i32 %85)
  %87 = load i64, i64* @lines, align 8
  %88 = load i64, i64* @length, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  store i64 0, i64* @lines, align 8
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fflush(i32 %91)
  br label %93

93:                                               ; preds = %90, %84
  br label %37

94:                                               ; preds = %37
  ret i32 0
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @ungetc(i32, i32) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
