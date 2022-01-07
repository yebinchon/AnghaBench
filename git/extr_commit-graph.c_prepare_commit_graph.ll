; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_prepare_commit_graph.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_prepare_commit_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.object_directory* }
%struct.object_directory = type { i32, %struct.object_directory* }
%struct.TYPE_3__ = type { i32 }

@GIT_TEST_COMMIT_GRAPH_DIE_ON_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"dying as requested by the '%s' variable on commit-graph load!\00", align 1
@GIT_TEST_COMMIT_GRAPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*)* @prepare_commit_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_commit_graph(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.object_directory*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  %5 = load %struct.repository*, %struct.repository** %3, align 8
  %6 = getelementptr inbounds %struct.repository, %struct.repository* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

10:                                               ; preds = %1
  %11 = load %struct.repository*, %struct.repository** %3, align 8
  %12 = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.repository*, %struct.repository** %3, align 8
  %19 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %96

27:                                               ; preds = %10
  %28 = load %struct.repository*, %struct.repository** %3, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @GIT_TEST_COMMIT_GRAPH_DIE_ON_LOAD, align 4
  %33 = call i64 @git_env_bool(i32 %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @GIT_TEST_COMMIT_GRAPH_DIE_ON_LOAD, align 4
  %37 = call i32 @die(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.repository*, %struct.repository** %3, align 8
  %40 = call i32 @prepare_repo_settings(%struct.repository* %39)
  %41 = load i32, i32* @GIT_TEST_COMMIT_GRAPH, align 4
  %42 = call i64 @git_env_bool(i32 %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load %struct.repository*, %struct.repository** %3, align 8
  %46 = getelementptr inbounds %struct.repository, %struct.repository* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %96

51:                                               ; preds = %44, %38
  %52 = load %struct.repository*, %struct.repository** %3, align 8
  %53 = call i32 @commit_graph_compatible(%struct.repository* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %96

56:                                               ; preds = %51
  %57 = load %struct.repository*, %struct.repository** %3, align 8
  %58 = call i32 @prepare_alt_odb(%struct.repository* %57)
  %59 = load %struct.repository*, %struct.repository** %3, align 8
  %60 = getelementptr inbounds %struct.repository, %struct.repository* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.object_directory*, %struct.object_directory** %62, align 8
  store %struct.object_directory* %63, %struct.object_directory** %4, align 8
  br label %64

64:                                               ; preds = %82, %56
  %65 = load %struct.repository*, %struct.repository** %3, align 8
  %66 = getelementptr inbounds %struct.repository, %struct.repository* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %73 = icmp ne %struct.object_directory* %72, null
  br label %74

74:                                               ; preds = %71, %64
  %75 = phi i1 [ false, %64 ], [ %73, %71 ]
  br i1 %75, label %76, label %86

76:                                               ; preds = %74
  %77 = load %struct.repository*, %struct.repository** %3, align 8
  %78 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %79 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @prepare_commit_graph_one(%struct.repository* %77, i32 %80)
  br label %82

82:                                               ; preds = %76
  %83 = load %struct.object_directory*, %struct.object_directory** %4, align 8
  %84 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %83, i32 0, i32 1
  %85 = load %struct.object_directory*, %struct.object_directory** %84, align 8
  store %struct.object_directory* %85, %struct.object_directory** %4, align 8
  br label %64

86:                                               ; preds = %74
  %87 = load %struct.repository*, %struct.repository** %3, align 8
  %88 = getelementptr inbounds %struct.repository, %struct.repository* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %86, %55, %50, %17, %9
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @git_env_bool(i32, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @prepare_repo_settings(%struct.repository*) #1

declare dso_local i32 @commit_graph_compatible(%struct.repository*) #1

declare dso_local i32 @prepare_alt_odb(%struct.repository*) #1

declare dso_local i32 @prepare_commit_graph_one(%struct.repository*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
