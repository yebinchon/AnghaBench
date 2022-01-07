; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_ignore_non_trailer.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_ignore_non_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@comment_line_char = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [12 x i8] c"Conflicts:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ignore_non_trailer(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @wt_status_locate_end(i8* %10, i64 %11)
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %86, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %21, %22
  %24 = call i8* @memchr(i8* %20, i8 signext 10, i64 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %9, align 8
  br label %34

31:                                               ; preds = %17
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @comment_line_char, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load i8*, i8** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %56

50:                                               ; preds = %43, %34
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %50
  br label %86

56:                                               ; preds = %43
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = call i64 @starts_with(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %62
  br label %85

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %84

79:                                               ; preds = %71, %68
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %84

84:                                               ; preds = %83, %78
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %55
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  store i64 %91, i64* %6, align 8
  br label %13

92:                                               ; preds = %13
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = sub i64 %96, %97
  br label %103

99:                                               ; preds = %92
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i64 [ %98, %95 ], [ %102, %99 ]
  ret i64 %104
}

declare dso_local i64 @wt_status_locate_end(i8*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
