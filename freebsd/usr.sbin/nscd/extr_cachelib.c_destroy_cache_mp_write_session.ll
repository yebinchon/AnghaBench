; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_destroy_cache_mp_write_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_destroy_cache_mp_write_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_write_session_ = type { %struct.cache_mp_write_session_*, i32 }
%struct.cache_mp_data_item_ = type { %struct.cache_mp_data_item_*, i32 }

@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_mp_write_session_*)* @destroy_cache_mp_write_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_cache_mp_write_session(%struct.cache_mp_write_session_* %0) #0 {
  %2 = alloca %struct.cache_mp_write_session_*, align 8
  %3 = alloca %struct.cache_mp_data_item_*, align 8
  store %struct.cache_mp_write_session_* %0, %struct.cache_mp_write_session_** %2, align 8
  %4 = call i32 @TRACE_IN(void (%struct.cache_mp_write_session_*)* @destroy_cache_mp_write_session)
  %5 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %6 = icmp ne %struct.cache_mp_write_session_* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %11 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %10, i32 0, i32 1
  %12 = call i32 @TAILQ_EMPTY(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %17 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %16, i32 0, i32 1
  %18 = call %struct.cache_mp_write_session_* @TAILQ_FIRST(i32* %17)
  %19 = bitcast %struct.cache_mp_write_session_* %18 to %struct.cache_mp_data_item_*
  store %struct.cache_mp_data_item_* %19, %struct.cache_mp_data_item_** %3, align 8
  %20 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %21 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %20, i32 0, i32 1
  %22 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %3, align 8
  %23 = bitcast %struct.cache_mp_data_item_* %22 to %struct.cache_mp_write_session_*
  %24 = load i32, i32* @entries, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %21, %struct.cache_mp_write_session_* %23, i32 %24)
  %26 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %3, align 8
  %27 = getelementptr inbounds %struct.cache_mp_data_item_, %struct.cache_mp_data_item_* %26, i32 0, i32 0
  %28 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %27, align 8
  %29 = bitcast %struct.cache_mp_data_item_* %28 to %struct.cache_mp_write_session_*
  %30 = call i32 @free(%struct.cache_mp_write_session_* %29)
  %31 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %3, align 8
  %32 = bitcast %struct.cache_mp_data_item_* %31 to %struct.cache_mp_write_session_*
  %33 = call i32 @free(%struct.cache_mp_write_session_* %32)
  br label %9

34:                                               ; preds = %9
  %35 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %36 = call i32 @free(%struct.cache_mp_write_session_* %35)
  %37 = call i32 @TRACE_OUT(void (%struct.cache_mp_write_session_*)* @destroy_cache_mp_write_session)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_mp_write_session_*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cache_mp_write_session_* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cache_mp_write_session_*, i32) #1

declare dso_local i32 @free(%struct.cache_mp_write_session_*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_mp_write_session_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
