; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_measure_widths.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_measure_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worktree**, i32*, i32*)* @measure_widths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_widths(%struct.worktree** %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.worktree**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.worktree** %0, %struct.worktree*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %52, %3
  %11 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.worktree*, %struct.worktree** %11, i64 %13
  %15 = load %struct.worktree*, %struct.worktree** %14, align 8
  %16 = icmp ne %struct.worktree* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %10
  %18 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.worktree*, %struct.worktree** %18, i64 %20
  %22 = load %struct.worktree*, %struct.worktree** %21, align 8
  %23 = getelementptr inbounds %struct.worktree, %struct.worktree* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlen(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load %struct.worktree**, %struct.worktree*** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.worktree*, %struct.worktree** %34, i64 %36
  %38 = load %struct.worktree*, %struct.worktree** %37, align 8
  %39 = getelementptr inbounds %struct.worktree, %struct.worktree* %38, i32 0, i32 0
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @find_unique_abbrev(i32* %39, i32 %41)
  %43 = call i32 @strlen(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %10

55:                                               ; preds = %10
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @find_unique_abbrev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
