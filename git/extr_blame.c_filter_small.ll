; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_filter_small.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_filter_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_entry = type { %struct.blame_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_entry** (%struct.blame_scoreboard*, %struct.blame_entry**, %struct.blame_entry**, i32)* @filter_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_entry** @filter_small(%struct.blame_scoreboard* %0, %struct.blame_entry** %1, %struct.blame_entry** %2, i32 %3) #0 {
  %5 = alloca %struct.blame_scoreboard*, align 8
  %6 = alloca %struct.blame_entry**, align 8
  %7 = alloca %struct.blame_entry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blame_entry*, align 8
  %10 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %5, align 8
  store %struct.blame_entry** %1, %struct.blame_entry*** %6, align 8
  store %struct.blame_entry** %2, %struct.blame_entry*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blame_entry**, %struct.blame_entry*** %7, align 8
  %12 = load %struct.blame_entry*, %struct.blame_entry** %11, align 8
  store %struct.blame_entry* %12, %struct.blame_entry** %9, align 8
  %13 = load %struct.blame_entry**, %struct.blame_entry*** %6, align 8
  %14 = load %struct.blame_entry*, %struct.blame_entry** %13, align 8
  store %struct.blame_entry* %14, %struct.blame_entry** %10, align 8
  br label %15

15:                                               ; preds = %38, %4
  %16 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %17 = icmp ne %struct.blame_entry* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %5, align 8
  %20 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %21 = call i32 @blame_entry_score(%struct.blame_scoreboard* %19, %struct.blame_entry* %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %26 = load %struct.blame_entry**, %struct.blame_entry*** %6, align 8
  store %struct.blame_entry* %25, %struct.blame_entry** %26, align 8
  %27 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %28 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %27, i32 0, i32 0
  store %struct.blame_entry** %28, %struct.blame_entry*** %6, align 8
  %29 = load %struct.blame_entry**, %struct.blame_entry*** %6, align 8
  %30 = load %struct.blame_entry*, %struct.blame_entry** %29, align 8
  store %struct.blame_entry* %30, %struct.blame_entry** %9, align 8
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %33 = load %struct.blame_entry**, %struct.blame_entry*** %7, align 8
  store %struct.blame_entry* %32, %struct.blame_entry** %33, align 8
  %34 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %35 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %34, i32 0, i32 0
  store %struct.blame_entry** %35, %struct.blame_entry*** %7, align 8
  %36 = load %struct.blame_entry**, %struct.blame_entry*** %7, align 8
  %37 = load %struct.blame_entry*, %struct.blame_entry** %36, align 8
  store %struct.blame_entry* %37, %struct.blame_entry** %9, align 8
  br label %38

38:                                               ; preds = %31, %24
  br label %15

39:                                               ; preds = %15
  %40 = load %struct.blame_entry*, %struct.blame_entry** %10, align 8
  %41 = load %struct.blame_entry**, %struct.blame_entry*** %6, align 8
  store %struct.blame_entry* %40, %struct.blame_entry** %41, align 8
  %42 = load %struct.blame_entry**, %struct.blame_entry*** %7, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %42, align 8
  %43 = load %struct.blame_entry**, %struct.blame_entry*** %6, align 8
  ret %struct.blame_entry** %43
}

declare dso_local i32 @blame_entry_score(%struct.blame_scoreboard*, %struct.blame_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
