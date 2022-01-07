; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_fuzzy_find_matching_lines.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_fuzzy_find_matching_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { %struct.fingerprint* }
%struct.fingerprint = type { i32 }
%struct.line_number_mapping = type { i32, i32, i32, i32 }

@CERTAINTY_NOT_CALCULATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.blame_origin*, %struct.blame_origin*, i32, i32, i32, i32)* @fuzzy_find_matching_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fuzzy_find_matching_lines(%struct.blame_origin* %0, %struct.blame_origin* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.blame_origin*, align 8
  %9 = alloca %struct.blame_origin*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.line_number_mapping, align 4
  %19 = alloca %struct.fingerprint*, align 8
  %20 = alloca %struct.fingerprint*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.blame_origin* %0, %struct.blame_origin** %8, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %17, align 4
  %35 = getelementptr inbounds %struct.line_number_mapping, %struct.line_number_mapping* %18, i32 0, i32 0
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.line_number_mapping, %struct.line_number_mapping* %18, i32 0, i32 1
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.line_number_mapping, %struct.line_number_mapping* %18, i32 0, i32 2
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.line_number_mapping, %struct.line_number_mapping* %18, i32 0, i32 3
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %41, align 4
  %43 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %44 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %43, i32 0, i32 0
  %45 = load %struct.fingerprint*, %struct.fingerprint** %44, align 8
  store %struct.fingerprint* %45, %struct.fingerprint** %19, align 8
  %46 = load %struct.blame_origin*, %struct.blame_origin** %9, align 8
  %47 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %46, i32 0, i32 0
  %48 = load %struct.fingerprint*, %struct.fingerprint** %47, align 8
  store %struct.fingerprint* %48, %struct.fingerprint** %20, align 8
  store i32 10, i32* %27, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %148

52:                                               ; preds = %6
  %53 = load i32, i32* %27, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 1
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %27, align 4
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i32, i32* %27, align 4
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %17, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %15, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %28, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32* @xcalloc(i32 4, i32 %74)
  store i32* %75, i32** %22, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32* @xcalloc(i32 4, i32 %76)
  store i32* %77, i32** %23, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i32* @xcalloc(i32 4, i32 %78)
  store i32* %79, i32** %24, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %27, align 4
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 %82, 1
  %84 = mul nsw i32 %80, %83
  store i32 %84, i32* %26, align 4
  %85 = load i32, i32* %26, align 4
  %86 = call i32* @xcalloc(i32 4, i32 %85)
  store i32* %86, i32** %25, align 8
  store i32 0, i32* %21, align 4
  br label %87

87:                                               ; preds = %105, %65
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i32*, i32** %22, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 -1, i32* %95, align 4
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* %21, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 -1, i32* %99, align 4
  %100 = load i32, i32* @CERTAINTY_NOT_CALCULATED, align 4
  %101 = load i32*, i32** %24, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %21, align 4
  br label %87

108:                                              ; preds = %87
  store i32 0, i32* %21, align 4
  br label %109

109:                                              ; preds = %118, %108
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %26, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32*, i32** %25, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 -1, i32* %117, align 4
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %21, align 4
  br label %109

121:                                              ; preds = %109
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load %struct.fingerprint*, %struct.fingerprint** %19, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %126, i64 %128
  %130 = load %struct.fingerprint*, %struct.fingerprint** %20, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %130, i64 %132
  %134 = load i32*, i32** %25, align 8
  %135 = load i32*, i32** %24, align 8
  %136 = load i32*, i32** %23, align 8
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %28, align 4
  %140 = call i32 @fuzzy_find_matching_lines_recurse(i32 %122, i32 %123, i32 %124, i32 %125, %struct.fingerprint* %129, %struct.fingerprint* %133, i32* %134, i32* %135, i32* %136, i32* %137, i32 %138, i32 %139, %struct.line_number_mapping* %18)
  %141 = load i32*, i32** %25, align 8
  %142 = call i32 @free(i32* %141)
  %143 = load i32*, i32** %24, align 8
  %144 = call i32 @free(i32* %143)
  %145 = load i32*, i32** %23, align 8
  %146 = call i32 @free(i32* %145)
  %147 = load i32*, i32** %22, align 8
  store i32* %147, i32** %7, align 8
  br label %148

148:                                              ; preds = %121, %51
  %149 = load i32*, i32** %7, align 8
  ret i32* %149
}

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local i32 @fuzzy_find_matching_lines_recurse(i32, i32, i32, i32, %struct.fingerprint*, %struct.fingerprint*, i32*, i32*, i32*, i32*, i32, i32, %struct.line_number_mapping*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
