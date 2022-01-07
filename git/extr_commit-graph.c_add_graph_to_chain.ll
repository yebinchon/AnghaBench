; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_add_graph_to_chain.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_add_graph_to_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graph = type { i32, i64, i64, %struct.commit_graph*, i64, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"commit-graph has no base graphs chunk\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"commit-graph chain does not match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_graph*, %struct.commit_graph*, %struct.object_id*, i32)* @add_graph_to_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_graph_to_chain(%struct.commit_graph* %0, %struct.commit_graph* %1, %struct.object_id* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit_graph*, align 8
  %7 = alloca %struct.commit_graph*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit_graph*, align 8
  store %struct.commit_graph* %0, %struct.commit_graph** %6, align 8
  store %struct.commit_graph* %1, %struct.commit_graph** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.commit_graph*, %struct.commit_graph** %7, align 8
  store %struct.commit_graph* %11, %struct.commit_graph** %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.commit_graph*, %struct.commit_graph** %6, align 8
  %16 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @warning(i32 %20)
  store i32 0, i32* %5, align 4
  br label %83

22:                                               ; preds = %14, %4
  br label %23

23:                                               ; preds = %62, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  %29 = load %struct.commit_graph*, %struct.commit_graph** %10, align 8
  %30 = icmp ne %struct.commit_graph* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load %struct.object_id*, %struct.object_id** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.object_id, %struct.object_id* %32, i64 %34
  %36 = load %struct.commit_graph*, %struct.commit_graph** %10, align 8
  %37 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %36, i32 0, i32 5
  %38 = call i32 @oideq(%struct.object_id* %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %31
  %41 = load %struct.object_id*, %struct.object_id** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.object_id, %struct.object_id* %41, i64 %43
  %45 = getelementptr inbounds %struct.object_id, %struct.object_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.commit_graph*, %struct.commit_graph** %6, align 8
  %48 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.commit_graph*, %struct.commit_graph** %6, align 8
  %51 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %49, %55
  %57 = call i32 @hasheq(i32 %46, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %40, %31, %26
  %60 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @warning(i32 %60)
  store i32 0, i32* %5, align 4
  br label %83

62:                                               ; preds = %40
  %63 = load %struct.commit_graph*, %struct.commit_graph** %10, align 8
  %64 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %63, i32 0, i32 3
  %65 = load %struct.commit_graph*, %struct.commit_graph** %64, align 8
  store %struct.commit_graph* %65, %struct.commit_graph** %10, align 8
  br label %23

66:                                               ; preds = %23
  %67 = load %struct.commit_graph*, %struct.commit_graph** %7, align 8
  %68 = load %struct.commit_graph*, %struct.commit_graph** %6, align 8
  %69 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %68, i32 0, i32 3
  store %struct.commit_graph* %67, %struct.commit_graph** %69, align 8
  %70 = load %struct.commit_graph*, %struct.commit_graph** %7, align 8
  %71 = icmp ne %struct.commit_graph* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.commit_graph*, %struct.commit_graph** %7, align 8
  %74 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.commit_graph*, %struct.commit_graph** %7, align 8
  %77 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.commit_graph*, %struct.commit_graph** %6, align 8
  %81 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %72, %66
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %59, %19
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oideq(%struct.object_id*, i32*) #1

declare dso_local i32 @hasheq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
