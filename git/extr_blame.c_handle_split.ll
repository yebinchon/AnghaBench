; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_handle_split.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_handle_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_origin = type { i32 }
%struct.blame_entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_entry*, i32, i32, i32, %struct.blame_origin*, %struct.blame_entry*)* @handle_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_split(%struct.blame_scoreboard* %0, %struct.blame_entry* %1, i32 %2, i32 %3, i32 %4, %struct.blame_origin* %5, %struct.blame_entry* %6) #0 {
  %8 = alloca %struct.blame_scoreboard*, align 8
  %9 = alloca %struct.blame_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.blame_origin*, align 8
  %14 = alloca %struct.blame_entry*, align 8
  %15 = alloca [3 x %struct.blame_entry], align 16
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %8, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.blame_origin* %5, %struct.blame_origin** %13, align 8
  store %struct.blame_entry* %6, %struct.blame_entry** %14, align 8
  %16 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %17 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  br label %54

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %28 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %35 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %15, i64 0, i64 0
  %42 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.blame_origin*, %struct.blame_origin** %13, align 8
  %47 = call i32 @split_overlap(%struct.blame_entry* %41, %struct.blame_entry* %42, i32 %43, i32 %44, i32 %45, %struct.blame_origin* %46)
  %48 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %49 = load %struct.blame_entry*, %struct.blame_entry** %14, align 8
  %50 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %15, i64 0, i64 0
  %51 = call i32 @copy_split_if_better(%struct.blame_scoreboard* %48, %struct.blame_entry* %49, %struct.blame_entry* %50)
  %52 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %15, i64 0, i64 0
  %53 = call i32 @decref_split(%struct.blame_entry* %52)
  br label %54

54:                                               ; preds = %21, %26, %22
  ret void
}

declare dso_local i32 @split_overlap(%struct.blame_entry*, %struct.blame_entry*, i32, i32, i32, %struct.blame_origin*) #1

declare dso_local i32 @copy_split_if_better(%struct.blame_scoreboard*, %struct.blame_entry*, %struct.blame_entry*) #1

declare dso_local i32 @decref_split(%struct.blame_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
