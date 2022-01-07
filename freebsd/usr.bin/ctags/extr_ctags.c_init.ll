; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ctags/extr_ctags.c_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ctags/extr_ctags.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO = common dso_local global i8* null, align 8
@_btk = common dso_local global i8** null, align 8
@_itk = common dso_local global i8** null, align 8
@_etk = common dso_local global i8** null, align 8
@_wht = common dso_local global i8** null, align 8
@YES = common dso_local global i8* null, align 8
@_gd = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c" \0C\09\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" \09\0A\22'#()[]{}=-+%*/&|^~!<>;,.:?\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz0123456789\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c",;\00", align 1
@CBEGIN = common dso_local global i8* null, align 8
@CINTOK = common dso_local global i8* null, align 8
@CNOTGD = common dso_local global i8* null, align 8
@CTOKEN = common dso_local global i8* null, align 8
@CWHITE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = load i8*, i8** @NO, align 8
  %8 = load i8**, i8*** @_btk, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  store i8* %7, i8** %11, align 8
  %12 = load i8**, i8*** @_itk, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  store i8* %7, i8** %15, align 8
  %16 = load i8**, i8*** @_etk, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  store i8* %7, i8** %19, align 8
  %20 = load i8**, i8*** @_wht, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* %7, i8** %23, align 8
  %24 = load i8*, i8** @YES, align 8
  %25 = load i8**, i8*** @_gd, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  store i8* %24, i8** %28, align 8
  br label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %3

32:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i8*, i8** %2, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8*, i8** @YES, align 8
  %39 = load i8**, i8*** @_wht, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  store i8* %38, i8** %43, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %2, align 8
  br label %33

47:                                               ; preds = %33
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i8*, i8** %2, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8*, i8** @YES, align 8
  %54 = load i8**, i8*** @_etk, align 8
  %55 = load i8*, i8** %2, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  store i8* %53, i8** %58, align 8
  br label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %2, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %2, align 8
  br label %48

62:                                               ; preds = %48
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i8*, i8** %2, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i8*, i8** @YES, align 8
  %69 = load i8**, i8*** @_itk, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  store i8* %68, i8** %73, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %2, align 8
  br label %63

77:                                               ; preds = %63
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i8*, i8** %2, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i8*, i8** @YES, align 8
  %84 = load i8**, i8*** @_btk, align 8
  %85 = load i8*, i8** %2, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  store i8* %83, i8** %88, align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i8*, i8** %2, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %2, align 8
  br label %78

92:                                               ; preds = %78
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i8*, i8** %2, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i8*, i8** @NO, align 8
  %99 = load i8**, i8*** @_gd, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  store i8* %98, i8** %103, align 8
  br label %104

104:                                              ; preds = %97
  %105 = load i8*, i8** %2, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %2, align 8
  br label %93

107:                                              ; preds = %93
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
