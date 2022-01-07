; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_line_by_line_fuzzy_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_line_by_line_fuzzy_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image = type { i64, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.strbuf = type { i32 }

@LINE_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image*, %struct.image*, %struct.image*, i64, i32, i32)* @line_by_line_fuzzy_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_by_line_fuzzy_match(%struct.image* %0, %struct.image* %1, %struct.image* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.image*, align 8
  %9 = alloca %struct.image*, align 8
  %10 = alloca %struct.image*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.strbuf, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.image* %0, %struct.image** %8, align 8
  store %struct.image* %1, %struct.image** %9, align 8
  store %struct.image* %2, %struct.image** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %27 = load %struct.image*, %struct.image** %10, align 8
  %28 = getelementptr inbounds %struct.image, %struct.image* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %17, align 8
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %95, %6
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %98

34:                                               ; preds = %30
  %35 = load %struct.image*, %struct.image** %9, align 8
  %36 = getelementptr inbounds %struct.image, %struct.image* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %25, align 8
  %43 = load %struct.image*, %struct.image** %8, align 8
  %44 = getelementptr inbounds %struct.image, %struct.image* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %26, align 8
  %53 = load %struct.image*, %struct.image** %8, align 8
  %54 = getelementptr inbounds %struct.image, %struct.image* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i64, i64* %26, align 8
  %61 = load %struct.image*, %struct.image** %9, align 8
  %62 = getelementptr inbounds %struct.image, %struct.image* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i64, i64* %25, align 8
  %67 = call i32 @fuzzy_matchlines(i8* %59, i64 %60, i8* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %171

70:                                               ; preds = %34
  %71 = load %struct.image*, %struct.image** %9, align 8
  %72 = getelementptr inbounds %struct.image, %struct.image* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @LINE_COMMON, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i64, i64* %26, align 8
  %84 = load i64, i64* %25, align 8
  %85 = sub i64 %83, %84
  %86 = load i64, i64* %17, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %17, align 8
  br label %88

88:                                               ; preds = %82, %70
  %89 = load i64, i64* %26, align 8
  %90 = load i64, i64* %15, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %25, align 8
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %16, align 8
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %30

98:                                               ; preds = %30
  %99 = load %struct.image*, %struct.image** %9, align 8
  %100 = getelementptr inbounds %struct.image, %struct.image* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %16, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %20, align 8
  store i8* %103, i8** %19, align 8
  br label %104

104:                                              ; preds = %121, %98
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.image*, %struct.image** %9, align 8
  %107 = getelementptr inbounds %struct.image, %struct.image* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %104
  %111 = load %struct.image*, %struct.image** %9, align 8
  %112 = getelementptr inbounds %struct.image, %struct.image* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %16, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %16, align 8
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %104

124:                                              ; preds = %104
  %125 = load %struct.image*, %struct.image** %9, align 8
  %126 = getelementptr inbounds %struct.image, %struct.image* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* %16, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %21, align 8
  br label %130

130:                                              ; preds = %141, %124
  %131 = load i8*, i8** %19, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = icmp ult i8* %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i8*, i8** %19, align 8
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @isspace(i8 signext %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  br label %171

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %19, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %19, align 8
  br label %130

144:                                              ; preds = %130
  %145 = load i8*, i8** %21, align 8
  %146 = load i8*, i8** %20, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  store i64 %149, i64* %18, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %18, align 8
  %152 = add i64 %150, %151
  %153 = call i32 @strbuf_init(%struct.strbuf* %22, i64 %152)
  %154 = load %struct.image*, %struct.image** %8, align 8
  %155 = getelementptr inbounds %struct.image, %struct.image* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i64, i64* %15, align 8
  %160 = call i32 @strbuf_add(%struct.strbuf* %22, i8* %158, i64 %159)
  %161 = load i8*, i8** %20, align 8
  %162 = load i64, i64* %18, align 8
  %163 = call i32 @strbuf_add(%struct.strbuf* %22, i8* %161, i64 %162)
  %164 = call i8* @strbuf_detach(%struct.strbuf* %22, i64* %24)
  store i8* %164, i8** %23, align 8
  %165 = load %struct.image*, %struct.image** %9, align 8
  %166 = load %struct.image*, %struct.image** %10, align 8
  %167 = load i8*, i8** %23, align 8
  %168 = load i64, i64* %24, align 8
  %169 = load i64, i64* %17, align 8
  %170 = call i32 @update_pre_post_images(%struct.image* %165, %struct.image* %166, i8* %167, i64 %168, i64 %169)
  store i32 1, i32* %7, align 4
  br label %171

171:                                              ; preds = %144, %139, %69
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @fuzzy_matchlines(i8*, i64, i8*, i64) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #1

declare dso_local i32 @update_pre_post_images(%struct.image*, %struct.image*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
