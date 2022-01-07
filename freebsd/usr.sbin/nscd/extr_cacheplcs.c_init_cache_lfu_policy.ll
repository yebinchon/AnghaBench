; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_init_cache_lfu_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_init_cache_lfu_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cache_lfu_policy_create_item = common dso_local global i32 0, align 4
@cache_lfu_policy_destroy_item = common dso_local global i32 0, align 4
@cache_lfu_policy_add_item = common dso_local global i32 0, align 4
@cache_lfu_policy_update_item = common dso_local global i32 0, align 4
@cache_lfu_policy_remove_item = common dso_local global i32 0, align 4
@cache_lfu_policy_get_first_item = common dso_local global i32 0, align 4
@cache_lfu_policy_get_last_item = common dso_local global i32 0, align 4
@cache_lfu_policy_get_next_item = common dso_local global i32 0, align 4
@cache_lfu_policy_get_prev_item = common dso_local global i32 0, align 4
@CACHELIB_MAX_FREQUENCY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_policy_* @init_cache_lfu_policy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cache_lfu_policy_*, align 8
  %3 = call i32 @TRACE_IN(%struct.cache_policy_* (...)* bitcast (%struct.cache_policy_* ()* @init_cache_lfu_policy to %struct.cache_policy_* (...)*))
  %4 = call %struct.cache_lfu_policy_* @calloc(i32 1, i32 48)
  store %struct.cache_lfu_policy_* %4, %struct.cache_lfu_policy_** %2, align 8
  %5 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %6 = icmp ne %struct.cache_lfu_policy_* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @cache_lfu_policy_create_item, align 4
  %10 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %11 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 8
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @cache_lfu_policy_destroy_item, align 4
  %14 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %15 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @cache_lfu_policy_add_item, align 4
  %18 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %19 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @cache_lfu_policy_update_item, align 4
  %22 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %23 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @cache_lfu_policy_remove_item, align 4
  %26 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %27 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @cache_lfu_policy_get_first_item, align 4
  %30 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %31 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @cache_lfu_policy_get_last_item, align 4
  %34 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %35 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @cache_lfu_policy_get_next_item, align 4
  %38 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %39 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @cache_lfu_policy_get_prev_item, align 4
  %42 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %43 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %57, %0
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @CACHELIB_MAX_FREQUENCY, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %51 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @TAILQ_INIT(i32* %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %45

60:                                               ; preds = %45
  %61 = call i32 @TRACE_OUT(%struct.cache_policy_* (...)* bitcast (%struct.cache_policy_* ()* @init_cache_lfu_policy to %struct.cache_policy_* (...)*))
  %62 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %2, align 8
  %63 = bitcast %struct.cache_lfu_policy_* %62 to %struct.cache_policy_*
  ret %struct.cache_policy_* %63
}

declare dso_local i32 @TRACE_IN(%struct.cache_policy_* (...)*) #1

declare dso_local %struct.cache_lfu_policy_* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_policy_* (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
