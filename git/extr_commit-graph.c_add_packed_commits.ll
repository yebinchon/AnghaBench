; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_add_packed_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_add_packed_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_info = type { i32* }
%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }
%struct.write_commit_graph_context = type { %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@OBJECT_INFO_INIT = common dso_local global %struct.object_info zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"unable to get type of object %s\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.packed_git*, i32, i8*)* @add_packed_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_packed_commits(%struct.object_id* %0, %struct.packed_git* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.write_commit_graph_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_info, align 8
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store %struct.packed_git* %1, %struct.packed_git** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.write_commit_graph_context*
  store %struct.write_commit_graph_context* %15, %struct.write_commit_graph_context** %10, align 8
  %16 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @nth_packed_object_offset(%struct.packed_git* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = bitcast %struct.object_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.object_info* @OBJECT_INFO_INIT to i8*), i64 8, i1 false)
  %20 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %21 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %26 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %29 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = call i32 @display_progress(i64 %27, i32 %31)
  br label %33

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds %struct.object_info, %struct.object_info* %13, i32 0, i32 0
  store i32* %11, i32** %34, align 8
  %35 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %36 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @packed_object_info(i32 %37, %struct.packed_git* %38, i32 %39, %struct.object_info* %13)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.object_id*, %struct.object_id** %6, align 8
  %45 = call i32 @oid_to_hex(%struct.object_id* %44)
  %46 = call i32 @die(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @OBJ_COMMIT, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %84

52:                                               ; preds = %47
  %53 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %54 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %58 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %63 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ALLOC_GROW(i32* %56, i32 %61, i32 %65)
  %67 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %68 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %72 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load %struct.object_id*, %struct.object_id** %6, align 8
  %78 = call i32 @oidcpy(i32* %76, %struct.object_id* %77)
  %79 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %10, align 8
  %80 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %52, %51
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @nth_packed_object_offset(%struct.packed_git*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @display_progress(i64, i32) #1

declare dso_local i64 @packed_object_info(i32, %struct.packed_git*, i32, %struct.object_info*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
