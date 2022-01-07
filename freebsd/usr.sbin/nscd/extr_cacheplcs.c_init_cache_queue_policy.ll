; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_init_cache_queue_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_init_cache_queue_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_queue_policy_ = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@cache_queue_policy_create_item = common dso_local global i32 0, align 4
@cache_queue_policy_destroy_item = common dso_local global i32 0, align 4
@cache_queue_policy_add_item = common dso_local global i32 0, align 4
@cache_queue_policy_remove_item = common dso_local global i32 0, align 4
@cache_queue_policy_get_first_item = common dso_local global i32 0, align 4
@cache_queue_policy_get_last_item = common dso_local global i32 0, align 4
@cache_queue_policy_get_next_item = common dso_local global i32 0, align 4
@cache_queue_policy_get_prev_item = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_queue_policy_* ()* @init_cache_queue_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_queue_policy_* @init_cache_queue_policy() #0 {
  %1 = alloca %struct.cache_queue_policy_*, align 8
  %2 = call i32 @TRACE_IN(%struct.cache_queue_policy_* (...)* bitcast (%struct.cache_queue_policy_* ()* @init_cache_queue_policy to %struct.cache_queue_policy_* (...)*))
  %3 = call %struct.cache_queue_policy_* @calloc(i32 1, i32 36)
  store %struct.cache_queue_policy_* %3, %struct.cache_queue_policy_** %1, align 8
  %4 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %5 = icmp ne %struct.cache_queue_policy_* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @cache_queue_policy_create_item, align 4
  %9 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %10 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @cache_queue_policy_destroy_item, align 4
  %13 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %14 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @cache_queue_policy_add_item, align 4
  %17 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %18 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @cache_queue_policy_remove_item, align 4
  %21 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %22 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @cache_queue_policy_get_first_item, align 4
  %25 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %26 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @cache_queue_policy_get_last_item, align 4
  %29 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %30 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @cache_queue_policy_get_next_item, align 4
  %33 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %34 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @cache_queue_policy_get_prev_item, align 4
  %37 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %38 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  %41 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %40, i32 0, i32 0
  %42 = call i32 @TAILQ_INIT(i32* %41)
  %43 = call i32 @TRACE_OUT(%struct.cache_queue_policy_* (...)* bitcast (%struct.cache_queue_policy_* ()* @init_cache_queue_policy to %struct.cache_queue_policy_* (...)*))
  %44 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %1, align 8
  ret %struct.cache_queue_policy_* %44
}

declare dso_local i32 @TRACE_IN(%struct.cache_queue_policy_* (...)*) #1

declare dso_local %struct.cache_queue_policy_* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_queue_policy_* (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
