; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_last_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_last_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_item_ = type { i32 }
%struct.cache_policy_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32* }
%struct.cache_lfu_policy_item_ = type { i32 }

@CACHELIB_MAX_FREQUENCY = common dso_local global i32 0, align 4
@cache_lfu_policy_group_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_policy_item_* (%struct.cache_policy_*)* @cache_lfu_policy_get_last_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_policy_item_* @cache_lfu_policy_get_last_item(%struct.cache_policy_* %0) #0 {
  %2 = alloca %struct.cache_policy_*, align 8
  %3 = alloca %struct.cache_lfu_policy_*, align 8
  %4 = alloca %struct.cache_lfu_policy_item_*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_policy_* %0, %struct.cache_policy_** %2, align 8
  %6 = call i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*)* @cache_lfu_policy_get_last_item)
  store %struct.cache_lfu_policy_item_* null, %struct.cache_lfu_policy_item_** %4, align 8
  %7 = load %struct.cache_policy_*, %struct.cache_policy_** %2, align 8
  %8 = bitcast %struct.cache_policy_* %7 to %struct.cache_lfu_policy_*
  store %struct.cache_lfu_policy_* %8, %struct.cache_lfu_policy_** %3, align 8
  %9 = load i32, i32* @CACHELIB_MAX_FREQUENCY, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %3, align 8
  %16 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @TAILQ_EMPTY(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %3, align 8
  %25 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @cache_lfu_policy_group_, align 4
  %31 = call %struct.cache_lfu_policy_item_* @TAILQ_LAST(i32* %29, i32 %30)
  store %struct.cache_lfu_policy_item_* %31, %struct.cache_lfu_policy_item_** %4, align 8
  br label %36

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  br label %11

36:                                               ; preds = %23, %11
  %37 = call i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*)* @cache_lfu_policy_get_last_item)
  %38 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %4, align 8
  %39 = bitcast %struct.cache_lfu_policy_item_* %38 to %struct.cache_policy_item_*
  ret %struct.cache_policy_item_* %39
}

declare dso_local i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*)*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cache_lfu_policy_item_* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
