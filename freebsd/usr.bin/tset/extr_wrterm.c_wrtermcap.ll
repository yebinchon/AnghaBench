; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_wrterm.c_wrtermcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_wrterm.c_wrtermcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"termcap names not colon terminated\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\E\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\\040\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\\041\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\\054\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\\042\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\\047\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\\140\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wrtermcap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 58)
  store i8* %8, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %5, align 8
  store i8 0, i8* %13, align 1
  %15 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %33, %12
  %17 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32* @strpbrk(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %29, i8* %30)
  %32 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %28, %24, %19
  br label %16

34:                                               ; preds = %16
  %35 = call i32 @putchar(i8 signext 58)
  br label %36

36:                                               ; preds = %97, %57, %34
  %37 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @isspace(i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i1 [ false, %40 ], [ %48, %45 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  br label %40

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %36

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %96, %58
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  store i32 %63, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %59
  %66 = load i32, i32* %3, align 4
  switch i32 %66, label %92 [
    i32 27, label %67
    i32 32, label %69
    i32 33, label %71
    i32 44, label %73
    i32 34, label %75
    i32 39, label %77
    i32 96, label %79
    i32 92, label %81
    i32 94, label %81
  ]

67:                                               ; preds = %65
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %67
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %96

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %96

73:                                               ; preds = %65
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %96

75:                                               ; preds = %65
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %96

77:                                               ; preds = %65
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %96

79:                                               ; preds = %65
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %96

81:                                               ; preds = %65, %65
  %82 = load i32, i32* %3, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i32 @putchar(i8 signext %83)
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %96

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %65, %91
  %93 = load i32, i32* %3, align 4
  %94 = trunc i32 %93 to i8
  %95 = call i32 @putchar(i8 signext %94)
  br label %96

96:                                               ; preds = %92, %90, %79, %77, %75, %73, %71, %69
  br label %59

97:                                               ; preds = %59
  %98 = call i32 @putchar(i8 signext 58)
  br label %36

99:                                               ; preds = %36
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32* @strpbrk(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
