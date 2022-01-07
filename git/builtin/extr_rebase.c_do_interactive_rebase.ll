; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_do_interactive_rebase.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_do_interactive_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }
%struct.todo_list = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.string_list = type { i32 }
%struct.rebase_options = type { i8*, i32, i32, i32, i32, %struct.TYPE_5__*, i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.replay_opts = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"detached HEAD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not generate todo list\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unusable todo list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*, i32)* @do_interactive_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_interactive_rebase(%struct.rebase_options* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rebase_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.argv_array, align 4
  %11 = alloca %struct.todo_list, align 4
  %12 = alloca %struct.replay_opts, align 4
  %13 = alloca %struct.string_list, align 4
  store %struct.rebase_options* %0, %struct.rebase_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = bitcast %struct.argv_array* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %15 = bitcast %struct.todo_list* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %17 = call i32 @get_replay_opts(%struct.rebase_options* %16)
  %18 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %12, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.string_list* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %20 = load i32, i32* @the_repository, align 4
  %21 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %22 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @prepare_branch_to_be_rebased(i32 %20, %struct.replay_opts* %12, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %144

27:                                               ; preds = %2
  %28 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %29 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %32 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @get_revision_ranges(i32 %30, i32 %33, i8** %7, i8** %8, i8** %9)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %144

37:                                               ; preds = %27
  %38 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %39 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %44 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i8* [ %45, %42 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %46 ]
  %49 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %50 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @init_basic_state(%struct.replay_opts* %12, i8* %48, i32 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @free(i8* %58)
  store i32 -1, i32* %3, align 4
  br label %144

60:                                               ; preds = %47
  %61 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %62 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %67 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = call i32 (...) @path_squash_onto()
  %72 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %73 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @oid_to_hex(i32* %74)
  %76 = call i32 @write_file(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %65, %60
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @argv_array_pushl(%struct.argv_array* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %78, i32* null)
  %80 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %81 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %80, i32 0, i32 5
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = icmp ne %struct.TYPE_5__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %86 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %85, i32 0, i32 5
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @oid_to_hex(i32* %89)
  %91 = call i32 @argv_array_push(%struct.argv_array* %10, i32 %90)
  br label %92

92:                                               ; preds = %84, %77
  %93 = load i32, i32* @the_repository, align 4
  %94 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %11, i32 0, i32 0
  %95 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %10, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @sequencer_make_script(i32 %93, %struct.TYPE_6__* %94, i32 %96, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %105 = call i32 @error(i32 %104)
  br label %135

106:                                              ; preds = %92
  %107 = call i32 (...) @discard_cache()
  %108 = load i32, i32* @the_repository, align 4
  %109 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %11, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @todo_list_parse_insn_buffer(i32 %108, i32 %111, %struct.todo_list* %11)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = call i32 @BUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %106
  %117 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %118 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @split_exec_commands(i32 %119, %struct.string_list* %13)
  %121 = load i32, i32* @the_repository, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %125 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %128 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.rebase_options*, %struct.rebase_options** %4, align 8
  %132 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @complete_action(i32 %121, %struct.replay_opts* %12, i32 %122, i8* %123, i32 %126, i32 %129, i8* %130, %struct.string_list* %13, i32 %133, %struct.todo_list* %11)
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %116, %103
  %136 = call i32 @string_list_clear(%struct.string_list* %13, i32 0)
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @free(i8* %139)
  %141 = call i32 @todo_list_release(%struct.todo_list* %11)
  %142 = call i32 @argv_array_clear(%struct.argv_array* %10)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %135, %55, %36, %26
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_replay_opts(%struct.rebase_options*) #2

declare dso_local i64 @prepare_branch_to_be_rebased(i32, %struct.replay_opts*, i32) #2

declare dso_local i64 @get_revision_ranges(i32, i32, i8**, i8**, i8**) #2

declare dso_local i64 @init_basic_state(%struct.replay_opts*, i8*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @write_file(i32, i8*, i32) #2

declare dso_local i32 @path_squash_onto(...) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i32) #2

declare dso_local i32 @sequencer_make_script(i32, %struct.TYPE_6__*, i32, i32, i32) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @discard_cache(...) #2

declare dso_local i64 @todo_list_parse_insn_buffer(i32, i32, %struct.todo_list*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @split_exec_commands(i32, %struct.string_list*) #2

declare dso_local i32 @complete_action(i32, %struct.replay_opts*, i32, i8*, i32, i32, i8*, %struct.string_list*, i32, %struct.todo_list*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @todo_list_release(%struct.todo_list*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
