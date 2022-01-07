; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-attr.c_cmd_check_attr.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-attr.c_cmd_check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type { i32 }
%struct.git_attr = type { i32 }

@git_default_config = common dso_local global i32 0, align 4
@check_attr_options = common dso_local global i32 0, align 4
@check_attr_usage = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"invalid cache\00", align 1
@cached_attrs = common dso_local global i64 0, align 8
@GIT_ATTR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@all_attrs = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Attributes and --all both specified\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"No attribute specified\00", align 1
@stdin_paths = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Can't specify files with --stdin\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"No file specified\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: not a valid attribute name\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"attribute to stdout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_check_attr(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.attr_check*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.git_attr*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = call i32 (...) @is_bare_repository()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @setup_work_tree()
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32, i32* @git_default_config, align 4
  %20 = call i32 @git_config(i32 %19, i32* null)
  %21 = load i32, i32* %5, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @check_attr_options, align 4
  %25 = load i32, i32* @check_attr_usage, align 4
  %26 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %27 = call i32 @parse_options(i32 %21, i8** %22, i8* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = call i64 (...) @read_cache()
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i64, i64* @cached_attrs, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @GIT_ATTR_INDEX, align 4
  %37 = call i32 @git_attr_set_direction(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %48, label %62

48:                                               ; preds = %46
  %49 = load i8**, i8*** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %48
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %39

62:                                               ; preds = %46
  %63 = load i64, i64* @all_attrs, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @error_with_usage(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  store i32 0, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %100

73:                                               ; preds = %62
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @error_with_usage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %99

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 @error_with_usage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i64, i64* @stdin_paths, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %12, align 4
  br label %93

92:                                               ; preds = %86
  store i32 1, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %98

94:                                               ; preds = %78
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %94, %93
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99, %70
  %101 = load i64, i64* @stdin_paths, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @error_with_usage(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103
  br label %117

110:                                              ; preds = %100
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 @error_with_usage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %109
  %118 = call %struct.attr_check* (...) @attr_check_alloc()
  store %struct.attr_check* %118, %struct.attr_check** %8, align 8
  %119 = load i64, i64* @all_attrs, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %150, label %121

121:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %146, %121
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %122
  %127 = load i8**, i8*** %6, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call %struct.git_attr* @git_attr(i8* %131)
  store %struct.git_attr* %132, %struct.git_attr** %13, align 8
  %133 = load %struct.git_attr*, %struct.git_attr** %13, align 8
  %134 = icmp ne %struct.git_attr* %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %126
  %136 = load i8**, i8*** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  store i32 %141, i32* %4, align 4
  br label %183

142:                                              ; preds = %126
  %143 = load %struct.attr_check*, %struct.attr_check** %8, align 8
  %144 = load %struct.git_attr*, %struct.git_attr** %13, align 8
  %145 = call i32 @attr_check_append(%struct.attr_check* %143, %struct.git_attr* %144)
  br label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %122

149:                                              ; preds = %122
  br label %150

150:                                              ; preds = %149, %117
  %151 = load i64, i64* @stdin_paths, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i8*, i8** %7, align 8
  %155 = load %struct.attr_check*, %struct.attr_check** %8, align 8
  %156 = load i64, i64* @all_attrs, align 8
  %157 = call i32 @check_attr_stdin_paths(i8* %154, %struct.attr_check* %155, i64 %156)
  br label %180

158:                                              ; preds = %150
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %174, %158
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = load i8*, i8** %7, align 8
  %166 = load %struct.attr_check*, %struct.attr_check** %8, align 8
  %167 = load i64, i64* @all_attrs, align 8
  %168 = load i8**, i8*** %6, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @check_attr(i8* %165, %struct.attr_check* %166, i64 %167, i8* %172)
  br label %174

174:                                              ; preds = %164
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %160

177:                                              ; preds = %160
  %178 = load i32, i32* @stdout, align 4
  %179 = call i32 @maybe_flush_or_die(i32 %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %153
  %181 = load %struct.attr_check*, %struct.attr_check** %8, align 8
  %182 = call i32 @attr_check_free(%struct.attr_check* %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %180, %135
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @is_bare_repository(...) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, i32, i32, i32) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @git_attr_set_direction(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error_with_usage(i8*) #1

declare dso_local %struct.attr_check* @attr_check_alloc(...) #1

declare dso_local %struct.git_attr* @git_attr(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @attr_check_append(%struct.attr_check*, %struct.git_attr*) #1

declare dso_local i32 @check_attr_stdin_paths(i8*, %struct.attr_check*, i64) #1

declare dso_local i32 @check_attr(i8*, %struct.attr_check*, i64, i8*) #1

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #1

declare dso_local i32 @attr_check_free(%struct.attr_check*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
