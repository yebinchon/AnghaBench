; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_open_cache_mp_write_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_open_cache_mp_write_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_write_session_ = type { %struct.cache_mp_entry_*, i32 }
%struct.cache_mp_entry_ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cache_entry_ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CET_MULTIPART = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_mp_write_session_* @open_cache_mp_write_session(%struct.cache_entry_* %0) #0 {
  %2 = alloca %struct.cache_mp_write_session_*, align 8
  %3 = alloca %struct.cache_entry_*, align 8
  %4 = alloca %struct.cache_mp_entry_*, align 8
  %5 = alloca %struct.cache_mp_write_session_*, align 8
  store %struct.cache_entry_* %0, %struct.cache_entry_** %3, align 8
  %6 = call i32 @TRACE_IN(%struct.cache_mp_write_session_* (%struct.cache_entry_*)* @open_cache_mp_write_session)
  %7 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  %8 = icmp ne %struct.cache_entry_* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  %12 = getelementptr inbounds %struct.cache_entry_, %struct.cache_entry_* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CET_MULTIPART, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  %21 = bitcast %struct.cache_entry_* %20 to %struct.cache_mp_entry_*
  store %struct.cache_mp_entry_* %21, %struct.cache_mp_entry_** %4, align 8
  %22 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %23 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %29 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %32 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 @TRACE_OUT(%struct.cache_mp_write_session_* (%struct.cache_entry_*)* @open_cache_mp_write_session)
  store %struct.cache_mp_write_session_* null, %struct.cache_mp_write_session_** %2, align 8
  br label %61

38:                                               ; preds = %27, %1
  %39 = call %struct.cache_mp_write_session_* @calloc(i32 1, i32 16)
  store %struct.cache_mp_write_session_* %39, %struct.cache_mp_write_session_** %5, align 8
  %40 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %41 = icmp ne %struct.cache_mp_write_session_* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %45 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %44, i32 0, i32 1
  %46 = call i32 @TAILQ_INIT(i32* %45)
  %47 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %48 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %49 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %48, i32 0, i32 0
  store %struct.cache_mp_entry_* %47, %struct.cache_mp_entry_** %49, align 8
  %50 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %51 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %50, i32 0, i32 1
  %52 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %53 = load i32, i32* @entries, align 4
  %54 = call i32 @TAILQ_INSERT_HEAD(i32* %51, %struct.cache_mp_write_session_* %52, i32 %53)
  %55 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %56 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = call i32 @TRACE_OUT(%struct.cache_mp_write_session_* (%struct.cache_entry_*)* @open_cache_mp_write_session)
  %60 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  store %struct.cache_mp_write_session_* %60, %struct.cache_mp_write_session_** %2, align 8
  br label %61

61:                                               ; preds = %38, %36
  %62 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  ret %struct.cache_mp_write_session_* %62
}

declare dso_local i32 @TRACE_IN(%struct.cache_mp_write_session_* (%struct.cache_entry_*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_mp_write_session_* (%struct.cache_entry_*)*) #1

declare dso_local %struct.cache_mp_write_session_* @calloc(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.cache_mp_write_session_*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
