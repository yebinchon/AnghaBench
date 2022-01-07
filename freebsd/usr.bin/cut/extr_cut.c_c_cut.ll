; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_c_cut.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cut/extr_cut.c_c_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@positions = common dso_local global i8* null, align 8
@maxval = common dso_local global i32 0, align 4
@WEOF = common dso_local global i8 0, align 1
@autostop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @c_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_cut(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 0, i8* %6, align 1
  br label %9

9:                                                ; preds = %83, %2
  %10 = load i8*, i8** @positions, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* @maxval, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %38, %9
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = call signext i8 @getwc(i32* %17)
  store i8 %18, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @WEOF, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %85

24:                                               ; preds = %16
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %41

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = load i8, i8* %30, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8, i8* %6, align 1
  %36 = call i32 @putwchar(i8 signext %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %7, align 4
  br label %13

41:                                               ; preds = %28, %13
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = load i64, i64* @autostop, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32*, i32** %4, align 8
  %51 = call signext i8 @getwc(i32* %50)
  store i8 %51, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @WEOF, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8, i8* %6, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 10
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i1 [ false, %49 ], [ %59, %56 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8, i8* %6, align 1
  %64 = call i32 @putwchar(i8 signext %63)
  br label %49

65:                                               ; preds = %60
  br label %82

66:                                               ; preds = %45
  br label %67

67:                                               ; preds = %80, %66
  %68 = load i32*, i32** %4, align 8
  %69 = call signext i8 @getwc(i32* %68)
  store i8 %69, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @WEOF, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 10
  br label %78

78:                                               ; preds = %74, %67
  %79 = phi i1 [ false, %67 ], [ %77, %74 ]
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  br label %67

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %41
  %84 = call i32 @putwchar(i8 signext 10)
  br label %9

85:                                               ; preds = %23
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @ferror(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %90)
  store i32 1, i32* %3, align 4
  br label %93

92:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local signext i8 @getwc(i32*) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
