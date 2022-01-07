; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_move_in_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_move_in_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.blame_entry = type { %struct.blame_entry*, i64 }
%struct.blame_origin = type { %struct.blame_entry* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_entry***, %struct.blame_entry**, %struct.blame_origin*, %struct.blame_origin*)* @find_move_in_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_move_in_parent(%struct.blame_scoreboard* %0, %struct.blame_entry*** %1, %struct.blame_entry** %2, %struct.blame_origin* %3, %struct.blame_origin* %4) #0 {
  %6 = alloca %struct.blame_scoreboard*, align 8
  %7 = alloca %struct.blame_entry***, align 8
  %8 = alloca %struct.blame_entry**, align 8
  %9 = alloca %struct.blame_origin*, align 8
  %10 = alloca %struct.blame_origin*, align 8
  %11 = alloca %struct.blame_entry*, align 8
  %12 = alloca [3 x %struct.blame_entry], align 16
  %13 = alloca %struct.blame_entry*, align 8
  %14 = alloca %struct.blame_entry*, align 8
  %15 = alloca %struct.TYPE_6__, align 4
  %16 = alloca %struct.blame_entry**, align 8
  %17 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %6, align 8
  store %struct.blame_entry*** %1, %struct.blame_entry**** %7, align 8
  store %struct.blame_entry** %2, %struct.blame_entry*** %8, align 8
  store %struct.blame_origin* %3, %struct.blame_origin** %9, align 8
  store %struct.blame_origin* %4, %struct.blame_origin** %10, align 8
  %18 = load %struct.blame_origin*, %struct.blame_origin** %9, align 8
  %19 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %18, i32 0, i32 0
  %20 = load %struct.blame_entry*, %struct.blame_entry** %19, align 8
  store %struct.blame_entry* %20, %struct.blame_entry** %13, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %14, align 8
  %21 = load %struct.blame_entry*, %struct.blame_entry** %13, align 8
  %22 = icmp ne %struct.blame_entry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %95

24:                                               ; preds = %5
  %25 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %26 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %30 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %31 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %30, i32 0, i32 1
  %32 = call i32 @fill_origin_blob(i32* %28, %struct.blame_origin* %29, %struct.TYPE_6__* %15, i32* %31, i32 0)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %95

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %87, %37
  store %struct.blame_entry** %13, %struct.blame_entry*** %16, align 8
  %39 = load %struct.blame_entry*, %struct.blame_entry** %13, align 8
  store %struct.blame_entry* %39, %struct.blame_entry** %11, align 8
  br label %40

40:                                               ; preds = %77, %38
  %41 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  %42 = icmp ne %struct.blame_entry* %41, null
  br i1 %42, label %43, label %79

43:                                               ; preds = %40
  %44 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  %45 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %44, i32 0, i32 0
  %46 = load %struct.blame_entry*, %struct.blame_entry** %45, align 8
  store %struct.blame_entry* %46, %struct.blame_entry** %17, align 8
  %47 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %48 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  %49 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %50 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %12, i64 0, i64 0
  %51 = call i32 @find_copy_in_blob(%struct.blame_scoreboard* %47, %struct.blame_entry* %48, %struct.blame_origin* %49, %struct.blame_entry* %50, %struct.TYPE_6__* %15)
  %52 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %12, i64 0, i64 1
  %53 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %43
  %57 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %58 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %61 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %12, i64 0, i64 1
  %62 = call i64 @blame_entry_score(%struct.blame_scoreboard* %60, %struct.blame_entry* %61)
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.blame_entry***, %struct.blame_entry**** %7, align 8
  %66 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %12, i64 0, i64 0
  %67 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  %68 = call i32 @split_blame(%struct.blame_entry*** %65, %struct.blame_entry*** %16, %struct.blame_entry* %66, %struct.blame_entry* %67)
  br label %74

69:                                               ; preds = %56, %43
  %70 = load %struct.blame_entry*, %struct.blame_entry** %14, align 8
  %71 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  %72 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %71, i32 0, i32 0
  store %struct.blame_entry* %70, %struct.blame_entry** %72, align 8
  %73 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  store %struct.blame_entry* %73, %struct.blame_entry** %14, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %12, i64 0, i64 0
  %76 = call i32 @decref_split(%struct.blame_entry* %75)
  br label %77

77:                                               ; preds = %74
  %78 = load %struct.blame_entry*, %struct.blame_entry** %17, align 8
  store %struct.blame_entry* %78, %struct.blame_entry** %11, align 8
  br label %40

79:                                               ; preds = %40
  %80 = load %struct.blame_entry**, %struct.blame_entry*** %16, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %80, align 8
  %81 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %82 = load %struct.blame_entry**, %struct.blame_entry*** %8, align 8
  %83 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %84 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call %struct.blame_entry** @filter_small(%struct.blame_scoreboard* %81, %struct.blame_entry** %82, %struct.blame_entry** %13, i64 %85)
  store %struct.blame_entry** %86, %struct.blame_entry*** %8, align 8
  br label %87

87:                                               ; preds = %79
  %88 = load %struct.blame_entry*, %struct.blame_entry** %13, align 8
  %89 = icmp ne %struct.blame_entry* %88, null
  br i1 %89, label %38, label %90

90:                                               ; preds = %87
  %91 = load %struct.blame_entry*, %struct.blame_entry** %14, align 8
  %92 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %91, i32* null)
  %93 = load %struct.blame_origin*, %struct.blame_origin** %9, align 8
  %94 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %93, i32 0, i32 0
  store %struct.blame_entry* %92, %struct.blame_entry** %94, align 8
  br label %95

95:                                               ; preds = %90, %36, %23
  ret void
}

declare dso_local i32 @fill_origin_blob(i32*, %struct.blame_origin*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @find_copy_in_blob(%struct.blame_scoreboard*, %struct.blame_entry*, %struct.blame_origin*, %struct.blame_entry*, %struct.TYPE_6__*) #1

declare dso_local i64 @blame_entry_score(%struct.blame_scoreboard*, %struct.blame_entry*) #1

declare dso_local i32 @split_blame(%struct.blame_entry***, %struct.blame_entry***, %struct.blame_entry*, %struct.blame_entry*) #1

declare dso_local i32 @decref_split(%struct.blame_entry*) #1

declare dso_local %struct.blame_entry** @filter_small(%struct.blame_scoreboard*, %struct.blame_entry**, %struct.blame_entry**, i64) #1

declare dso_local %struct.blame_entry* @reverse_blame(%struct.blame_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
