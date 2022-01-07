; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_get_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_get_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_word.line = internal global [80 x i8] zeroinitializer, align 16
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_word(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %39, %32, %1
  br label %8

8:                                                ; preds = %20, %7
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @getc(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 32
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 9
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16, %13
  br label %8

21:                                               ; preds = %19, %8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @EOF, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %2, align 8
  br label %79

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %7

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %7

40:                                               ; preds = %36
  store i8* null, i8** %2, align 8
  br label %79

41:                                               ; preds = %33
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_word.line, i64 0, i64 0), i8** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 33
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  store i8 0, i8* %49, align 1
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_word.line, i64 0, i64 0), i8** %2, align 8
  br label %79

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %61, %50
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @getc(i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @EOF, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @isspace(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  store i8 %63, i8* %64, align 1
  br label %51

66:                                               ; preds = %60, %51
  %67 = load i8*, i8** %5, align 8
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @EOF, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @EOF, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %2, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %4, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @ungetc(i32 %76, i32* %77)
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @get_word.line, i64 0, i64 0), i8** %2, align 8
  br label %79

79:                                               ; preds = %75, %71, %48, %40, %25
  %80 = load i8*, i8** %2, align 8
  ret i8* %80
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
