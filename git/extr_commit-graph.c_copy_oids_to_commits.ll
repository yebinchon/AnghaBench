; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_copy_oids_to_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_copy_oids_to_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { i32, %struct.TYPE_7__, i64, i64, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"Finding extra edges in commit graph\00", align 1
@COMMIT_NOT_FROM_GRAPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @copy_oids_to_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_oids_to_commits(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  %5 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %6 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %8 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %14 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @start_delayed_progress(i32 %12, i32 %16)
  %18 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %19 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %156, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %24 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %159

28:                                               ; preds = %21
  %29 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %30 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @display_progress(i32 %31, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %28
  %38 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %39 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %47 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i64 @oideq(i32* %45, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %156

56:                                               ; preds = %37, %28
  %57 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %58 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %59, align 8
  %61 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %62 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %67 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ALLOC_GROW(%struct.TYPE_8__** %60, i32 %65, i32 %69)
  %71 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %72 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %75 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call %struct.TYPE_8__* @lookup_commit(i32 %73, i32* %80)
  %82 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %83 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %84, align 8
  %86 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %87 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %85, i64 %90
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %91, align 8
  %92 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %93 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %56
  %97 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %98 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %99, align 8
  %101 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %102 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %100, i64 %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @COMMIT_NOT_FROM_GRAPH, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  br label %156

113:                                              ; preds = %96, %56
  %114 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %115 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %116, align 8
  %118 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %119 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %117, i64 %122
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = call i32 @parse_commit_no_graph(%struct.TYPE_8__* %124)
  %126 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %127 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %128, align 8
  %130 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %131 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %129, i64 %134
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @commit_list_count(i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ugt i32 %140, 2
  br i1 %141, label %142, label %150

142:                                              ; preds = %113
  %143 = load i32, i32* %4, align 4
  %144 = sub i32 %143, 1
  %145 = zext i32 %144 to i64
  %146 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %147 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, %145
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %142, %113
  %151 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %152 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %112, %55
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %21

159:                                              ; preds = %21
  %160 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %161 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %160, i32 0, i32 0
  %162 = call i32 @stop_progress(i32* %161)
  ret void
}

declare dso_local i32 @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_8__**, i32, i32) #1

declare dso_local %struct.TYPE_8__* @lookup_commit(i32, i32*) #1

declare dso_local i32 @parse_commit_no_graph(%struct.TYPE_8__*) #1

declare dso_local i32 @commit_list_count(i32) #1

declare dso_local i32 @stop_progress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
