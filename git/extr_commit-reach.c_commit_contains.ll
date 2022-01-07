; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_commit_contains.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_commit_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_filter = type { i64 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }
%struct.contains_cache = type { i32 }

@CONTAINS_YES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commit_contains(%struct.ref_filter* %0, %struct.commit* %1, %struct.commit_list* %2, %struct.contains_cache* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_filter*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.contains_cache*, align 8
  store %struct.ref_filter* %0, %struct.ref_filter** %6, align 8
  store %struct.commit* %1, %struct.commit** %7, align 8
  store %struct.commit_list* %2, %struct.commit_list** %8, align 8
  store %struct.contains_cache* %3, %struct.contains_cache** %9, align 8
  %10 = load %struct.ref_filter*, %struct.ref_filter** %6, align 8
  %11 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.commit*, %struct.commit** %7, align 8
  %16 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %17 = load %struct.contains_cache*, %struct.contains_cache** %9, align 8
  %18 = call i64 @contains_tag_algo(%struct.commit* %15, %struct.commit_list* %16, %struct.contains_cache* %17)
  %19 = load i64, i64* @CONTAINS_YES, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %4
  %23 = load %struct.commit*, %struct.commit** %7, align 8
  %24 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %25 = call i32 @is_descendant_of(%struct.commit* %23, %struct.commit_list* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i64 @contains_tag_algo(%struct.commit*, %struct.commit_list*, %struct.contains_cache*) #1

declare dso_local i32 @is_descendant_of(%struct.commit*, %struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
