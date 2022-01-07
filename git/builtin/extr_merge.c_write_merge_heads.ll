; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_write_merge_heads.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_write_merge_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.merge_remote_desc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object_id }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@the_repository = common dso_local global i32 0, align 4
@fast_forward = common dso_local global i64 0, align 8
@FF_NO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"no-ff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*)* @write_merge_heads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_merge_heads(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.merge_remote_desc*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  %8 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %9 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  store %struct.commit_list* %9, %struct.commit_list** %3, align 8
  br label %10

10:                                               ; preds = %39, %1
  %11 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %12 = icmp ne %struct.commit_list* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %15 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %14, i32 0, i32 0
  %16 = load %struct.commit*, %struct.commit** %15, align 8
  store %struct.commit* %16, %struct.commit** %6, align 8
  %17 = load %struct.commit*, %struct.commit** %6, align 8
  %18 = call %struct.merge_remote_desc* @merge_remote_util(%struct.commit* %17)
  store %struct.merge_remote_desc* %18, %struct.merge_remote_desc** %7, align 8
  %19 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %7, align 8
  %20 = icmp ne %struct.merge_remote_desc* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %7, align 8
  %23 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %7, align 8
  %28 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.object_id* %30, %struct.object_id** %5, align 8
  br label %35

31:                                               ; preds = %21, %13
  %32 = load %struct.commit*, %struct.commit** %6, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.object_id* %34, %struct.object_id** %5, align 8
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.object_id*, %struct.object_id** %5, align 8
  %37 = call i32 @oid_to_hex(%struct.object_id* %36)
  %38 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35
  %40 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %41 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %40, i32 0, i32 1
  %42 = load %struct.commit_list*, %struct.commit_list** %41, align 8
  store %struct.commit_list* %42, %struct.commit_list** %3, align 8
  br label %10

43:                                               ; preds = %10
  %44 = load i32, i32* @the_repository, align 4
  %45 = call i32 @git_path_merge_head(i32 %44)
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @write_file_buf(i32 %45, i32 %47, i32 %49)
  %51 = call i32 @strbuf_reset(%struct.strbuf* %4)
  %52 = load i64, i64* @fast_forward, align 8
  %53 = load i64, i64* @FF_NO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %43
  %58 = load i32, i32* @the_repository, align 4
  %59 = call i32 @git_path_merge_mode(i32 %58)
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @write_file_buf(i32 %59, i32 %61, i32 %63)
  %65 = call i32 @strbuf_release(%struct.strbuf* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.merge_remote_desc* @merge_remote_util(%struct.commit*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @write_file_buf(i32, i32, i32) #2

declare dso_local i32 @git_path_merge_head(i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @git_path_merge_mode(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
