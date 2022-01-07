; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_sequential.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_sequential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WEOF = common dso_local global i8 0, align 1
@delim = common dso_local global i8* null, align 8
@delimcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @sequential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sequential(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %89, %1
  %10 = load i8**, i8*** %2, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %92

13:                                               ; preds = %9
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** @stdin, align 8
  store i32* %25, i32** %3, align 8
  br label %34

26:                                               ; preds = %19, %13
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 1, i32* %5, align 4
  br label %89

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %24
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %75, %34
  %36 = load i32*, i32** %3, align 8
  %37 = call signext i8 @getwc(i32* %36)
  store i8 %37, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @WEOF, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  %46 = load i8*, i8** @delim, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i8*, i8** @delim, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @putwchar(i8 signext %58)
  br label %60

60:                                               ; preds = %53, %45
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @delimcnt, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %60
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i8, i8* %7, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 10
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8, i8* %7, align 1
  %73 = call i32 @putwchar(i8 signext %72)
  br label %75

74:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %35

76:                                               ; preds = %35
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @putwchar(i8 signext 10)
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32*, i32** %3, align 8
  %83 = load i32*, i32** @stdin, align 8
  %84 = icmp ne i32* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88, %30
  %90 = load i8**, i8*** %2, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %2, align 8
  br label %9

92:                                               ; preds = %9
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  ret i32 %95
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local signext i8 @getwc(i32*) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
