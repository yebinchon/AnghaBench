; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_lifetime_common_continue_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_lifetime_common_continue_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_common_entry_ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.cache_policy_item_ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_common_entry_*, %struct.cache_policy_item_*)* @cache_lifetime_common_continue_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_lifetime_common_continue_func(%struct.cache_common_entry_* %0, %struct.cache_policy_item_* %1) #0 {
  %3 = alloca %struct.cache_common_entry_*, align 8
  %4 = alloca %struct.cache_policy_item_*, align 8
  store %struct.cache_common_entry_* %0, %struct.cache_common_entry_** %3, align 8
  store %struct.cache_policy_item_* %1, %struct.cache_policy_item_** %4, align 8
  %5 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %6 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cache_policy_item_*, %struct.cache_policy_item_** %4, align 8
  %10 = getelementptr inbounds %struct.cache_policy_item_, %struct.cache_policy_item_* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %8, %12
  %14 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %3, align 8
  %15 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %13, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
