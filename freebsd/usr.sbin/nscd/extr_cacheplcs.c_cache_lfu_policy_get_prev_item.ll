; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_prev_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_prev_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_ = type { i32 }
%struct.cache_policy_item_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32* }
%struct.cache_lfu_policy_item_ = type { i32 }

@cache_lfu_policy_group_ = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_get_prev_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_policy_item_* @cache_lfu_policy_get_prev_item(%struct.cache_policy_* %0, %struct.cache_policy_item_* %1) #0 {
  %3 = alloca %struct.cache_policy_*, align 8
  %4 = alloca %struct.cache_policy_item_*, align 8
  %5 = alloca %struct.cache_lfu_policy_*, align 8
  %6 = alloca %struct.cache_lfu_policy_item_*, align 8
  %7 = alloca i32, align 4
  store %struct.cache_policy_* %0, %struct.cache_policy_** %3, align 8
  store %struct.cache_policy_item_* %1, %struct.cache_policy_item_** %4, align 8
  %8 = call i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_get_prev_item)
  %9 = load %struct.cache_policy_*, %struct.cache_policy_** %3, align 8
  %10 = bitcast %struct.cache_policy_* %9 to %struct.cache_lfu_policy_*
  store %struct.cache_lfu_policy_* %10, %struct.cache_lfu_policy_** %5, align 8
  %11 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %12 = bitcast %struct.cache_policy_item_* %11 to %struct.cache_lfu_policy_item_*
  %13 = load i32, i32* @cache_lfu_policy_group_, align 4
  %14 = load i32, i32* @entries, align 4
  %15 = call %struct.cache_lfu_policy_item_* @TAILQ_PREV(%struct.cache_lfu_policy_item_* %12, i32 %13, i32 %14)
  store %struct.cache_lfu_policy_item_* %15, %struct.cache_lfu_policy_item_** %6, align 8
  %16 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %17 = icmp eq %struct.cache_lfu_policy_item_* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %20 = bitcast %struct.cache_policy_item_* %19 to %struct.cache_lfu_policy_item_*
  %21 = getelementptr inbounds %struct.cache_lfu_policy_item_, %struct.cache_lfu_policy_item_* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %46, %18
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %5, align 8
  %29 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @TAILQ_EMPTY(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %5, align 8
  %38 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* @cache_lfu_policy_group_, align 4
  %44 = call %struct.cache_lfu_policy_item_* @TAILQ_LAST(i32* %42, i32 %43)
  store %struct.cache_lfu_policy_item_* %44, %struct.cache_lfu_policy_item_** %6, align 8
  br label %49

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  br label %24

49:                                               ; preds = %36, %24
  br label %50

50:                                               ; preds = %49, %2
  %51 = call i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)* @cache_lfu_policy_get_prev_item)
  %52 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %6, align 8
  %53 = bitcast %struct.cache_lfu_policy_item_* %52 to %struct.cache_policy_item_*
  ret %struct.cache_policy_item_* %53
}

declare dso_local i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

declare dso_local %struct.cache_lfu_policy_item_* @TAILQ_PREV(%struct.cache_lfu_policy_item_*, i32, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cache_lfu_policy_item_* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*, %struct.cache_policy_item_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
