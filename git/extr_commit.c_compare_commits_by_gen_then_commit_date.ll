; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_compare_commits_by_gen_then_commit_date.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_compare_commits_by_gen_then_commit_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_commits_by_gen_then_commit_date(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.commit*
  store %struct.commit* %11, %struct.commit** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.commit*
  store %struct.commit* %13, %struct.commit** %9, align 8
  %14 = load %struct.commit*, %struct.commit** %8, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.commit*, %struct.commit** %9, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.commit*, %struct.commit** %8, align 8
  %24 = getelementptr inbounds %struct.commit, %struct.commit* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.commit*, %struct.commit** %9, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %52

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.commit*, %struct.commit** %8, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.commit*, %struct.commit** %9, align 8
  %37 = getelementptr inbounds %struct.commit, %struct.commit* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %52

41:                                               ; preds = %32
  %42 = load %struct.commit*, %struct.commit** %8, align 8
  %43 = getelementptr inbounds %struct.commit, %struct.commit* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.commit*, %struct.commit** %9, align 8
  %46 = getelementptr inbounds %struct.commit, %struct.commit* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %52

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49, %40, %30, %21
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
