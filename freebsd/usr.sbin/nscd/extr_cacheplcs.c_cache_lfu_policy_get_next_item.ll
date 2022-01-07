; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_next_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_next_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_ = type { i32 }
%struct.cache_policy_item_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32* }
%struct.cache_lfu_policy_item_ = type { i32 }

@entries = common dso_local global i32 0, align 4
@CACHELIB_MAX_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_get_next_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_policy_item_* @cache_lfu_policy_get_next_item(%struct.cache_policy_* %0, %struct.cache_policy_item_* %1) #0 {
  %3 = alloca %struct.cache_policy_*, align 8
  %4 = alloca %struct.cache_policy_item_*, align 8
  %5 = alloca %struct.cache_lfu_policy_*, align 8
  %6 = alloca %struct.cache_lfu_policy_item_*, align 8
  %7 = alloca i32, align 4
  store %struct.cache_policy_* %0, %struct.cache_policy_** %3, align 8
  store %struct.cache_policy_item_* %1, %struct.cache_policy_item_** %4, align 8
  %8 = call i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_get_next_item)
  %9 = load %struct.cache_policy_*, %struct.cache_policy_** %3, align 8
  %10 = bitcast %struct.cache_policy_* %9 to %struct.cache_lfu_policy_*
  store %struct.cache_lfu_policy_* %10, %struct.cache_lfu_policy_** %5, align 8
  %11 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %12 = bitcast %struct.cache_policy_item_* %11 to %struct.cache_lfu_policy_item_*
  %13 = load i32, i32* @entries, align 4
  %14 = call %struct.cache_lfu_policy_item_* @TAILQ_NEXT(%struct.cache_lfu_policy_item_* %12, i32 %13)
  store %struct.cache_lfu_policy_item_* %14, %struct.cache_lfu_policy_item_** %6, align 8
  %15 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %16 = icmp eq %struct.cache_lfu_policy_item_* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %19 = bitcast %struct.cache_policy_item_* %18 to %struct.cache_lfu_policy_item_*
  %20 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %45, %17
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CACHELIB_MAX_FREQUENCY, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %5, align 8
  %29 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @TAILQ_EMPTY(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %5, align 8
  %38 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call %struct.cache_lfu_policy_item_* @TAILQ_FIRST(i32* %42)
  store %struct.cache_lfu_policy_item_* %43, %struct.cache_lfu_policy_item_** %6, align 8
  br label %48

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %23

48:                                               ; preds = %36, %23
  br label %49

49:                                               ; preds = %48, %2
  %50 = call i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_get_next_item)
  %51 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %52 = bitcast %struct.cache_lfu_policy_item_* %51 to %struct.cache_policy_item_*
  ret %struct.cache_policy_item_* %52
}

declare dso_local i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

declare dso_local %struct.cache_lfu_policy_item_* @TAILQ_NEXT(%struct.cache_lfu_policy_item_*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cache_lfu_policy_item_* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
