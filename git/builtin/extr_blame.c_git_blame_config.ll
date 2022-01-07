; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_git_blame_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_git_blame_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"blame.showroot\00", align 1
@show_root = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"blame.blankboundary\00", align 1
@blank_boundary = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"blame.showemail\00", align 1
@OUTPUT_SHOW_EMAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"blame.date\00", align 1
@blame_date_mode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"blame.ignorerevsfile\00", align 1
@ignore_revs_file_list = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"blame.markunblamablelines\00", align 1
@mark_unblamable_lines = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"blame.markignoredlines\00", align 1
@mark_ignored_lines = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"color.blame.repeatedlines\00", align 1
@repeated_meta_color = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"invalid color '%s' in color.blame.repeatedLines\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"color.blame.highlightrecent\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"blame.coloring\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"repeatedLines\00", align 1
@OUTPUT_COLOR_LINE = common dso_local global i32 0, align 4
@coloring_mode = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"highlightRecent\00", align 1
@OUTPUT_SHOW_AGE_WITH_COLOR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"invalid value for blame.coloring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_blame_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_blame_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @git_config_bool(i8* %15, i8* %16)
  store i8* %17, i8** @show_root, align 8
  store i32 0, i32* %4, align 4
  br label %171

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @git_config_bool(i8* %23, i8* %24)
  store i8* %25, i8** @blank_boundary, align 8
  store i32 0, i32* %4, align 4
  br label %171

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @git_config_bool(i8* %33, i8* %34)
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @OUTPUT_SHOW_EMAIL, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load i32, i32* @OUTPUT_SHOW_EMAIL, align 4
  %44 = xor i32 %43, -1
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  store i32 0, i32* %4, align 4
  br label %171

49:                                               ; preds = %26
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @config_error_nonbool(i8* %57)
  store i32 %58, i32* %4, align 4
  br label %171

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @parse_date_format(i8* %60, i32* @blame_date_mode)
  store i32 0, i32* %4, align 4
  br label %171

62:                                               ; preds = %49
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @git_config_pathname(i8** %9, i8* %67, i8* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %171

74:                                               ; preds = %66
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @string_list_insert(i32* @ignore_revs_file_list, i8* %75)
  store i32 0, i32* %4, align 4
  br label %171

77:                                               ; preds = %62
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @git_config_bool(i8* %82, i8* %83)
  store i8* %84, i8** @mark_unblamable_lines, align 8
  store i32 0, i32* %4, align 4
  br label %171

85:                                               ; preds = %77
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @git_config_bool(i8* %90, i8* %91)
  store i8* %92, i8** @mark_ignored_lines, align 8
  store i32 0, i32* %4, align 4
  br label %171

93:                                               ; preds = %85
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = load i32, i32* @repeated_meta_color, align 4
  %102 = call i64 @color_parse_mem(i8* %98, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i32, ...) @warning(i32 %105, i8* %106)
  br label %108

108:                                              ; preds = %104, %97
  store i32 0, i32* %4, align 4
  br label %171

109:                                              ; preds = %93
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @parse_color_fields(i8* %114)
  store i32 0, i32* %4, align 4
  br label %171

116:                                              ; preds = %109
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %153, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @OUTPUT_COLOR_LINE, align 4
  %126 = load i32, i32* @coloring_mode, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* @coloring_mode, align 4
  br label %152

128:                                              ; preds = %120
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @OUTPUT_SHOW_AGE_WITH_COLOR, align 4
  %134 = load i32, i32* @coloring_mode, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* @coloring_mode, align 4
  br label %151

136:                                              ; preds = %128
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @OUTPUT_COLOR_LINE, align 4
  %142 = load i32, i32* @OUTPUT_SHOW_AGE_WITH_COLOR, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* @coloring_mode, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* @coloring_mode, align 4
  br label %150

147:                                              ; preds = %136
  %148 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %149 = call i32 (i32, ...) @warning(i32 %148)
  store i32 0, i32* %4, align 4
  br label %171

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %132
  br label %152

152:                                              ; preds = %151, %124
  br label %153

153:                                              ; preds = %152, %116
  %154 = load i8*, i8** %5, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = call i64 @git_diff_heuristic_config(i8* %154, i8* %155, i8* %156)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 -1, i32* %4, align 4
  br label %171

160:                                              ; preds = %153
  %161 = load i8*, i8** %5, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = call i64 @userdiff_config(i8* %161, i8* %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 -1, i32* %4, align 4
  br label %171

166:                                              ; preds = %160
  %167 = load i8*, i8** %5, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @git_default_config(i8* %167, i8* %168, i8* %169)
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %165, %159, %147, %113, %108, %89, %81, %74, %72, %59, %56, %48, %22, %14
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @parse_date_format(i8*, i32*) #1

declare dso_local i32 @git_config_pathname(i8**, i8*, i8*) #1

declare dso_local i32 @string_list_insert(i32*, i8*) #1

declare dso_local i64 @color_parse_mem(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @warning(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_color_fields(i8*) #1

declare dso_local i64 @git_diff_heuristic_config(i8*, i8*, i8*) #1

declare dso_local i64 @userdiff_config(i8*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
