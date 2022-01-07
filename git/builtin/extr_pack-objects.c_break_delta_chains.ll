; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_break_delta_chains.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_break_delta_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64, i32 }

@DFS_DONE = common dso_local global i64 0, align 8
@DFS_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"confusing delta dfs state in first pass: %d\00", align 1
@DFS_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"confusing delta dfs state in second pass: %d\00", align 1
@depth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry*)* @break_delta_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_delta_chains(%struct.object_entry* %0) #0 {
  %2 = alloca %struct.object_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.object_entry*, align 8
  %5 = alloca %struct.object_entry*, align 8
  store %struct.object_entry* %0, %struct.object_entry** %2, align 8
  %6 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  store %struct.object_entry* %6, %struct.object_entry** %4, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %59, %1
  %8 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %9 = icmp ne %struct.object_entry* %8, null
  br i1 %9, label %10, label %64

10:                                               ; preds = %7
  %11 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %12 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DFS_DONE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %18 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %3, align 8
  br label %64

23:                                               ; preds = %10
  %24 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %25 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DFS_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %31 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @BUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %36 = call %struct.object_entry* @DELTA(%struct.object_entry* %35)
  %37 = icmp ne %struct.object_entry* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @DFS_DONE, align 8
  %40 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %41 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %64

42:                                               ; preds = %34
  %43 = load i64, i64* @DFS_ACTIVE, align 8
  %44 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %45 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %47 = call %struct.object_entry* @DELTA(%struct.object_entry* %46)
  %48 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DFS_ACTIVE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %54 = call i32 @drop_reused_delta(%struct.object_entry* %53)
  %55 = load i64, i64* @DFS_DONE, align 8
  %56 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %57 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %64

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %61 = call %struct.object_entry* @DELTA(%struct.object_entry* %60)
  store %struct.object_entry* %61, %struct.object_entry** %4, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %7

64:                                               ; preds = %52, %38, %16, %7
  %65 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  store %struct.object_entry* %65, %struct.object_entry** %4, align 8
  br label %66

66:                                               ; preds = %111, %64
  %67 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %68 = icmp ne %struct.object_entry* %67, null
  br i1 %68, label %69, label %113

69:                                               ; preds = %66
  %70 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %71 = call %struct.object_entry* @DELTA(%struct.object_entry* %70)
  store %struct.object_entry* %71, %struct.object_entry** %5, align 8
  %72 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %73 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DFS_DONE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %113

78:                                               ; preds = %69
  %79 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %80 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DFS_ACTIVE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %86 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %3, align 8
  %93 = load i32, i32* @depth, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = srem i64 %91, %95
  %97 = trunc i64 %96 to i32
  %98 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %99 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %101 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %90
  %105 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %106 = call i32 @drop_reused_delta(%struct.object_entry* %105)
  br label %107

107:                                              ; preds = %104, %90
  %108 = load i64, i64* @DFS_DONE, align 8
  %109 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %110 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %107
  %112 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  store %struct.object_entry* %112, %struct.object_entry** %4, align 8
  br label %66

113:                                              ; preds = %77, %66
  ret void
}

declare dso_local i32 @BUG(i8*, i64) #1

declare dso_local %struct.object_entry* @DELTA(%struct.object_entry*) #1

declare dso_local i32 @drop_reused_delta(%struct.object_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
