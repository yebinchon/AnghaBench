; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_cmd_notes.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_cmd_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"notes-ref\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"use notes from <notes-ref>\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@git_notes_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"GIT_NOTES_REF\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"get-ref\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"unknown subcommand: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_notes(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %struct.option], align 4
  %10 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  %11 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %12 = call i32 @N_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %11, i64 1
  %17 = call i32 (...) @OPT_END()
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @git_default_config, align 4
  %20 = call i32 @git_config(i32 %19, i32* null)
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %25 = load i32, i32* @git_notes_usage, align 4
  %26 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %27 = call i32 @parse_options(i32 %21, i8** %22, i8* %23, %struct.option* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* %32)
  %34 = call i32 @expand_notes_ref(%struct.strbuf* %10)
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @setenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 1)
  %38 = call i32 @strbuf_release(%struct.strbuf* %10)
  br label %39

39:                                               ; preds = %30, %3
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @list(i32 %49, i8** %50, i8* %51)
  store i32 %52, i32* %7, align 4
  br label %164

53:                                               ; preds = %42
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @add(i32 %60, i8** %61, i8* %62)
  store i32 %63, i32* %7, align 4
  br label %163

64:                                               ; preds = %53
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @copy(i32 %71, i8** %72, i8* %73)
  store i32 %74, i32* %7, align 4
  br label %162

75:                                               ; preds = %64
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81, %75
  %88 = load i32, i32* %4, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @append_edit(i32 %88, i8** %89, i8* %90)
  store i32 %91, i32* %7, align 4
  br label %161

92:                                               ; preds = %81
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = load i8**, i8*** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @show(i32 %99, i8** %100, i8* %101)
  store i32 %102, i32* %7, align 4
  br label %160

103:                                              ; preds = %92
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @merge(i32 %110, i8** %111, i8* %112)
  store i32 %113, i32* %7, align 4
  br label %159

114:                                              ; preds = %103
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %4, align 4
  %122 = load i8**, i8*** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @remove_cmd(i32 %121, i8** %122, i8* %123)
  store i32 %124, i32* %7, align 4
  br label %158

125:                                              ; preds = %114
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %4, align 4
  %133 = load i8**, i8*** %5, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @prune(i32 %132, i8** %133, i8* %134)
  store i32 %135, i32* %7, align 4
  br label %157

136:                                              ; preds = %125
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %4, align 4
  %144 = load i8**, i8*** %5, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @get_ref(i32 %143, i8** %144, i8* %145)
  store i32 %146, i32* %7, align 4
  br label %156

147:                                              ; preds = %136
  %148 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @error(i32 %148, i8* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* @git_notes_usage, align 4
  %154 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %155 = call i32 @usage_with_options(i32 %153, %struct.option* %154)
  br label %156

156:                                              ; preds = %147, %142
  br label %157

157:                                              ; preds = %156, %131
  br label %158

158:                                              ; preds = %157, %120
  br label %159

159:                                              ; preds = %158, %109
  br label %160

160:                                              ; preds = %159, %98
  br label %161

161:                                              ; preds = %160, %87
  br label %162

162:                                              ; preds = %161, %70
  br label %163

163:                                              ; preds = %162, %59
  br label %164

164:                                              ; preds = %163, %48
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  ret i32 %168
}

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @expand_notes_ref(%struct.strbuf*) #1

declare dso_local i32 @setenv(i8*, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @list(i32, i8**, i8*) #1

declare dso_local i32 @add(i32, i8**, i8*) #1

declare dso_local i32 @copy(i32, i8**, i8*) #1

declare dso_local i32 @append_edit(i32, i8**, i8*) #1

declare dso_local i32 @show(i32, i8**, i8*) #1

declare dso_local i32 @merge(i32, i8**, i8*) #1

declare dso_local i32 @remove_cmd(i32, i8**, i8*) #1

declare dso_local i32 @prune(i32, i8**, i8*) #1

declare dso_local i32 @get_ref(i32, i8**, i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
