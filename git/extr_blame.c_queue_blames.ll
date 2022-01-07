; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_queue_blames.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_queue_blames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_origin = type { i32, %struct.blame_entry*, %struct.blame_origin* }
%struct.blame_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_origin*, %struct.blame_entry*)* @queue_blames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_blames(%struct.blame_scoreboard* %0, %struct.blame_origin* %1, %struct.blame_entry* %2) #0 {
  %4 = alloca %struct.blame_scoreboard*, align 8
  %5 = alloca %struct.blame_origin*, align 8
  %6 = alloca %struct.blame_entry*, align 8
  %7 = alloca %struct.blame_origin*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %4, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %5, align 8
  store %struct.blame_entry* %2, %struct.blame_entry** %6, align 8
  %8 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %9 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %8, i32 0, i32 1
  %10 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %11 = icmp ne %struct.blame_entry* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %14 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %13, i32 0, i32 1
  %15 = load %struct.blame_entry*, %struct.blame_entry** %14, align 8
  %16 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %17 = call %struct.blame_entry* @blame_merge(%struct.blame_entry* %15, %struct.blame_entry* %16)
  %18 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %19 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %18, i32 0, i32 1
  store %struct.blame_entry* %17, %struct.blame_entry** %19, align 8
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %22 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.blame_origin* @get_blame_suspects(i32 %23)
  store %struct.blame_origin* %24, %struct.blame_origin** %7, align 8
  br label %25

25:                                               ; preds = %38, %20
  %26 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %27 = icmp ne %struct.blame_origin* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %30 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %29, i32 0, i32 1
  %31 = load %struct.blame_entry*, %struct.blame_entry** %30, align 8
  %32 = icmp ne %struct.blame_entry* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %35 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %36 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %35, i32 0, i32 1
  store %struct.blame_entry* %34, %struct.blame_entry** %36, align 8
  br label %52

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %40 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %39, i32 0, i32 2
  %41 = load %struct.blame_origin*, %struct.blame_origin** %40, align 8
  store %struct.blame_origin* %41, %struct.blame_origin** %7, align 8
  br label %25

42:                                               ; preds = %25
  %43 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %44 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %45 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %44, i32 0, i32 1
  store %struct.blame_entry* %43, %struct.blame_entry** %45, align 8
  %46 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %47 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %46, i32 0, i32 0
  %48 = load %struct.blame_origin*, %struct.blame_origin** %5, align 8
  %49 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @prio_queue_put(i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %33, %42, %12
  ret void
}

declare dso_local %struct.blame_entry* @blame_merge(%struct.blame_entry*, %struct.blame_entry*) #1

declare dso_local %struct.blame_origin* @get_blame_suspects(i32) #1

declare dso_local i32 @prio_queue_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
