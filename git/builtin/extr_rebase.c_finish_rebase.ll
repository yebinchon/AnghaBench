; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_finish_rebase.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_finish_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.replay_opts = type { i32 }
%struct.rebase_options = type { i64, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--auto\00", align 1
@__const.finish_rebase.argv_gc_auto = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"REBASE_HEAD\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@the_repository = common dso_local global %struct.TYPE_2__* null, align 8
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@REBASE_INTERACTIVE = common dso_local global i64 0, align 8
@REPLAY_OPTS_INIT = common dso_local global %struct.replay_opts zeroinitializer, align 4
@REPLAY_INTERACTIVE_REBASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"could not remove '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*)* @finish_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_rebase(%struct.rebase_options* %0) #0 {
  %2 = alloca %struct.rebase_options*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca [3 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.replay_opts, align 4
  store %struct.rebase_options* %0, %struct.rebase_options** %2, align 8
  %7 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x i8*]* @__const.finish_rebase.argv_gc_auto to i8*), i64 24, i1 false)
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @REF_NO_DEREF, align 4
  %10 = call i32 @delete_ref(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %9)
  %11 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %12 = call i32 @apply_autostash(%struct.rebase_options* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_repository, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @close_object_store(i32 %15)
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %18 = load i32, i32* @RUN_GIT_CMD, align 4
  %19 = call i32 @run_command_v_opt(i8** %17, i32 %18)
  %20 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %21 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REBASE_INTERACTIVE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = bitcast %struct.replay_opts* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.replay_opts* @REPLAY_OPTS_INIT to i8*), i64 4, i1 false)
  %27 = load i32, i32* @REPLAY_INTERACTIVE_REBASE, align 4
  %28 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i32 @sequencer_remove_state(%struct.replay_opts* %6)
  store i32 %29, i32* %5, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %32 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %3, i32 %33)
  %35 = call i64 @remove_dir_recursively(%struct.strbuf* %3, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.rebase_options*, %struct.rebase_options** %2, align 8
  %40 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @error(i32 %38, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %30
  %44 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @delete_ref(i32*, i8*, i32*, i32) #2

declare dso_local i32 @apply_autostash(%struct.rebase_options*) #2

declare dso_local i32 @close_object_store(i32) #2

declare dso_local i32 @run_command_v_opt(i8**, i32) #2

declare dso_local i32 @sequencer_remove_state(%struct.replay_opts*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i64 @remove_dir_recursively(%struct.strbuf*, i32) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
