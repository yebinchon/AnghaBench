; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_is_descendant_of.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_is_descendant_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }

@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_descendant_of(%struct.commit* %0, %struct.commit_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.commit_list* %1, %struct.commit_list** %5, align 8
  %9 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %10 = icmp ne %struct.commit_list* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load i32, i32* @the_repository, align 4
  %14 = call i64 @generation_numbers_enabled(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  store %struct.commit_list* null, %struct.commit_list** %6, align 8
  %17 = load %struct.commit*, %struct.commit** %4, align 8
  %18 = call i32 @commit_list_insert(%struct.commit* %17, %struct.commit_list** %6)
  %19 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %20 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %21 = call i32 @can_all_from_reach(%struct.commit_list* %19, %struct.commit_list* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %23 = call i32 @free_commit_list(%struct.commit_list* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %41, %25
  %27 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %28 = icmp ne %struct.commit_list* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 1
  %32 = load %struct.commit*, %struct.commit** %31, align 8
  store %struct.commit* %32, %struct.commit** %8, align 8
  %33 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %34 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %33, i32 0, i32 0
  %35 = load %struct.commit_list*, %struct.commit_list** %34, align 8
  store %struct.commit_list* %35, %struct.commit_list** %5, align 8
  %36 = load %struct.commit*, %struct.commit** %8, align 8
  %37 = load %struct.commit*, %struct.commit** %4, align 8
  %38 = call i64 @in_merge_bases(%struct.commit* %36, %struct.commit* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %43

41:                                               ; preds = %29
  br label %26

42:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %40, %16, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @generation_numbers_enabled(i32) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @can_all_from_reach(%struct.commit_list*, %struct.commit_list*, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i64 @in_merge_bases(%struct.commit*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
