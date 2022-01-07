; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_distribute_blame.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_distribute_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_entry = type { %struct.blame_entry*, %struct.blame_origin* }
%struct.blame_origin = type { i32 }

@get_next_blame = common dso_local global i32 0, align 4
@set_next_blame = common dso_local global i32 0, align 4
@compare_blame_suspect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_entry*)* @distribute_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @distribute_blame(%struct.blame_scoreboard* %0, %struct.blame_entry* %1) #0 {
  %3 = alloca %struct.blame_scoreboard*, align 8
  %4 = alloca %struct.blame_entry*, align 8
  %5 = alloca %struct.blame_origin*, align 8
  %6 = alloca %struct.blame_entry*, align 8
  %7 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %3, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %4, align 8
  %8 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %9 = load i32, i32* @get_next_blame, align 4
  %10 = load i32, i32* @set_next_blame, align 4
  %11 = load i32, i32* @compare_blame_suspect, align 4
  %12 = call %struct.blame_entry* @llist_mergesort(%struct.blame_entry* %8, i32 %9, i32 %10, i32 %11)
  store %struct.blame_entry* %12, %struct.blame_entry** %4, align 8
  br label %13

13:                                               ; preds = %40, %2
  %14 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %15 = icmp ne %struct.blame_entry* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %18 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %17, i32 0, i32 1
  %19 = load %struct.blame_origin*, %struct.blame_origin** %18, align 8
  store %struct.blame_origin* %19, %struct.blame_origin** %5, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %6, align 8
  br label %20

20:                                               ; preds = %38, %16
  %21 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %22 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %21, i32 0, i32 0
  %23 = load %struct.blame_entry*, %struct.blame_entry** %22, align 8
  store %struct.blame_entry* %23, %struct.blame_entry** %7, align 8
  %24 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %25 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %26 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %25, i32 0, i32 0
  store %struct.blame_entry* %24, %struct.blame_entry** %26, align 8
  %27 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  store %struct.blame_entry* %27, %struct.blame_entry** %6, align 8
  %28 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  store %struct.blame_entry* %28, %struct.blame_entry** %4, align 8
  br label %29

29:                                               ; preds = %20
  %30 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %31 = icmp ne %struct.blame_entry* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.blame_entry*, %struct.blame_entry** %4, align 8
  %34 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %33, i32 0, i32 1
  %35 = load %struct.blame_origin*, %struct.blame_origin** %34, align 8
  %36 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %37 = icmp eq %struct.blame_origin* %35, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %20, label %40

40:                                               ; preds = %38
  %41 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %42 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %41, i32* null)
  store %struct.blame_entry* %42, %struct.blame_entry** %6, align 8
  %43 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %44 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %45 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %46 = call i32 @queue_blames(%struct.blame_scoreboard* %43, %struct.blame_origin* %44, %struct.blame_entry* %45)
  br label %13

47:                                               ; preds = %13
  ret void
}

declare dso_local %struct.blame_entry* @llist_mergesort(%struct.blame_entry*, i32, i32, i32) #1

declare dso_local %struct.blame_entry* @reverse_blame(%struct.blame_entry*, i32*) #1

declare dso_local i32 @queue_blames(%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
