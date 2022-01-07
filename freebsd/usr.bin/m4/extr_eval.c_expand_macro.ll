; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_expand_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_expand_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARGFLAG = common dso_local global i8 0, align 1
@COMMA = common dso_local global i32 0, align 4
@rquote = common dso_local global i8* null, align 8
@lquote = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_macro(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8**, i8*** %3, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %17, %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  br label %13

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %134, %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %27, label %137

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @ARGFLAG, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @PUSHBACK(i8 signext %37)
  br label %134

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %126 [
    i32 35, label %43
    i32 48, label %47
    i32 49, label %47
    i32 50, label %47
    i32 51, label %47
    i32 52, label %47
    i32 53, label %47
    i32 54, label %47
    i32 55, label %47
    i32 56, label %47
    i32 57, label %47
    i32 42, label %64
    i32 64, label %91
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 2
  %46 = call i32 @pbnum(i32 %45)
  br label %131

47:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39, %39
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i8**, i8*** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @pbstr(i8* %61)
  br label %63

63:                                               ; preds = %55, %47
  br label %131

64:                                               ; preds = %39
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %82, %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp sgt i32 %71, 2
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @pbstr(i8* %78)
  %80 = load i32, i32* @COMMA, align 4
  %81 = call i32 @pushback(i32 %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %7, align 4
  br label %70

85:                                               ; preds = %70
  %86 = load i8**, i8*** %3, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @pbstr(i8* %88)
  br label %90

90:                                               ; preds = %85, %64
  br label %131

91:                                               ; preds = %39
  %92 = load i32, i32* %4, align 4
  %93 = icmp sgt i32 %92, 2
  br i1 %93, label %94, label %125

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %113, %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp sgt i32 %98, 2
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = load i8*, i8** @rquote, align 8
  %102 = call i32 @pbstr(i8* %101)
  %103 = load i8**, i8*** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @pbstr(i8* %107)
  %109 = load i8*, i8** @lquote, align 8
  %110 = call i32 @pbstr(i8* %109)
  %111 = load i32, i32* @COMMA, align 4
  %112 = call i32 @pushback(i32 %111)
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %7, align 4
  br label %97

116:                                              ; preds = %97
  %117 = load i8*, i8** @rquote, align 8
  %118 = call i32 @pbstr(i8* %117)
  %119 = load i8**, i8*** %3, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @pbstr(i8* %121)
  %123 = load i8*, i8** @lquote, align 8
  %124 = call i32 @pbstr(i8* %123)
  br label %125

125:                                              ; preds = %116, %91
  br label %131

126:                                              ; preds = %39
  %127 = load i8*, i8** %6, align 8
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @PUSHBACK(i8 signext %128)
  %130 = call i32 @PUSHBACK(i8 signext 36)
  br label %131

131:                                              ; preds = %126, %125, %90, %63, %43
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 -1
  store i8* %133, i8** %6, align 8
  br label %134

134:                                              ; preds = %131, %35
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %136, i8** %6, align 8
  br label %23

137:                                              ; preds = %23
  %138 = load i8*, i8** %6, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = icmp eq i8* %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = call i32 @PUSHBACK(i8 signext %143)
  br label %145

145:                                              ; preds = %141, %137
  ret void
}

declare dso_local i32 @PUSHBACK(i8 signext) #1

declare dso_local i32 @pbnum(i32) #1

declare dso_local i32 @pbstr(i8*) #1

declare dso_local i32 @pushback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
