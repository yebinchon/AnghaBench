; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_prune.c_perform_reachability_traversal.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_prune.c_perform_reachability_traversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.progress = type { i32 }

@perform_reachability_traversal.initialized = internal global i32 0, align 4
@show_progress = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Checking connectivity\00", align 1
@expire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @perform_reachability_traversal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_reachability_traversal(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.progress*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  store %struct.progress* null, %struct.progress** %3, align 8
  %4 = load i32, i32* @perform_reachability_traversal.initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %19

7:                                                ; preds = %1
  %8 = load i64, i64* @show_progress, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.progress* @start_delayed_progress(i32 %11, i32 0)
  store %struct.progress* %12, %struct.progress** %3, align 8
  br label %13

13:                                               ; preds = %10, %7
  %14 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %15 = load i32, i32* @expire, align 4
  %16 = load %struct.progress*, %struct.progress** %3, align 8
  %17 = call i32 @mark_reachable_objects(%struct.rev_info* %14, i32 1, i32 %15, %struct.progress* %16)
  %18 = call i32 @stop_progress(%struct.progress** %3)
  store i32 1, i32* @perform_reachability_traversal.initialized, align 4
  br label %19

19:                                               ; preds = %13, %6
  ret void
}

declare dso_local %struct.progress* @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @mark_reachable_objects(%struct.rev_info*, i32, i32, %struct.progress*) #1

declare dso_local i32 @stop_progress(%struct.progress**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
