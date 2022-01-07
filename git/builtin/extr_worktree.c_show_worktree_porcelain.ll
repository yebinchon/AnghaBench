; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_show_worktree_porcelain.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_show_worktree_porcelain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i8*, i8*, i64, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"worktree %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bare\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"HEAD %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"detached\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"branch %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worktree*)* @show_worktree_porcelain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_worktree_porcelain(%struct.worktree* %0) #0 {
  %2 = alloca %struct.worktree*, align 8
  store %struct.worktree* %0, %struct.worktree** %2, align 8
  %3 = load %struct.worktree*, %struct.worktree** %2, align 8
  %4 = getelementptr inbounds %struct.worktree, %struct.worktree* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load %struct.worktree*, %struct.worktree** %2, align 8
  %8 = getelementptr inbounds %struct.worktree, %struct.worktree* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.worktree*, %struct.worktree** %2, align 8
  %15 = getelementptr inbounds %struct.worktree, %struct.worktree* %14, i32 0, i32 3
  %16 = call i8* @oid_to_hex(i32* %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load %struct.worktree*, %struct.worktree** %2, align 8
  %19 = getelementptr inbounds %struct.worktree, %struct.worktree* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %35

24:                                               ; preds = %13
  %25 = load %struct.worktree*, %struct.worktree** %2, align 8
  %26 = getelementptr inbounds %struct.worktree, %struct.worktree* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.worktree*, %struct.worktree** %2, align 8
  %31 = getelementptr inbounds %struct.worktree, %struct.worktree* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %11
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
