; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_fill_oids_from_packs.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_fill_oids_from_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.write_commit_graph_context = type { i64, i32, i64, i64 }
%struct.string_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.packed_git = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s/pack/\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Finding commits for commit graph in %d pack\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Finding commits for commit graph in %d packs\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"error adding pack %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error opening index for %s\00", align 1
@add_packed_commits = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_PACK_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.write_commit_graph_context*, %struct.string_list*)* @fill_oids_from_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_oids_from_packs(%struct.write_commit_graph_context* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.write_commit_graph_context*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.packed_git*, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %14 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %20 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.string_list*, %struct.string_list** %5, align 8
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @Q_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load %struct.string_list*, %struct.string_list** %5, align 8
  %29 = getelementptr inbounds %struct.string_list, %struct.string_list* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* %27, i64 %30)
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @start_delayed_progress(i32 %33, i32 0)
  %35 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %36 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %38 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %23, %2
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %88, %39
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.string_list*, %struct.string_list** %5, align 8
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @strbuf_setlen(%struct.strbuf* %8, i32 %47)
  %49 = load %struct.string_list*, %struct.string_list** %5, align 8
  %50 = getelementptr inbounds %struct.string_list, %struct.string_list* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %8, i32 %55)
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.packed_git* @add_packed_git(i32 %58, i32 %60, i32 1)
  store %struct.packed_git* %61, %struct.packed_git** %10, align 8
  %62 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %63 = icmp ne %struct.packed_git* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %46
  %65 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @error(i32 %65, i32 %67)
  store i32 -1, i32* %3, align 4
  br label %97

69:                                               ; preds = %46
  %70 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %71 = call i64 @open_pack_index(%struct.packed_git* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @error(i32 %74, i32 %76)
  store i32 -1, i32* %3, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %80 = load i32, i32* @add_packed_commits, align 4
  %81 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %82 = load i32, i32* @FOR_EACH_OBJECT_PACK_ORDER, align 4
  %83 = call i32 @for_each_object_in_pack(%struct.packed_git* %79, i32 %80, %struct.write_commit_graph_context* %81, i32 %82)
  %84 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %85 = call i32 @close_pack(%struct.packed_git* %84)
  %86 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %87 = call i32 @free(%struct.packed_git* %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %6, align 8
  br label %40

91:                                               ; preds = %40
  %92 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %93 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %92, i32 0, i32 1
  %94 = call i32 @stop_progress(i32* %93)
  %95 = call i32 @strbuf_release(%struct.strbuf* %7)
  %96 = call i32 @strbuf_release(%struct.strbuf* %8)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %73, %64
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64) #2

declare dso_local i8* @Q_(i8*, i8*, i64) #2

declare dso_local i32 @start_delayed_progress(i32, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local %struct.packed_git* @add_packed_git(i32, i32, i32) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @open_pack_index(%struct.packed_git*) #2

declare dso_local i32 @for_each_object_in_pack(%struct.packed_git*, i32, %struct.write_commit_graph_context*, i32) #2

declare dso_local i32 @close_pack(%struct.packed_git*) #2

declare dso_local i32 @free(%struct.packed_git*) #2

declare dso_local i32 @stop_progress(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
