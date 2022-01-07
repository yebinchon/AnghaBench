; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_locate_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_locate_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_offset = common dso_local global i32 0, align 4
@input_lines = common dso_local global i32 0, align 4
@last_frozen_line = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@diff_type = common dso_local global i64 0, align 8
@CONTEXT_DIFF = common dso_local global i64 0, align 8
@NEW_CONTEXT_DIFF = common dso_local global i64 0, align 8
@UNI_DIFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Empty context always matches.\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @locate_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locate_hunk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call i32 (...) @pch_first()
  %12 = load i32, i32* @last_offset, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @pch_ptrn_lines()
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @input_lines, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %17, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @last_frozen_line, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = call i32 (...) @pch_context()
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %1
  %30 = load i64, i64* @verbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i64, i64* @diff_type, align 8
  %37 = load i64, i64* @CONTEXT_DIFF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @diff_type, align 8
  %41 = load i64, i64* @NEW_CONTEXT_DIFF, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @diff_type, align 8
  %45 = load i64, i64* @UNI_DIFF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39, %35
  %48 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43, %32, %29
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %121

51:                                               ; preds = %1
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @input_lines, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @patch_match(i32 %63, i32 0, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %121

69:                                               ; preds = %62, %58
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %118, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sle i32 %71, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %70
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i64 @patch_match(i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* @last_offset, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %2, align 4
  br label %121

92:                                               ; preds = %81, %70
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 0, %97
  %99 = load i32, i32* %3, align 4
  %100 = call i64 @patch_match(i32 %96, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* @last_offset, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %2, align 4
  br label %121

108:                                              ; preds = %95, %92
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %121

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %70

121:                                              ; preds = %114, %102, %87, %67, %49
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @pch_first(...) #1

declare dso_local i32 @pch_ptrn_lines(...) #1

declare dso_local i32 @pch_context(...) #1

declare dso_local i32 @say(i8*, ...) #1

declare dso_local i64 @patch_match(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
