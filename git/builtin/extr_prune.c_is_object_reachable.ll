; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_prune.c_is_object_reachable.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_prune.c_is_object_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.rev_info = type { i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.rev_info*)* @is_object_reachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_object_reachable(%struct.object_id* %0, %struct.rev_info* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %7 = call i32 @perform_reachability_traversal(%struct.rev_info* %6)
  %8 = load i32, i32* @the_repository, align 4
  %9 = load %struct.object_id*, %struct.object_id** %3, align 8
  %10 = call %struct.object* @lookup_object(i32 %8, %struct.object_id* %9)
  store %struct.object* %10, %struct.object** %5, align 8
  %11 = load %struct.object*, %struct.object** %5, align 8
  %12 = icmp ne %struct.object* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.object*, %struct.object** %5, align 8
  %15 = getelementptr inbounds %struct.object, %struct.object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SEEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %13, %2
  %21 = phi i1 [ false, %2 ], [ %19, %13 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @perform_reachability_traversal(%struct.rev_info*) #1

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
