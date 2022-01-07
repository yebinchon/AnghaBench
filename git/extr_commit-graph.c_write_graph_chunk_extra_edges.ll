; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_extra_edges.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_extra_edges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.write_commit_graph_context = type { i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.commit** }
%struct.commit = type { %struct.TYPE_8__, %struct.commit_list* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }

@commit_to_sha1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"missing parent %s for commit %s\00", align 1
@GRAPH_LAST_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, %struct.write_commit_graph_context*)* @write_graph_chunk_extra_edges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_graph_chunk_extra_edges(%struct.hashfile* %0, %struct.write_commit_graph_context* %1) #0 {
  %3 = alloca %struct.hashfile*, align 8
  %4 = alloca %struct.write_commit_graph_context*, align 8
  %5 = alloca %struct.commit**, align 8
  %6 = alloca %struct.commit**, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %3, align 8
  store %struct.write_commit_graph_context* %1, %struct.write_commit_graph_context** %4, align 8
  %11 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %12 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.commit**, %struct.commit*** %13, align 8
  store %struct.commit** %14, %struct.commit*** %5, align 8
  %15 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %16 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.commit**, %struct.commit*** %17, align 8
  %19 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %20 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.commit*, %struct.commit** %18, i64 %23
  store %struct.commit** %24, %struct.commit*** %6, align 8
  br label %25

25:                                               ; preds = %147, %60, %2
  %26 = load %struct.commit**, %struct.commit*** %5, align 8
  %27 = load %struct.commit**, %struct.commit*** %6, align 8
  %28 = icmp ult %struct.commit** %26, %27
  br i1 %28, label %29, label %150

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %30 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %31 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %34 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = call i32 @display_progress(i32 %32, i32 %36)
  %38 = load %struct.commit**, %struct.commit*** %5, align 8
  %39 = load %struct.commit*, %struct.commit** %38, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 1
  %41 = load %struct.commit_list*, %struct.commit_list** %40, align 8
  store %struct.commit_list* %41, %struct.commit_list** %7, align 8
  br label %42

42:                                               ; preds = %53, %29
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %47 = icmp ne %struct.commit_list* %46, null
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %55 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %54, i32 0, i32 0
  %56 = load %struct.commit_list*, %struct.commit_list** %55, align 8
  store %struct.commit_list* %56, %struct.commit_list** %7, align 8
  br label %42

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = icmp sle i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.commit**, %struct.commit*** %5, align 8
  %62 = getelementptr inbounds %struct.commit*, %struct.commit** %61, i32 1
  store %struct.commit** %62, %struct.commit*** %5, align 8
  br label %25

63:                                               ; preds = %57
  %64 = load %struct.commit**, %struct.commit*** %5, align 8
  %65 = load %struct.commit*, %struct.commit** %64, align 8
  %66 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 1
  %67 = load %struct.commit_list*, %struct.commit_list** %66, align 8
  %68 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %67, i32 0, i32 0
  %69 = load %struct.commit_list*, %struct.commit_list** %68, align 8
  store %struct.commit_list* %69, %struct.commit_list** %7, align 8
  br label %70

70:                                               ; preds = %143, %63
  %71 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %72 = icmp ne %struct.commit_list* %71, null
  br i1 %72, label %73, label %147

73:                                               ; preds = %70
  %74 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %75 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %82 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.commit**, %struct.commit*** %83, align 8
  %85 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %86 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @commit_to_sha1, align 4
  %90 = call i32 @sha1_pos(i32 %80, %struct.commit** %84, i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %73
  %94 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %95 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  br label %113

101:                                              ; preds = %73
  %102 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %103 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %106 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @find_commit_in_graph(%struct.TYPE_10__* %104, i32 %107, i32* %10)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %101
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %118 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = call i32 @oid_to_hex(%struct.TYPE_9__* %121)
  %123 = load %struct.commit**, %struct.commit*** %5, align 8
  %124 = load %struct.commit*, %struct.commit** %123, align 8
  %125 = getelementptr inbounds %struct.commit, %struct.commit* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = call i32 @oid_to_hex(%struct.TYPE_9__* %126)
  %128 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %127)
  br label %139

129:                                              ; preds = %113
  %130 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %131 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %130, i32 0, i32 0
  %132 = load %struct.commit_list*, %struct.commit_list** %131, align 8
  %133 = icmp ne %struct.commit_list* %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @GRAPH_LAST_EDGE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.hashfile*, %struct.hashfile** %3, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @hashwrite_be32(%struct.hashfile* %140, i32 %141)
  br label %143

143:                                              ; preds = %139
  %144 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %145 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %144, i32 0, i32 0
  %146 = load %struct.commit_list*, %struct.commit_list** %145, align 8
  store %struct.commit_list* %146, %struct.commit_list** %7, align 8
  br label %70

147:                                              ; preds = %70
  %148 = load %struct.commit**, %struct.commit*** %5, align 8
  %149 = getelementptr inbounds %struct.commit*, %struct.commit** %148, i32 1
  store %struct.commit** %149, %struct.commit*** %5, align 8
  br label %25

150:                                              ; preds = %25
  ret void
}

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @sha1_pos(i32, %struct.commit**, i32, i32) #1

declare dso_local i64 @find_commit_in_graph(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @BUG(i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.TYPE_9__*) #1

declare dso_local i32 @hashwrite_be32(%struct.hashfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
