; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_abandon_cache_mp_write_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_abandon_cache_mp_write_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_write_session_ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CET_MULTIPART = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abandon_cache_mp_write_session(%struct.cache_mp_write_session_* %0) #0 {
  %2 = alloca %struct.cache_mp_write_session_*, align 8
  store %struct.cache_mp_write_session_* %0, %struct.cache_mp_write_session_** %2, align 8
  %3 = call i32 @TRACE_IN(void (%struct.cache_mp_write_session_*)* @abandon_cache_mp_write_session)
  %4 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %5 = icmp ne %struct.cache_mp_write_session_* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %9 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %15 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CET_MULTIPART, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %26 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %30 = load i32, i32* @entries, align 4
  %31 = call i32 @TAILQ_REMOVE(i32* %28, %struct.cache_mp_write_session_* %29, i32 %30)
  %32 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %33 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %2, align 8
  %39 = call i32 @destroy_cache_mp_write_session(%struct.cache_mp_write_session_* %38)
  %40 = call i32 @TRACE_OUT(void (%struct.cache_mp_write_session_*)* @abandon_cache_mp_write_session)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_mp_write_session_*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cache_mp_write_session_*, i32) #1

declare dso_local i32 @destroy_cache_mp_write_session(%struct.cache_mp_write_session_*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_mp_write_session_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
