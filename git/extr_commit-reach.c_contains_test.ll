; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_contains_test.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_contains_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i64 }
%struct.commit_list = type { i32 }
%struct.contains_cache = type { i32 }

@CONTAINS_YES = common dso_local global i32 0, align 4
@CONTAINS_NO = common dso_local global i32 0, align 4
@CONTAINS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit_list*, %struct.contains_cache*, i64)* @contains_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_test(%struct.commit* %0, %struct.commit_list* %1, %struct.contains_cache* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.contains_cache*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.commit* %0, %struct.commit** %6, align 8
  store %struct.commit_list* %1, %struct.commit_list** %7, align 8
  store %struct.contains_cache* %2, %struct.contains_cache** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.contains_cache*, %struct.contains_cache** %8, align 8
  %12 = load %struct.commit*, %struct.commit** %6, align 8
  %13 = call i32* @contains_cache_at(%struct.contains_cache* %11, %struct.commit* %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %22 = load %struct.commit*, %struct.commit** %6, align 8
  %23 = call i64 @in_commit_list(%struct.commit_list* %21, %struct.commit* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @CONTAINS_YES, align 4
  %27 = load i32*, i32** %10, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @CONTAINS_YES, align 4
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %20
  %30 = load %struct.commit*, %struct.commit** %6, align 8
  %31 = call i32 @parse_commit_or_die(%struct.commit* %30)
  %32 = load %struct.commit*, %struct.commit** %6, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @CONTAINS_NO, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @CONTAINS_UNKNOWN, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37, %25, %17
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32* @contains_cache_at(%struct.contains_cache*, %struct.commit*) #1

declare dso_local i64 @in_commit_list(%struct.commit_list*, %struct.commit*) #1

declare dso_local i32 @parse_commit_or_die(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
