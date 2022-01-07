; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_destroy_cache_lru_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_destroy_cache_lru_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_ = type { i32 }
%struct.cache_queue_policy_ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_cache_lru_policy(%struct.cache_policy_* %0) #0 {
  %2 = alloca %struct.cache_policy_*, align 8
  %3 = alloca %struct.cache_queue_policy_*, align 8
  store %struct.cache_policy_* %0, %struct.cache_policy_** %2, align 8
  %4 = call i32 @TRACE_IN(void (%struct.cache_policy_*)* @destroy_cache_lru_policy)
  %5 = load %struct.cache_policy_*, %struct.cache_policy_** %2, align 8
  %6 = bitcast %struct.cache_policy_* %5 to %struct.cache_queue_policy_*
  store %struct.cache_queue_policy_* %6, %struct.cache_queue_policy_** %3, align 8
  %7 = load %struct.cache_queue_policy_*, %struct.cache_queue_policy_** %3, align 8
  %8 = call i32 @destroy_cache_queue_policy(%struct.cache_queue_policy_* %7)
  %9 = call i32 @TRACE_OUT(void (%struct.cache_policy_*)* @destroy_cache_lru_policy)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_policy_*)*) #1

declare dso_local i32 @destroy_cache_queue_policy(%struct.cache_queue_policy_*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_policy_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
