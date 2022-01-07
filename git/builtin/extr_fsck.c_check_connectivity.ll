; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_check_connectivity.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_check_connectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }

@connectivity_only = common dso_local global i64 0, align 8
@show_dangling = common dso_local global i64 0, align 8
@write_lost_and_found = common dso_local global i64 0, align 8
@mark_loose_unreachable_referents = common dso_local global i32 0, align 4
@mark_packed_unreachable_referents = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Checking connectivity (%d objects)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_connectivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_connectivity() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.object*, align 8
  %4 = call i32 (...) @traverse_reachable()
  %5 = load i64, i64* @connectivity_only, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load i64, i64* @show_dangling, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @write_lost_and_found, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @mark_loose_unreachable_referents, align 4
  %15 = call i32 @for_each_loose_object(i32 %14, i32* null, i32 0)
  %16 = load i32, i32* @mark_packed_unreachable_referents, align 4
  %17 = call i32 @for_each_packed_object(i32 %16, i32* null, i32 0)
  br label %18

18:                                               ; preds = %13, %10, %0
  %19 = call i32 (...) @get_max_object_index()
  store i32 %19, i32* %2, align 4
  %20 = load i64, i64* @verbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @fprintf_ln(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = call %struct.object* @get_indexed_object(i32 %33)
  store %struct.object* %34, %struct.object** %3, align 8
  %35 = load %struct.object*, %struct.object** %3, align 8
  %36 = icmp ne %struct.object* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.object*, %struct.object** %3, align 8
  %39 = call i32 @check_object(%struct.object* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %28

44:                                               ; preds = %28
  ret void
}

declare dso_local i32 @traverse_reachable(...) #1

declare dso_local i32 @for_each_loose_object(i32, i32*, i32) #1

declare dso_local i32 @for_each_packed_object(i32, i32*, i32) #1

declare dso_local i32 @get_max_object_index(...) #1

declare dso_local i32 @fprintf_ln(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.object* @get_indexed_object(i32) #1

declare dso_local i32 @check_object(%struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
