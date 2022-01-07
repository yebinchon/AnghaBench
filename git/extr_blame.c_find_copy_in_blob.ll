; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_copy_in_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_copy_in_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_origin = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.blame_entry = type { i64, i32, i32, i64, %struct.blame_entry*, %struct.blame_origin*, %struct.blame_entry*, %struct.blame_scoreboard* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.handle_split_cb_data = type { i64, i32, i32, i64, %struct.handle_split_cb_data*, %struct.blame_origin*, %struct.handle_split_cb_data*, %struct.blame_scoreboard* }

@handle_split_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to generate diff (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_entry*, %struct.blame_origin*, %struct.blame_entry*, %struct.TYPE_9__*)* @find_copy_in_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_copy_in_blob(%struct.blame_scoreboard* %0, %struct.blame_entry* %1, %struct.blame_origin* %2, %struct.blame_entry* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca %struct.blame_scoreboard*, align 8
  %7 = alloca %struct.blame_entry*, align 8
  %8 = alloca %struct.blame_origin*, align 8
  %9 = alloca %struct.blame_entry*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.handle_split_cb_data, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %6, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %7, align 8
  store %struct.blame_origin* %2, %struct.blame_origin** %8, align 8
  store %struct.blame_entry* %3, %struct.blame_entry** %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  %14 = call i32 @memset(%struct.handle_split_cb_data* %13, i32 0, i32 56)
  %15 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %16 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %13, i32 0, i32 7
  store %struct.blame_scoreboard* %15, %struct.blame_scoreboard** %16, align 8
  %17 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %18 = bitcast %struct.blame_entry* %17 to %struct.handle_split_cb_data*
  %19 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %13, i32 0, i32 6
  store %struct.handle_split_cb_data* %18, %struct.handle_split_cb_data** %19, align 8
  %20 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %21 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %13, i32 0, i32 5
  store %struct.blame_origin* %20, %struct.blame_origin** %21, align 8
  %22 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %23 = bitcast %struct.blame_entry* %22 to %struct.handle_split_cb_data*
  %24 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %13, i32 0, i32 4
  store %struct.handle_split_cb_data* %23, %struct.handle_split_cb_data** %24, align 8
  %25 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %26 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %27 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @blame_nth_line(%struct.blame_scoreboard* %25, i64 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %33 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %34 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %37 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i8* @blame_nth_line(%struct.blame_scoreboard* %32, i64 %39)
  %41 = load i8*, i8** %11, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %48 = bitcast %struct.blame_entry* %47 to %struct.handle_split_cb_data*
  %49 = call i32 @memset(%struct.handle_split_cb_data* %48, i32 0, i32 168)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = load i32, i32* @handle_split_cb, align 4
  %52 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %53 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @diff_hunks(%struct.TYPE_9__* %50, %struct.TYPE_9__* %12, i32 %51, %struct.handle_split_cb_data* %13, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %5
  %58 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %59 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = call i32 @oid_to_hex(i32* %62)
  %64 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %5
  %66 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %6, align 8
  %67 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %68 = bitcast %struct.blame_entry* %67 to %struct.handle_split_cb_data*
  %69 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %13, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.handle_split_cb_data, %struct.handle_split_cb_data* %13, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %74 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %77 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %78 = bitcast %struct.blame_entry* %77 to %struct.handle_split_cb_data*
  %79 = call i32 @handle_split(%struct.blame_scoreboard* %66, %struct.handle_split_cb_data* %68, i32 %70, i32 %72, i64 %75, %struct.blame_origin* %76, %struct.handle_split_cb_data* %78)
  ret void
}

declare dso_local i32 @memset(%struct.handle_split_cb_data*, i32, i32) #1

declare dso_local i8* @blame_nth_line(%struct.blame_scoreboard*, i64) #1

declare dso_local i64 @diff_hunks(%struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.handle_split_cb_data*, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @handle_split(%struct.blame_scoreboard*, %struct.handle_split_cb_data*, i32, i32, i64, %struct.blame_origin*, %struct.handle_split_cb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
