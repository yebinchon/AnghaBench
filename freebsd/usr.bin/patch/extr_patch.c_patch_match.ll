; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_patch_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_patch_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@canonicalize = common dso_local global i64 0, align 8
@input_lines = common dso_local global i64 0, align 8
@last_line_missing_eol = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @patch_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_match(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i16, align 2
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add nsw i64 1, %14
  store i64 %15, i64* %8, align 8
  %16 = call i64 (...) @pch_ptrn_lines()
  %17 = load i64, i64* %7, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %98, %23
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %103

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i8* @ifetch(i64 %34, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %104

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  %44 = call i8* @pfetch(i64 %43)
  store i8* %44, i8** %12, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call zeroext i16 @pch_line_len(i64 %45)
  store i16 %46, i16* %13, align 2
  %47 = load i64, i64* @canonicalize, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i16, i16* %13, align 2
  %53 = call i32 @similar(i8* %50, i8* %51, i16 zeroext %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %104

56:                                               ; preds = %49
  br label %65

57:                                               ; preds = %42
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i16, i16* %13, align 2
  %61 = call i64 @strnNE(i8* %58, i8* %59, i16 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %104

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @input_lines, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i64, i64* @last_line_missing_eol, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  %74 = load i16, i16* %13, align 2
  %75 = zext i16 %74 to i32
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %104

83:                                               ; preds = %72
  br label %96

84:                                               ; preds = %69
  %85 = load i8*, i8** %12, align 8
  %86 = load i16, i16* %13, align 2
  %87 = zext i16 %86 to i32
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %104

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96, %65
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %9, align 8
  br label %29

103:                                              ; preds = %29
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %94, %82, %63, %55, %41, %22
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @pch_ptrn_lines(...) #1

declare dso_local i8* @ifetch(i64, i32) #1

declare dso_local i8* @pfetch(i64) #1

declare dso_local zeroext i16 @pch_line_len(i64) #1

declare dso_local i32 @similar(i8*, i8*, i16 zeroext) #1

declare dso_local i64 @strnNE(i8*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
