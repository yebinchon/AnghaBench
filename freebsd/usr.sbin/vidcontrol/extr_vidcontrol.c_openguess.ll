; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_openguess.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_openguess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8**, i8**, i8**)* @openguess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @openguess(i8** %0, i8** %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %94, %5
  %18 = load i8**, i8*** %7, align 8
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %97

24:                                               ; preds = %17
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %90, %24
  %26 = load i8**, i8*** %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %93

32:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %86, %32
  %34 = load i8**, i8*** %9, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %89

40:                                               ; preds = %33
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i8**, i8*** %10, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %41
  %49 = load i8**, i8*** %11, align 8
  %50 = load i8**, i8*** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %9, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %10, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @asprintf(i8** %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %59, i8* %64, i8* %69)
  %71 = load i8**, i8*** %11, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32* @fopen(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %48
  %77 = load i32*, i32** %12, align 8
  store i32* %77, i32** %6, align 8
  br label %98

78:                                               ; preds = %48
  %79 = load i8**, i8*** %11, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %41

85:                                               ; preds = %41
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %33

89:                                               ; preds = %33
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %25

93:                                               ; preds = %25
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %17

97:                                               ; preds = %17
  store i32* null, i32** %6, align 8
  br label %98

98:                                               ; preds = %97, %76
  %99 = load i32*, i32** %6, align 8
  ret i32* %99
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
