; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_blame_entry_score.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_blame_entry_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32 }
%struct.blame_entry = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blame_entry_score(%struct.blame_scoreboard* %0, %struct.blame_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blame_scoreboard*, align 8
  %5 = alloca %struct.blame_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %4, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %5, align 8
  %10 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %11 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %16 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %19 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %20 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %21 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @blame_nth_line(%struct.blame_scoreboard* %19, i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %25 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %26 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %29 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i8* @blame_nth_line(%struct.blame_scoreboard* %24, i64 %31)
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %47, %18
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @isalnum(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %53 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i8* @blame_nth_line(%struct.blame_scoreboard*, i64) #1

declare dso_local i64 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
