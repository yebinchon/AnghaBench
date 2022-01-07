; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_best_line_matches.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_best_line_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fingerprint = type { i32 }
%struct.line_number_mapping = type { i32 }

@CERTAINTY_NOT_CALCULATED = common dso_local global i32 0, align 4
@CERTAIN_NOTHING_MATCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.fingerprint*, %struct.fingerprint*, i32*, i32*, i32*, i32*, i32, %struct.line_number_mapping*)* @find_best_line_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_best_line_matches(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fingerprint* %4, %struct.fingerprint* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32 %10, %struct.line_number_mapping* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fingerprint*, align 8
  %18 = alloca %struct.fingerprint*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.line_number_mapping*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store %struct.fingerprint* %4, %struct.fingerprint** %17, align 8
  store %struct.fingerprint* %5, %struct.fingerprint** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  store %struct.line_number_mapping* %11, %struct.line_number_mapping** %24, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %20, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CERTAINTY_NOT_CALCULATED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %12
  br label %167

42:                                               ; preds = %12
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.line_number_mapping*, %struct.line_number_mapping** %24, align 8
  %47 = call i32 @map_line_number(i32 %45, %struct.line_number_mapping* %46)
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %28, align 4
  %50 = load i32, i32* %28, align 4
  %51 = load i32, i32* %23, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %26, align 4
  %53 = load i32, i32* %26, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 0, i32* %26, align 4
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %28, align 4
  %58 = load i32, i32* %23, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %27, align 4
  %61 = load i32, i32* %27, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %27, align 4
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i32, i32* %26, align 4
  store i32 %67, i32* %25, align 4
  br label %68

68:                                               ; preds = %128, %66
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %27, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %131

72:                                               ; preds = %68
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %28, align 4
  %77 = load i32, i32* %23, align 4
  %78 = call i32* @get_similarity(i32* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32* %78, i32** %29, align 8
  %79 = load i32*, i32** %29, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %106

82:                                               ; preds = %72
  %83 = load i32, i32* %25, align 4
  %84 = load i32, i32* %28, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @abs(i32 %85) #3
  %87 = icmp slt i32 %86, 1000
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.fingerprint*, %struct.fingerprint** %18, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %90, i64 %92
  %94 = load %struct.fingerprint*, %struct.fingerprint** %17, align 8
  %95 = load i32, i32* %25, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %94, i64 %96
  %98 = call i32 @fingerprint_similarity(%struct.fingerprint* %93, %struct.fingerprint* %97)
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %28, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 @abs(i32 %101) #3
  %103 = sub nsw i32 1000, %102
  %104 = mul nsw i32 %98, %103
  %105 = load i32*, i32** %29, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %82, %72
  %107 = load i32*, i32** %29, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %30, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* %30, align 4
  store i32 %112, i32* %31, align 4
  %113 = load i32, i32* %32, align 4
  store i32 %113, i32* %33, align 4
  %114 = load i32*, i32** %29, align 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %30, align 4
  %116 = load i32, i32* %25, align 4
  store i32 %116, i32* %32, align 4
  br label %127

117:                                              ; preds = %106
  %118 = load i32*, i32** %29, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %31, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32*, i32** %29, align 8
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %31, align 4
  %125 = load i32, i32* %25, align 4
  store i32 %125, i32* %33, align 4
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %25, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %25, align 4
  br label %68

131:                                              ; preds = %68
  %132 = load i32, i32* %30, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load i32, i32* @CERTAIN_NOTHING_MATCHES, align 4
  %136 = load i32*, i32** %20, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load i32*, i32** %22, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 -1, i32* %143, align 4
  br label %167

144:                                              ; preds = %131
  %145 = load i32, i32* %30, align 4
  %146 = mul nsw i32 %145, 2
  %147 = load i32, i32* %31, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32*, i32** %20, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %32, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32*, i32** %22, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %33, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32*, i32** %21, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %41, %144, %134
  ret void
}

declare dso_local i32 @map_line_number(i32, %struct.line_number_mapping*) #1

declare dso_local i32* @get_similarity(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @fingerprint_similarity(%struct.fingerprint*, %struct.fingerprint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
