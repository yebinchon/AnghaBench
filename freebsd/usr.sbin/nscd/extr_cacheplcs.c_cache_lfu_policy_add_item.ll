; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_add_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_ = type { i32 }
%struct.cache_policy_item_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32* }
%struct.cache_lfu_policy_item_ = type { i32 }

@CACHELIB_MAX_FREQUENCY = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_add_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_lfu_policy_add_item(%struct.cache_policy_* %0, %struct.cache_policy_item_* %1) #0 {
  %3 = alloca %struct.cache_policy_*, align 8
  %4 = alloca %struct.cache_policy_item_*, align 8
  %5 = alloca %struct.cache_lfu_policy_*, align 8
  %6 = alloca %struct.cache_lfu_policy_item_*, align 8
  store %struct.cache_policy_* %0, %struct.cache_policy_** %3, align 8
  store %struct.cache_policy_item_* %1, %struct.cache_policy_item_** %4, align 8
  %7 = call i32 @TRACE_IN(void (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_add_item)
  %8 = load %struct.cache_policy_*, %struct.cache_policy_** %3, align 8
  %9 = bitcast %struct.cache_policy_* %8 to %struct.cache_lfu_policy_*
  store %struct.cache_lfu_policy_* %9, %struct.cache_lfu_policy_** %5, align 8
  %10 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %11 = bitcast %struct.cache_policy_item_* %10 to %struct.cache_lfu_policy_item_*
  store %struct.cache_lfu_policy_item_* %11, %struct.cache_lfu_policy_item_** %6, align 8
  %12 = load i32, i32* @CACHELIB_MAX_FREQUENCY, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %15 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %5, align 8
  %17 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @CACHELIB_MAX_FREQUENCY, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %24 = load i32, i32* @entries, align 4
  %25 = call i32 @TAILQ_INSERT_HEAD(i32* %22, %struct.cache_lfu_policy_item_* %23, i32 %24)
  %26 = call i32 @TRACE_OUT(void (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_add_item)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.cache_lfu_policy_item_*, i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
