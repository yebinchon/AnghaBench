; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_get_default_heads.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_get_default_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.worktree = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@include_reflogs = common dso_local global i64 0, align 8
@fsck_handle_reflog = common dso_local global i32 0, align 4
@default_refs = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"notice: No default references\00", align 1
@show_unreachable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_default_heads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_default_heads() #0 {
  %1 = alloca %struct.worktree**, align 8
  %2 = alloca %struct.worktree**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.object_id, align 4
  %5 = alloca %struct.worktree*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = call i32 @for_each_rawref(i32 (i32, %struct.object_id*, i32, i32*)* @fsck_handle_ref, i32* null)
  %8 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %8, %struct.worktree*** %1, align 8
  %9 = load %struct.worktree**, %struct.worktree*** %1, align 8
  store %struct.worktree** %9, %struct.worktree*** %2, align 8
  br label %10

10:                                               ; preds = %43, %0
  %11 = load %struct.worktree**, %struct.worktree*** %2, align 8
  %12 = load %struct.worktree*, %struct.worktree** %11, align 8
  %13 = icmp ne %struct.worktree* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.worktree**, %struct.worktree*** %2, align 8
  %16 = load %struct.worktree*, %struct.worktree** %15, align 8
  store %struct.worktree* %16, %struct.worktree** %5, align 8
  %17 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.worktree*, %struct.worktree** %5, align 8
  %19 = call i32 @strbuf_worktree_ref(%struct.worktree* %18, %struct.strbuf* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fsck_head_link(i32 %21, i8** %3, %struct.object_id* %4)
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = call i32 @is_null_oid(%struct.object_id* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fsck_handle_ref(i32 %30, %struct.object_id* %4, i32 0, i32* null)
  br label %32

32:                                               ; preds = %28, %25, %14
  %33 = call i32 @strbuf_release(%struct.strbuf* %6)
  %34 = load i64, i64* @include_reflogs, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.worktree*, %struct.worktree** %5, align 8
  %38 = call i32 @get_worktree_ref_store(%struct.worktree* %37)
  %39 = load i32, i32* @fsck_handle_reflog, align 4
  %40 = load %struct.worktree*, %struct.worktree** %5, align 8
  %41 = call i32 @refs_for_each_reflog(i32 %38, i32 %39, %struct.worktree* %40)
  br label %42

42:                                               ; preds = %36, %32
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.worktree**, %struct.worktree*** %2, align 8
  %45 = getelementptr inbounds %struct.worktree*, %struct.worktree** %44, i32 1
  store %struct.worktree** %45, %struct.worktree*** %2, align 8
  br label %10

46:                                               ; preds = %10
  %47 = load %struct.worktree**, %struct.worktree*** %1, align 8
  %48 = call i32 @free_worktrees(%struct.worktree** %47)
  %49 = load i32, i32* @default_refs, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @fprintf_ln(i32 %52, i32 %53)
  store i64 0, i64* @show_unreachable, align 8
  br label %55

55:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @for_each_rawref(i32 (i32, %struct.object_id*, i32, i32*)*, i32*) #1

declare dso_local i32 @fsck_handle_ref(i32, %struct.object_id*, i32, i32*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_worktree_ref(%struct.worktree*, %struct.strbuf*, i8*) #1

declare dso_local i32 @fsck_head_link(i32, i8**, %struct.object_id*) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @refs_for_each_reflog(i32, i32, %struct.worktree*) #1

declare dso_local i32 @get_worktree_ref_store(%struct.worktree*) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

declare dso_local i32 @fprintf_ln(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
