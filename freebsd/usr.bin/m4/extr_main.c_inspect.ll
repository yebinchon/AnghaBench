; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_inspect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXTOK = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@EOS = common dso_local global i8 0, align 1
@ep = common dso_local global i8* null, align 8
@sp = common dso_local global i64 0, align 8
@macros = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*)* @inspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @inspect(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @MAXTOK, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  store i8 %15, i8* %16, align 1
  br label %18

18:                                               ; preds = %31, %2
  %19 = call i32 (...) @gpbc()
  store i32 %19, i32* %4, align 4
  %20 = call i64 @isalnum(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 95
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %18
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ult i8* %26, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  br label %18

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @PUSHBACK(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i8, i8* @EOS, align 1
  %45 = load i8*, i8** %5, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** @ep, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @outputstr(i8* %50)
  br label %52

52:                                               ; preds = %70, %49
  %53 = call i32 (...) @gpbc()
  store i32 %53, i32* %4, align 4
  %54 = call i64 @isalnum(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 95
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ true, %52 ], [ %58, %56 ]
  br i1 %60, label %61, label %71

61:                                               ; preds = %59
  %62 = load i64, i64* @sp, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @reallyputchar(i32 %65)
  br label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @CHRSAVE(i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %52

71:                                               ; preds = %59
  %72 = load i8, i8* @EOS, align 1
  %73 = load i8*, i8** %6, align 8
  store i8 %72, i8* %73, align 1
  store i32* null, i32** %3, align 8
  br label %88

74:                                               ; preds = %43
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @ohash_qlookupi(i32* @macros, i8* %75, i8** %5)
  %77 = call i32* @ohash_find(i32* @macros, i32 %76)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32* null, i32** %3, align 8
  br label %88

81:                                               ; preds = %74
  %82 = load i32*, i32** %8, align 8
  %83 = call i32* @macro_getdef(i32* %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32* null, i32** %3, align 8
  br label %88

86:                                               ; preds = %81
  %87 = load i32*, i32** %8, align 8
  store i32* %87, i32** %3, align 8
  br label %88

88:                                               ; preds = %86, %85, %80, %71
  %89 = load i32*, i32** %3, align 8
  ret i32* %89
}

declare dso_local i64 @isalnum(i32) #1

declare dso_local i32 @gpbc(...) #1

declare dso_local i32 @PUSHBACK(i32) #1

declare dso_local i32 @outputstr(i8*) #1

declare dso_local i32 @reallyputchar(i32) #1

declare dso_local i32 @CHRSAVE(i32) #1

declare dso_local i32* @ohash_find(i32*, i32) #1

declare dso_local i32 @ohash_qlookupi(i32*, i8*, i8**) #1

declare dso_local i32* @macro_getdef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
