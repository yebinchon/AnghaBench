; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_add_missing_parents.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_add_missing_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.TYPE_6__*, %struct.commit_list* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*, %struct.commit*)* @add_missing_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_missing_parents(%struct.write_commit_graph_context* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.write_commit_graph_context*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.commit*, %struct.commit** %4, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 0
  %8 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  store %struct.commit_list* %8, %struct.commit_list** %5, align 8
  br label %9

9:                                                ; preds = %67, %2
  %10 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  %13 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %14 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @REACHABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %12
  %23 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %24 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %28 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %33 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ALLOC_GROW(i32* %26, i32 %31, i32 %35)
  %37 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %38 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %42 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %48 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = call i32 @oidcpy(i32* %46, i32* %51)
  %53 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %54 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @REACHABLE, align 4
  %59 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %60 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %58
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %22, %12
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %69 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %68, i32 0, i32 1
  %70 = load %struct.commit_list*, %struct.commit_list** %69, align 8
  store %struct.commit_list* %70, %struct.commit_list** %5, align 8
  br label %9

71:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
