; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_copy_split_if_better.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_copy_split_if_better.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_entry*, %struct.blame_entry*)* @copy_split_if_better to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_split_if_better(%struct.blame_scoreboard* %0, %struct.blame_entry* %1, %struct.blame_entry* %2) #0 {
  %4 = alloca %struct.blame_scoreboard*, align 8
  %5 = alloca %struct.blame_entry*, align 8
  %6 = alloca %struct.blame_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %4, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %5, align 8
  store %struct.blame_entry* %2, %struct.blame_entry** %6, align 8
  %8 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %9 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %8, i64 1
  %10 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %53

14:                                               ; preds = %3
  %15 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %16 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %15, i64 1
  %17 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %22 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %23 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %22, i64 1
  %24 = call i64 @blame_entry_score(%struct.blame_scoreboard* %21, %struct.blame_entry* %23)
  %25 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %26 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %27 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %26, i64 1
  %28 = call i64 @blame_entry_score(%struct.blame_scoreboard* %25, %struct.blame_entry* %27)
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %53

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %14
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @blame_origin_incref(i64 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %49 = call i32 @decref_split(%struct.blame_entry* %48)
  %50 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %51 = load %struct.blame_entry*, %struct.blame_entry** %6, align 8
  %52 = call i32 @memcpy(%struct.blame_entry* %50, %struct.blame_entry* %51, i32 24)
  br label %53

53:                                               ; preds = %47, %30, %13
  ret void
}

declare dso_local i64 @blame_entry_score(%struct.blame_scoreboard*, %struct.blame_entry*) #1

declare dso_local i32 @blame_origin_incref(i64) #1

declare dso_local i32 @decref_split(%struct.blame_entry*) #1

declare dso_local i32 @memcpy(%struct.blame_entry*, %struct.blame_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
