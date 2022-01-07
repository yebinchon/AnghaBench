; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_range-diff.c_cmd_range_diff.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_range-diff.c_cmd_range_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.diff_options = type { i32, i32, i32* }
%struct.option = type { i32 }

@RANGE_DIFF_CREATION_FACTOR_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"creation-factor\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Percentage by which creation is weighted\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"no-dual-color\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"use simple diff colors\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@git_diff_ui_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@builtin_range_diff_usage = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"no .. in range: '%s'\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s..%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"single arg format must be symmetric range\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s..%.*s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%.*s..%s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"need two commit ranges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_range_diff(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x %struct.option], align 4
  %11 = alloca %struct.option*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = load i32, i32* @RANGE_DIFF_CREATION_FACTOR_DEFAULT, align 4
  store i32 %18, i32* %7, align 4
  %19 = bitcast %struct.diff_options* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  store i32 -1, i32* %9, align 4
  %20 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %21 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %21)
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %25 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %9, i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %29 = call i32 (...) @OPT_END()
  %30 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %12, align 4
  %31 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %32 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %33 = load i32, i32* @git_diff_ui_config, align 4
  %34 = call i32 @git_config(i32 %33, i32* null)
  %35 = load i32, i32* @the_repository, align 4
  %36 = call i32 @repo_diff_setup(i32 %35, %struct.diff_options* %8)
  %37 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %38 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.option* @parse_options_concat(%struct.option* %37, i32 %39)
  store %struct.option* %40, %struct.option** %11, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.option*, %struct.option** %11, align 8
  %45 = load i32, i32* @builtin_range_diff_usage, align 4
  %46 = call i32 @parse_options(i32 %41, i8** %42, i8* %43, %struct.option* %44, i32 %45, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = call i32 @diff_setup_done(%struct.diff_options* %8)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %50, %3
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %88

55:                                               ; preds = %52
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @die(i32 %62, i8* %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* %70)
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @strstr(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %67
  %78 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @die(i32 %78, i8* %81)
  br label %83

83:                                               ; preds = %77, %67
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %86)
  br label %161

88:                                               ; preds = %52
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %94, i8* %97)
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %101, i8* %104)
  br label %160

106:                                              ; preds = %88
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %153

109:                                              ; preds = %106
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @strstr(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* %113, i8** %15, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %16, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %109
  %120 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %121 = call i32 @error(i32 %120)
  %122 = load i32, i32* @builtin_range_diff_usage, align 4
  %123 = load %struct.option*, %struct.option** %11, align 8
  %124 = call i32 @usage_with_options(i32 %122, %struct.option* %123)
  br label %125

125:                                              ; preds = %119, %109
  %126 = load i8*, i8** %15, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %125
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = call i32 @strlen(i8* %135)
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %134, %125
  %138 = load i8*, i8** %15, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 3
  store i8* %139, i8** %15, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = load i8, i8* %140, align 1
  %142 = icmp ne i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %15, align 8
  br label %144

144:                                              ; preds = %143, %137
  %145 = load i8*, i8** %15, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i8*, i8** %16, align 8
  %148 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %145, i32 %146, i8* %147)
  %149 = load i32, i32* %17, align 4
  %150 = load i8*, i8** %16, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %149, i8* %150, i8* %151)
  br label %159

153:                                              ; preds = %106
  %154 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %155 = call i32 @error(i32 %154)
  %156 = load i32, i32* @builtin_range_diff_usage, align 4
  %157 = load %struct.option*, %struct.option** %11, align 8
  %158 = call i32 @usage_with_options(i32 %156, %struct.option* %157)
  br label %159

159:                                              ; preds = %153, %144
  br label %160

160:                                              ; preds = %159, %91
  br label %161

161:                                              ; preds = %160, %83
  %162 = load %struct.option*, %struct.option** %11, align 8
  %163 = call i32 @FREE_AND_NULL(%struct.option* %162)
  %164 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 1
  %171 = zext i1 %170 to i32
  %172 = call i32 @show_range_diff(i32 %165, i32 %167, i32 %168, i32 %171, %struct.diff_options* %8)
  store i32 %172, i32* %12, align 4
  %173 = call i32 @strbuf_release(%struct.strbuf* %13)
  %174 = call i32 @strbuf_release(%struct.strbuf* %14)
  %175 = load i32, i32* %12, align 4
  ret i32 %175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #2

declare dso_local i32 @OPT_END(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @repo_diff_setup(i32, %struct.diff_options*) #2

declare dso_local %struct.option* @parse_options_concat(%struct.option*, i32) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @FREE_AND_NULL(%struct.option*) #2

declare dso_local i32 @show_range_diff(i32, i32, i32, i32, %struct.diff_options*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
