; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_finish_automerge.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_finish_automerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@fast_forward = common dso_local global i64 0, align 8
@FF_NO = common dso_local global i64 0, align 8
@merge_msg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sign_commit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to write commit object\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Merge made by the '%s' strategy.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, i32, %struct.commit_list*, %struct.commit_list*, %struct.object_id*, i8*)* @finish_automerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_automerge(%struct.commit* %0, i32 %1, %struct.commit_list* %2, %struct.commit_list* %3, %struct.object_id* %4, i8* %5) #0 {
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.commit_list*, align 8
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca %struct.object_id, align 4
  store %struct.commit* %0, %struct.commit** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.commit_list* %2, %struct.commit_list** %9, align 8
  store %struct.commit_list* %3, %struct.commit_list** %10, align 8
  store %struct.object_id* %4, %struct.object_id** %11, align 8
  store i8* %5, i8** %12, align 8
  store %struct.commit_list* null, %struct.commit_list** %13, align 8
  %16 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.object_id*, %struct.object_id** %11, align 8
  %18 = call i32 @write_tree_trivial(%struct.object_id* %17)
  %19 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %20 = call i32 @free_commit_list(%struct.commit_list* %19)
  %21 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %21, %struct.commit_list** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i64, i64* @fast_forward, align 8
  %26 = load i64, i64* @FF_NO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %6
  %29 = load %struct.commit*, %struct.commit** %7, align 8
  %30 = call i32 @commit_list_insert(%struct.commit* %29, %struct.commit_list** %13)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %33 = call i32 @prepare_to_commit(%struct.commit_list* %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @merge_msg, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @merge_msg, i32 0, i32 0), align 4
  %36 = load %struct.object_id*, %struct.object_id** %11, align 8
  %37 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %38 = load i32, i32* @sign_commit, align 4
  %39 = call i64 @commit_tree(i32 %34, i32 %35, %struct.object_id* %36, %struct.commit_list* %37, %struct.object_id* %15, i32* null, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @die(i32 %42)
  br label %44

44:                                               ; preds = %41, %31
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load %struct.commit*, %struct.commit** %7, align 8
  %48 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @finish(%struct.commit* %47, %struct.commit_list* %48, %struct.object_id* %15, i32 %50)
  %52 = call i32 @strbuf_release(%struct.strbuf* %14)
  %53 = load i32, i32* @the_repository, align 4
  %54 = call i32 @remove_merge_branch_state(i32 %53)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @write_tree_trivial(%struct.object_id*) #2

declare dso_local i32 @free_commit_list(%struct.commit_list*) #2

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i32 @prepare_to_commit(%struct.commit_list*) #2

declare dso_local i64 @commit_tree(i32, i32, %struct.object_id*, %struct.commit_list*, %struct.object_id*, i32*, i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @finish(%struct.commit*, %struct.commit_list*, %struct.object_id*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @remove_merge_branch_state(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
