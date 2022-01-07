; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_blame_coalesce.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_blame_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i64, %struct.blame_entry* }
%struct.blame_entry = type { i64, i64, i64, i64, i64, i64, %struct.blame_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blame_coalesce(%struct.blame_scoreboard* %0) #0 {
  %2 = alloca %struct.blame_scoreboard*, align 8
  %3 = alloca %struct.blame_entry*, align 8
  %4 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %2, align 8
  %5 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %2, align 8
  %6 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %5, i32 0, i32 1
  %7 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  store %struct.blame_entry* %7, %struct.blame_entry** %3, align 8
  br label %8

8:                                                ; preds = %77, %1
  %9 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %10 = icmp ne %struct.blame_entry* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %13 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %12, i32 0, i32 6
  %14 = load %struct.blame_entry*, %struct.blame_entry** %13, align 8
  store %struct.blame_entry* %14, %struct.blame_entry** %4, align 8
  %15 = icmp ne %struct.blame_entry* %14, null
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %79

18:                                               ; preds = %16
  %19 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %20 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %23 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %18
  %27 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %28 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %31 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %35 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %26
  %39 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %40 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %43 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %38
  %47 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %48 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %51 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %56 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %59 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %63 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %62, i32 0, i32 6
  %64 = load %struct.blame_entry*, %struct.blame_entry** %63, align 8
  %65 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %66 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %65, i32 0, i32 6
  store %struct.blame_entry* %64, %struct.blame_entry** %66, align 8
  %67 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %68 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @blame_origin_decref(i64 %69)
  %71 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %72 = call i32 @free(%struct.blame_entry* %71)
  %73 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %74 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  store %struct.blame_entry* %75, %struct.blame_entry** %4, align 8
  br label %76

76:                                               ; preds = %54, %46, %38, %26, %18
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  store %struct.blame_entry* %78, %struct.blame_entry** %3, align 8
  br label %8

79:                                               ; preds = %16
  %80 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %2, align 8
  %81 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %2, align 8
  %86 = call i32 @sanity_check_refcnt(%struct.blame_scoreboard* %85)
  br label %87

87:                                               ; preds = %84, %79
  ret void
}

declare dso_local i32 @blame_origin_decref(i64) #1

declare dso_local i32 @free(%struct.blame_entry*) #1

declare dso_local i32 @sanity_check_refcnt(%struct.blame_scoreboard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
