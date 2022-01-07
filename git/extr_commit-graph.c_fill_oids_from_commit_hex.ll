; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_fill_oids_from_commit_hex.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_fill_oids_from_commit_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.write_commit_graph_context = type { i32, i64, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.string_list = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"Finding commits for commit graph from %d ref\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Finding commits for commit graph from %d refs\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid commit object id: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.write_commit_graph_context*, %struct.string_list*)* @fill_oids_from_commit_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_oids_from_commit_hex(%struct.write_commit_graph_context* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.write_commit_graph_context*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca %struct.commit*, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %13 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.string_list*, %struct.string_list** %5, align 8
  %18 = getelementptr inbounds %struct.string_list, %struct.string_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @Q_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.string_list*, %struct.string_list** %5, align 8
  %22 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strbuf_addf(%struct.strbuf* %7, i32 %20, i32 %23)
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.string_list*, %struct.string_list** %5, align 8
  %28 = getelementptr inbounds %struct.string_list, %struct.string_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @start_delayed_progress(i32 %26, i32 %29)
  %31 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %32 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %16, %2
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %115, %33
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.string_list*, %struct.string_list** %5, align 8
  %37 = getelementptr inbounds %struct.string_list, %struct.string_list* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %118

40:                                               ; preds = %34
  %41 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %42 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @display_progress(i32 %43, i32 %45)
  %47 = load %struct.string_list*, %struct.string_list** %5, align 8
  %48 = getelementptr inbounds %struct.string_list, %struct.string_list* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @parse_oid_hex(i32 %54, %struct.object_id* %9, i8** %8)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %97, label %57

57:                                               ; preds = %40
  %58 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %59 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.commit* @lookup_commit_reference_gently(i32 %60, %struct.object_id* %9, i32 1)
  store %struct.commit* %61, %struct.commit** %10, align 8
  %62 = icmp ne %struct.commit* %61, null
  br i1 %62, label %63, label %97

63:                                               ; preds = %57
  %64 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %65 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %69 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %74 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ALLOC_GROW(i32* %67, i32 %72, i32 %76)
  %78 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %79 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %83 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load %struct.commit*, %struct.commit** %10, align 8
  %89 = getelementptr inbounds %struct.commit, %struct.commit* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @oidcpy(i32* %87, i32* %90)
  %92 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %93 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %114

97:                                               ; preds = %57, %40
  %98 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %99 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.string_list*, %struct.string_list** %5, align 8
  %105 = getelementptr inbounds %struct.string_list, %struct.string_list* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @error(i32 %103, i32 %111)
  store i32 -1, i32* %3, align 4
  br label %123

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %63
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %34

118:                                              ; preds = %34
  %119 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %120 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %119, i32 0, i32 0
  %121 = call i32 @stop_progress(i32* %120)
  %122 = call i32 @strbuf_release(%struct.strbuf* %7)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %102
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @Q_(i8*, i8*, i32) #2

declare dso_local i32 @start_delayed_progress(i32, i32) #2

declare dso_local i32 @display_progress(i32, i32) #2

declare dso_local i32 @parse_oid_hex(i32, %struct.object_id*, i8**) #2

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #2

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #2

declare dso_local i32 @oidcpy(i32*, i32*) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @stop_progress(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
