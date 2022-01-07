; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locate/locate/extr_util.c_colon.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locate/locate/extr_util.c_colon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"empty database name, ignored\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @colon(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = call i8* @malloc(i32 8)
  %18 = bitcast i8* %17 to i8**
  store i8** %18, i8*** %5, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i8**, i8*** %5, align 8
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8**, i8*** %5, align 8
  store i8** %31, i8*** %4, align 8
  br label %133

32:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %33 = load i8**, i8*** %5, align 8
  store i8** %33, i8*** %13, align 8
  br label %34

34:                                               ; preds = %39, %32
  %35 = load i8**, i8*** %13, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load i8**, i8*** %13, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %13, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %34

44:                                               ; preds = %34
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %10, align 8
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %128, %44
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %66, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %121, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 58
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = icmp eq i8* %62, %64
  br i1 %65, label %121, label %66

66:                                               ; preds = %61, %55, %46
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %12, align 8
  br label %97

72:                                               ; preds = %66
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 1, %81
  %83 = trunc i64 %82 to i32
  %84 = call i8* @malloc(i32 %83)
  store i8* %84, i8** %12, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %72
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @bcopy(i8* %89, i8* %90, i32 %91)
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  br label %97

97:                                               ; preds = %88, %70
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = mul i64 8, %101
  %103 = trunc i64 %102 to i32
  %104 = call i8** @realloc(i8** %98, i32 %103)
  store i8** %104, i8*** %5, align 8
  %105 = icmp eq i8** %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %97
  %109 = load i8*, i8** %12, align 8
  %110 = load i8**, i8*** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %109, i8** %113, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  store i8* null, i8** %118, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** %10, align 8
  br label %121

121:                                              ; preds = %108, %61, %51
  %122 = load i8*, i8** %11, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %131

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %11, align 8
  br label %46

131:                                              ; preds = %126
  %132 = load i8**, i8*** %5, align 8
  store i8** %132, i8*** %4, align 8
  br label %133

133:                                              ; preds = %131, %29
  %134 = load i8**, i8*** %4, align 8
  ret i8** %134
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
