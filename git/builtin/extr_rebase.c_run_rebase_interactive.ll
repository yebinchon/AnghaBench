; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_run_rebase_interactive.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_run_rebase_interactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.child_process = type { i32, i32 }
%struct.rebase_options = type { i64, i32, i32, i32, i64, i64, i64 }
%struct.replay_opts = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"rebase.abbreviatecommands\00", align 1
@TODO_LIST_KEEP_EMPTY = common dso_local global i32 0, align 4
@TODO_LIST_ABBREVIATE_CMDS = common dso_local global i32 0, align 4
@TODO_LIST_REBASE_MERGES = common dso_local global i32 0, align 4
@TODO_LIST_REBASE_COUSINS = common dso_local global i32 0, align 4
@TODO_LIST_ROOT_WITH_ONTO = common dso_local global i32 0, align 4
@TODO_LIST_SHORTEN_IDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"a base commit must be provided with --upstream or --onto\00", align 1
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"REBASE_HEAD\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid command '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*, i32)* @run_rebase_interactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rebase_interactive(%struct.rebase_options* %0, i32 %1) #0 {
  %3 = alloca %struct.rebase_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.string_list, align 4
  %9 = alloca %struct.replay_opts, align 4
  %10 = alloca %struct.child_process, align 4
  %11 = alloca %struct.string_list, align 4
  store %struct.rebase_options* %0, %struct.rebase_options** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %6)
  %13 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %14 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TODO_LIST_KEEP_EMPTY, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TODO_LIST_ABBREVIATE_CMDS, align 4
  br label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %34 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @TODO_LIST_REBASE_MERGES, align 4
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %45 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @TODO_LIST_REBASE_COUSINS, align 4
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %56 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @TODO_LIST_ROOT_WITH_ONTO, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 130
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @TODO_LIST_SHORTEN_IDS, align 4
  br label %71

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  switch i32 %75, label %128 [
    i32 132, label %76
    i32 128, label %93
    i32 135, label %97
    i32 134, label %103
    i32 129, label %106
    i32 130, label %112
    i32 133, label %112
    i32 136, label %115
    i32 131, label %118
    i32 137, label %120
  ]

76:                                               ; preds = %71
  %77 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %78 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %83 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %88 = call i32 @die(i32 %87)
  br label %89

89:                                               ; preds = %86, %81, %76
  %90 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @do_interactive_rebase(%struct.rebase_options* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  br label %131

93:                                               ; preds = %71
  %94 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %95 = load i32, i32* @the_repository, align 4
  %96 = call i32 @rerere_clear(i32 %95, %struct.string_list* %8)
  br label %97

97:                                               ; preds = %71, %93
  %98 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %99 = call i32 @get_replay_opts(%struct.rebase_options* %98)
  %100 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %9, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @the_repository, align 4
  %102 = call i32 @sequencer_continue(i32 %101, %struct.replay_opts* %9)
  store i32 %102, i32* %7, align 4
  br label %131

103:                                              ; preds = %71
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @edit_todo_file(i32 %104)
  store i32 %105, i32* %7, align 4
  br label %131

106:                                              ; preds = %71
  %107 = bitcast %struct.child_process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %108 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %110 = call i32 @argv_array_pushl(i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %111 = call i32 @run_command(%struct.child_process* %10)
  store i32 %111, i32* %7, align 4
  br label %131

112:                                              ; preds = %71, %71
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @transform_todo_file(i32 %113)
  store i32 %114, i32* %7, align 4
  br label %131

115:                                              ; preds = %71
  %116 = load i32, i32* @the_repository, align 4
  %117 = call i32 @check_todo_list_from_file(i32 %116)
  store i32 %117, i32* %7, align 4
  br label %131

118:                                              ; preds = %71
  %119 = call i32 (...) @rearrange_squash_in_todo_file()
  store i32 %119, i32* %7, align 4
  br label %131

120:                                              ; preds = %71
  %121 = bitcast %struct.string_list* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %122 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %123 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @split_exec_commands(i32 %124, %struct.string_list* %11)
  %126 = call i32 @add_exec_commands(%struct.string_list* %11)
  store i32 %126, i32* %7, align 4
  %127 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  br label %131

128:                                              ; preds = %71
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %128, %120, %118, %115, %112, %106, %103, %97, %89
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @do_interactive_rebase(%struct.rebase_options*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rerere_clear(i32, %struct.string_list*) #1

declare dso_local i32 @get_replay_opts(%struct.rebase_options*) #1

declare dso_local i32 @sequencer_continue(i32, %struct.replay_opts*) #1

declare dso_local i32 @edit_todo_file(i32) #1

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @run_command(%struct.child_process*) #1

declare dso_local i32 @transform_todo_file(i32) #1

declare dso_local i32 @check_todo_list_from_file(i32) #1

declare dso_local i32 @rearrange_squash_in_todo_file(...) #1

declare dso_local i32 @split_exec_commands(i32, %struct.string_list*) #1

declare dso_local i32 @add_exec_commands(%struct.string_list*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
