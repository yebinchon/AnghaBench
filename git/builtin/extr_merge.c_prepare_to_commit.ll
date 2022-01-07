; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_prepare_to_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_prepare_to_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.commit_list = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@no_verify = common dso_local global i32 0, align 4
@option_edit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"pre-merge-commit\00", align 1
@merge_msg = common dso_local global %struct.strbuf zeroinitializer, align 4
@squash = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"the control must not reach here under --squash\00", align 1
@cleanup_mode = common dso_local global i64 0, align 8
@COMMIT_MSG_CLEANUP_SCISSORS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@merge_editor_comment = common dso_local global i8* null, align 8
@scissors_editor_comment = common dso_local global i8* null, align 8
@no_scissors_editor_comment = common dso_local global i8* null, align 8
@comment_line_char = common dso_local global i32 0, align 4
@signoff = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"prepare-commit-msg\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"commit-msg\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Empty commit message.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*)* @prepare_to_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_to_commit(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i8*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %6 = call i8* (...) @get_index_file()
  store i8* %6, i8** %4, align 8
  %7 = load i32, i32* @no_verify, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @option_edit, align 8
  %11 = icmp slt i64 0, %10
  %12 = zext i1 %11 to i32
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 (i32, i8*, i8*, i32, ...) @run_commit_hook(i32 %12, i8* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %18 = call i32 @abort_commit(%struct.commit_list* %17, i32* null)
  br label %19

19:                                               ; preds = %16, %9, %1
  %20 = call i64 @find_hook(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @discard_cache()
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @read_cache_from(i8* %25)
  %27 = call i32 @strbuf_addbuf(%struct.strbuf* %3, %struct.strbuf* @merge_msg)
  %28 = load i64, i64* @squash, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64, i64* @option_edit, align 8
  %34 = icmp slt i64 0, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext 10)
  %37 = load i64, i64* @cleanup_mode, align 8
  %38 = load i64, i64* @COMMIT_MSG_CLEANUP_SCISSORS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i32 @wt_status_append_cut_line(%struct.strbuf* %3)
  %42 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_commented_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** @merge_editor_comment, align 8
  %45 = call i32* @_(i8* %44)
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_commented_addf(%struct.strbuf* %3, i8* %46)
  %48 = load i64, i64* @cleanup_mode, align 8
  %49 = load i64, i64* @COMMIT_MSG_CLEANUP_SCISSORS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i8*, i8** @scissors_editor_comment, align 8
  br label %55

53:                                               ; preds = %43
  %54 = load i8*, i8** @no_scissors_editor_comment, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i8* [ %52, %51 ], [ %54, %53 ]
  %57 = call i32* @_(i8* %56)
  %58 = bitcast i32* %57 to i8*
  %59 = load i32, i32* @comment_line_char, align 4
  %60 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_commented_addf(%struct.strbuf* %3, i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %32
  %62 = load i64, i64* @signoff, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ignore_non_trailer(i32 %66, i32 %68)
  %70 = call i32 @append_signoff(%struct.strbuf* %3, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %64, %61
  %72 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %73 = call i32 @write_merge_heads(%struct.commit_list* %72)
  %74 = load i32, i32* @the_repository, align 4
  %75 = call i32 @git_path_merge_msg(i32 %74)
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @write_file_buf(i32 %75, i32 %77, i32 %79)
  %81 = load i64, i64* @option_edit, align 8
  %82 = icmp slt i64 0, %81
  %83 = zext i1 %82 to i32
  %84 = call i8* (...) @get_index_file()
  %85 = load i32, i32* @the_repository, align 4
  %86 = call i32 @git_path_merge_msg(i32 %85)
  %87 = call i64 (i32, i8*, i8*, i32, ...) @run_commit_hook(i32 %83, i8* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %71
  %90 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %91 = call i32 @abort_commit(%struct.commit_list* %90, i32* null)
  br label %92

92:                                               ; preds = %89, %71
  %93 = load i64, i64* @option_edit, align 8
  %94 = icmp slt i64 0, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* @the_repository, align 4
  %97 = call i32 @git_path_merge_msg(i32 %96)
  %98 = call i64 @launch_editor(i32 %97, i32* null, i32* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %102 = call i32 @abort_commit(%struct.commit_list* %101, i32* null)
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103, %92
  %105 = load i32, i32* @no_verify, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @option_edit, align 8
  %109 = icmp slt i64 0, %108
  %110 = zext i1 %109 to i32
  %111 = call i8* (...) @get_index_file()
  %112 = load i32, i32* @the_repository, align 4
  %113 = call i32 @git_path_merge_msg(i32 %112)
  %114 = call i64 (i32, i8*, i8*, i32, ...) @run_commit_hook(i32 %110, i8* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %113, i8* null)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %118 = call i32 @abort_commit(%struct.commit_list* %117, i32* null)
  br label %119

119:                                              ; preds = %116, %107, %104
  %120 = call i32 @read_merge_msg(%struct.strbuf* %3)
  %121 = load i64, i64* @cleanup_mode, align 8
  %122 = call i32 @cleanup_message(%struct.strbuf* %3, i64 %121, i32 0)
  %123 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %128 = call i32* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %129 = call i32 @abort_commit(%struct.commit_list* %127, i32* %128)
  br label %130

130:                                              ; preds = %126, %119
  %131 = call i32 @strbuf_release(%struct.strbuf* @merge_msg)
  %132 = call i32 @strbuf_addbuf(%struct.strbuf* @merge_msg, %struct.strbuf* %3)
  %133 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @get_index_file(...) #2

declare dso_local i64 @run_commit_hook(i32, i8*, i8*, i32, ...) #2

declare dso_local i32 @abort_commit(%struct.commit_list*, i32*) #2

declare dso_local i64 @find_hook(i8*) #2

declare dso_local i32 @discard_cache(...) #2

declare dso_local i32 @read_cache_from(i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @wt_status_append_cut_line(%struct.strbuf*) #2

declare dso_local i32 @strbuf_commented_addf(%struct.strbuf*, i8*, ...) #2

declare dso_local i32* @_(i8*) #2

declare dso_local i32 @append_signoff(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @ignore_non_trailer(i32, i32) #2

declare dso_local i32 @write_merge_heads(%struct.commit_list*) #2

declare dso_local i32 @write_file_buf(i32, i32, i32) #2

declare dso_local i32 @git_path_merge_msg(i32) #2

declare dso_local i64 @launch_editor(i32, i32*, i32*) #2

declare dso_local i32 @read_merge_msg(%struct.strbuf*) #2

declare dso_local i32 @cleanup_message(%struct.strbuf*, i64, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
