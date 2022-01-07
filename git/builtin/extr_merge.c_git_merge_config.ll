; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_git_merge_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_git_merge_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@branch = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"branch.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c".mergeoptions\00", align 1
@branch_mergeoptions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"merge.diffstat\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"merge.stat\00", align 1
@show_diffstat = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"merge.verifysignatures\00", align 1
@verify_signatures = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"pull.twohead\00", align 1
@pull_twohead = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"pull.octopus\00", align 1
@pull_octopus = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"commit.cleanup\00", align 1
@cleanup_arg = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"merge.renormalize\00", align 1
@option_renormalize = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"merge.ff\00", align 1
@FF_ALLOW = common dso_local global i32 0, align 4
@FF_NO = common dso_local global i32 0, align 4
@fast_forward = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@FF_ONLY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"merge.defaulttoupstream\00", align 1
@default_to_upstream = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"commit.gpgsign\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sign_commit = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_merge_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_merge_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** @branch, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @starts_with(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 7
  %19 = load i8*, i8** @branch, align 8
  %20 = call i64 @starts_with(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 7
  %25 = load i8*, i8** @branch, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @branch_mergeoptions, align 4
  %33 = call i32 @free(i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @xstrdup(i8* %34)
  store i32 %35, i32* @branch_mergeoptions, align 4
  store i32 0, i32* %4, align 4
  br label %166

36:                                               ; preds = %22, %16, %12, %3
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @git_config_bool(i8* %45, i8* %46)
  store i8* %47, i8** @show_diffstat, align 8
  br label %144

48:                                               ; preds = %40
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @git_config_bool(i8* %53, i8* %54)
  store i8* %55, i8** @verify_signatures, align 8
  br label %143

56:                                               ; preds = %48
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @git_config_string(i32* @pull_twohead, i8* %61, i8* %62)
  store i32 %63, i32* %4, align 4
  br label %166

64:                                               ; preds = %56
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @git_config_string(i32* @pull_octopus, i8* %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %166

72:                                               ; preds = %64
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @git_config_string(i32* @cleanup_arg, i8* %77, i8* %78)
  store i32 %79, i32* %4, align 4
  br label %166

80:                                               ; preds = %72
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i8* @git_config_bool(i8* %85, i8* %86)
  store i8* %87, i8** @option_renormalize, align 8
  br label %139

88:                                               ; preds = %80
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %117, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @git_parse_maybe_bool(i8* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp sle i32 0, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @FF_ALLOW, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @FF_NO, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* @fast_forward, align 4
  br label %116

106:                                              ; preds = %92
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @FF_ONLY, align 4
  store i32 %114, i32* @fast_forward, align 4
  br label %115

115:                                              ; preds = %113, %109, %106
  br label %116

116:                                              ; preds = %115, %104
  store i32 0, i32* %4, align 4
  br label %166

117:                                              ; preds = %88
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i8* @git_config_bool(i8* %122, i8* %123)
  store i8* %124, i8** @default_to_upstream, align 8
  store i32 0, i32* %4, align 4
  br label %166

125:                                              ; preds = %117
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %125
  %130 = load i8*, i8** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i8* @git_config_bool(i8* %130, i8* %131)
  %133 = icmp ne i8* %132, null
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* null
  store i8* %135, i8** @sign_commit, align 8
  store i32 0, i32* %4, align 4
  br label %166

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %84
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %52
  br label %144

144:                                              ; preds = %143, %44
  %145 = load i8*, i8** %5, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @fmt_merge_msg_config(i8* %145, i8* %146, i8* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %166

153:                                              ; preds = %144
  %154 = load i8*, i8** %5, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @git_gpg_config(i8* %154, i8* %155, i32* null)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %4, align 4
  br label %166

161:                                              ; preds = %153
  %162 = load i8*, i8** %5, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @git_diff_ui_config(i8* %162, i8* %163, i8* %164)
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %161, %159, %151, %129, %121, %116, %76, %68, %60, %31
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @fmt_merge_msg_config(i8*, i8*, i8*) #1

declare dso_local i32 @git_gpg_config(i8*, i8*, i32*) #1

declare dso_local i32 @git_diff_ui_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
