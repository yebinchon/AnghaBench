; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_pass_blame_to_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_pass_blame_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.blame_origin = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.blame_chunk_cb_data = type { i32, %struct.blame_entry**, i64, i32*, %struct.blame_origin*, %struct.blame_origin* }
%struct.blame_entry = type { i32 }

@blame_chunk_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to generate diff (%s -> %s)\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@get_next_blame = common dso_local global i32 0, align 4
@set_next_blame = common dso_local global i32 0, align 4
@compare_blame_suspect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_origin*, i32)* @pass_blame_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_blame_to_parent(%struct.blame_scoreboard* %0, %struct.blame_origin* %1, %struct.blame_origin* %2, i32 %3) #0 {
  %5 = alloca %struct.blame_scoreboard*, align 8
  %6 = alloca %struct.blame_origin*, align 8
  %7 = alloca %struct.blame_origin*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.blame_chunk_cb_data, align 8
  %12 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %5, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %6, align 8
  store %struct.blame_origin* %2, %struct.blame_origin** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.blame_entry* null, %struct.blame_entry** %12, align 8
  %13 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %14 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %97

18:                                               ; preds = %4
  %19 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %20 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 5
  store %struct.blame_origin* %19, %struct.blame_origin** %20, align 8
  %21 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %22 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 4
  store %struct.blame_origin* %21, %struct.blame_origin** %22, align 8
  %23 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 1
  store %struct.blame_entry** %12, %struct.blame_entry*** %26, align 8
  %27 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %28 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 3
  store i32* %28, i32** %29, align 8
  %30 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %31 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %35 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %36 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %35, i32 0, i32 2
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @fill_origin_blob(i32* %33, %struct.blame_origin* %34, i32* %9, i32* %36, i32 %37)
  %39 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %40 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %44 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %45 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %44, i32 0, i32 2
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @fill_origin_blob(i32* %42, %struct.blame_origin* %43, i32* %10, i32* %45, i32 %46)
  %48 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %49 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @blame_chunk_cb, align 4
  %53 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %54 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @diff_hunks(i32* %9, i32* %10, i32 %52, %struct.blame_chunk_cb_data* %11, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %18
  %59 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %60 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @oid_to_hex(i32* %63)
  %65 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %66 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @oid_to_hex(i32* %69)
  %71 = call i32 @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %70)
  br label %72

72:                                               ; preds = %58, %18
  %73 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 1
  %74 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 3
  %75 = load i32, i32* @INT_MAX, align 4
  %76 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @INT_MAX, align 4
  %79 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %80 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %81 = call i32 @blame_chunk(%struct.blame_entry*** %73, i32** %74, i32 %75, i64 %77, i32 %78, i32 0, %struct.blame_origin* %79, %struct.blame_origin* %80, i32 0)
  %82 = getelementptr inbounds %struct.blame_chunk_cb_data, %struct.blame_chunk_cb_data* %11, i32 0, i32 1
  %83 = load %struct.blame_entry**, %struct.blame_entry*** %82, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %72
  %87 = load %struct.blame_entry*, %struct.blame_entry** %12, align 8
  %88 = load i32, i32* @get_next_blame, align 4
  %89 = load i32, i32* @set_next_blame, align 4
  %90 = load i32, i32* @compare_blame_suspect, align 4
  %91 = call %struct.blame_entry* @llist_mergesort(%struct.blame_entry* %87, i32 %88, i32 %89, i32 %90)
  store %struct.blame_entry* %91, %struct.blame_entry** %12, align 8
  br label %92

92:                                               ; preds = %86, %72
  %93 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %94 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %95 = load %struct.blame_entry*, %struct.blame_entry** %12, align 8
  %96 = call i32 @queue_blames(%struct.blame_scoreboard* %93, %struct.blame_origin* %94, %struct.blame_entry* %95)
  br label %97

97:                                               ; preds = %92, %17
  ret void
}

declare dso_local i32 @fill_origin_blob(i32*, %struct.blame_origin*, i32*, i32*, i32) #1

declare dso_local i64 @diff_hunks(i32*, i32*, i32, %struct.blame_chunk_cb_data*, i32) #1

declare dso_local i32 @die(i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @blame_chunk(%struct.blame_entry***, i32**, i32, i64, i32, i32, %struct.blame_origin*, %struct.blame_origin*, i32) #1

declare dso_local %struct.blame_entry* @llist_mergesort(%struct.blame_entry*, i32, i32, i32) #1

declare dso_local i32 @queue_blames(%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
