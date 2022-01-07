; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_destroy_cache_queue_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_destroy_cache_queue_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_queue_policy_ = type { i32 }
%struct.cache_queue_policy_item_ = type { i32 }
%struct.cache_policy_item_ = type { i32 }

@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_queue_policy_*)* @destroy_cache_queue_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_cache_queue_policy(%struct.cache_queue_policy_* %0) #0 {
  %2 = alloca %struct.cache_queue_policy_*, align 8
  %3 = alloca %struct.cache_queue_policy_item_*, align 8
  store %struct.cache_queue_policy_* %0, %struct.cache_queue_policy_** %2, align 8
  %4 = call i32 @TRACE_IN(void (%struct.cache_queue_policy_*)* @destroy_cache_queue_policy)
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %2, align 8
  %7 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %6, i32 0, i32 0
  %8 = call i32 @TAILQ_EMPTY(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %2, align 8
  %13 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %12, i32 0, i32 0
  %14 = call %struct.cache_queue_policy_item_* @TAILQ_FIRST(i32* %13)
  store %struct.cache_queue_policy_item_* %14, %struct.cache_queue_policy_item_** %3, align 8
  %15 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %2, align 8
  %16 = getelementptr inbounds %struct.cache_queue_policy_, %struct.cache_queue_policy_* %15, i32 0, i32 0
  %17 = load %struct.cache_queue_policy_item_*, %struct.cache_queue_policy_item_** %3, align 8
  %18 = load i32, i32* @entries, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.cache_queue_policy_item_* %17, i32 %18)
  %20 = load %struct.cache_queue_policy_item_*, %struct.cache_queue_policy_item_** %3, align 8
  %21 = bitcast %struct.cache_queue_policy_item_* %20 to %struct.cache_policy_item_*
  %22 = call i32 @cache_queue_policy_destroy_item(%struct.cache_policy_item_* %21)
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %2, align 8
  %25 = call i32 @free(%struct.cache_queue_policy_* %24)
  %26 = call i32 @TRACE_OUT(void (%struct.cache_queue_policy_*)* @destroy_cache_queue_policy)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_queue_policy_*)*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cache_queue_policy_item_* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cache_queue_policy_item_*, i32) #1

declare dso_local i32 @cache_queue_policy_destroy_item(%struct.cache_policy_item_*) #1

declare dso_local i32 @free(%struct.cache_queue_policy_*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_queue_policy_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
