; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_prune_base_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_prune_base_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base_data = type { i64, %struct.base_data* }
%struct.thread_local = type { i64, %struct.base_data* }

@delta_base_cache_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.base_data*)* @prune_base_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_base_data(%struct.base_data* %0) #0 {
  %2 = alloca %struct.base_data*, align 8
  %3 = alloca %struct.base_data*, align 8
  %4 = alloca %struct.thread_local*, align 8
  store %struct.base_data* %0, %struct.base_data** %2, align 8
  %5 = call %struct.thread_local* (...) @get_thread_data()
  store %struct.thread_local* %5, %struct.thread_local** %4, align 8
  %6 = load %struct.thread_local*, %struct.thread_local** %4, align 8
  %7 = getelementptr inbounds %struct.thread_local, %struct.thread_local* %6, i32 0, i32 1
  %8 = load %struct.base_data*, %struct.base_data** %7, align 8
  store %struct.base_data* %8, %struct.base_data** %3, align 8
  br label %9

9:                                                ; preds = %33, %1
  %10 = load %struct.thread_local*, %struct.thread_local** %4, align 8
  %11 = getelementptr inbounds %struct.thread_local, %struct.thread_local* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @delta_base_cache_limit, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.base_data*, %struct.base_data** %3, align 8
  %17 = icmp ne %struct.base_data* %16, null
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i1 [ false, %9 ], [ %17, %15 ]
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = load %struct.base_data*, %struct.base_data** %3, align 8
  %22 = getelementptr inbounds %struct.base_data, %struct.base_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.base_data*, %struct.base_data** %3, align 8
  %27 = load %struct.base_data*, %struct.base_data** %2, align 8
  %28 = icmp ne %struct.base_data* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.base_data*, %struct.base_data** %3, align 8
  %31 = call i32 @free_base_data(%struct.base_data* %30)
  br label %32

32:                                               ; preds = %29, %25, %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.base_data*, %struct.base_data** %3, align 8
  %35 = getelementptr inbounds %struct.base_data, %struct.base_data* %34, i32 0, i32 1
  %36 = load %struct.base_data*, %struct.base_data** %35, align 8
  store %struct.base_data* %36, %struct.base_data** %3, align 8
  br label %9

37:                                               ; preds = %18
  ret void
}

declare dso_local %struct.thread_local* @get_thread_data(...) #1

declare dso_local i32 @free_base_data(%struct.base_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
