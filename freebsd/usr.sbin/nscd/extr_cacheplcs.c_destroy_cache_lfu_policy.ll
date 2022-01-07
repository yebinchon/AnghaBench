; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_destroy_cache_lfu_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_destroy_cache_lfu_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32* }
%struct.cache_lfu_policy_item_ = type { i32 }
%struct.cache_policy_item_ = type { i32 }

@CACHELIB_MAX_FREQUENCY = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_cache_lfu_policy(%struct.cache_policy_* %0) #0 {
  %2 = alloca %struct.cache_policy_*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_lfu_policy_*, align 8
  %5 = alloca %struct.cache_lfu_policy_item_*, align 8
  store %struct.cache_policy_* %0, %struct.cache_policy_** %2, align 8
  %6 = call i32 @TRACE_IN(void (%struct.cache_policy_*)* @destroy_cache_lfu_policy)
  %7 = load %struct.cache_policy_*, %struct.cache_policy_** %2, align 8
  %8 = bitcast %struct.cache_policy_* %7 to %struct.cache_lfu_policy_*
  store %struct.cache_lfu_policy_* %8, %struct.cache_lfu_policy_** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CACHELIB_MAX_FREQUENCY, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %24, %13
  %15 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %4, align 8
  %16 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @TAILQ_EMPTY(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %44

24:                                               ; preds = %14
  %25 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %4, align 8
  %26 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call %struct.cache_lfu_policy_item_* @TAILQ_FIRST(i32* %30)
  store %struct.cache_lfu_policy_item_* %31, %struct.cache_lfu_policy_item_** %5, align 8
  %32 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %4, align 8
  %33 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %5, align 8
  %39 = load i32, i32* @entries, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.cache_lfu_policy_item_* %38, i32 %39)
  %41 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %5, align 8
  %42 = bitcast %struct.cache_lfu_policy_item_* %41 to %struct.cache_policy_item_*
  %43 = call i32 @cache_lfu_policy_destroy_item(%struct.cache_policy_item_* %42)
  br label %14

44:                                               ; preds = %14
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load %struct.cache_policy_*, %struct.cache_policy_** %2, align 8
  %50 = call i32 @free(%struct.cache_policy_* %49)
  %51 = call i32 @TRACE_OUT(void (%struct.cache_policy_*)* @destroy_cache_lfu_policy)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_policy_*)*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cache_lfu_policy_item_* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cache_lfu_policy_item_*, i32) #1

declare dso_local i32 @cache_lfu_policy_destroy_item(%struct.cache_policy_item_*) #1

declare dso_local i32 @free(%struct.cache_policy_*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_policy_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
