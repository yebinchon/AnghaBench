; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mv.c_internal_prefix_pathspec.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mv.c_internal_prefix_pathspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEEP_TRAILING_SLASH = common dso_local global i32 0, align 4
@DUP_BASENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8**, i32, i32)* @internal_prefix_pathspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @internal_prefix_pathspec(i8* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ %20, %18 ], [ 0, %21 ]
  store i32 %23, i32* %11, align 4
  %24 = load i8**, i8*** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @ALLOC_ARRAY(i8** %24, i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %95, %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %28
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %63, %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @KEEP_TRAILING_SLASH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i8**, i8*** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @is_dir_sep(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %48, %45, %40
  %62 = phi i1 [ false, %45 ], [ false, %40 ], [ %60, %48 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %13, align 4
  br label %40

66:                                               ; preds = %61
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i8* @xmemdupz(i8* %71, i32 %72)
  store i8* %73, i8** %14, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @DUP_BASENAME, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @basename(i8* %79)
  %81 = call i8* @xstrdup(i32 %80)
  %82 = load i8**, i8*** %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %81, i8** %85, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @free(i8* %86)
  br label %94

88:                                               ; preds = %66
  %89 = load i8*, i8** %14, align 8
  %90 = load i8**, i8*** %10, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %89, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %78
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %28

98:                                               ; preds = %28
  %99 = load i8**, i8*** %10, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  store i8* null, i8** %102, align 8
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %127, %98
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %103
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i8**, i8*** %10, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @prefix_path(i8* %108, i32 %109, i8* %114)
  store i8* %115, i8** %15, align 8
  %116 = load i8**, i8*** %10, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %15, align 8
  %123 = load i8**, i8*** %10, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %122, i8** %126, align 8
  br label %127

127:                                              ; preds = %107
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %103

130:                                              ; preds = %103
  %131 = load i8**, i8*** %10, align 8
  ret i8** %131
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ALLOC_ARRAY(i8**, i32) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @prefix_path(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
