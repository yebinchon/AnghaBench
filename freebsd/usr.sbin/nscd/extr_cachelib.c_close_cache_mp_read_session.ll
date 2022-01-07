; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_close_cache_mp_read_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_close_cache_mp_read_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_read_session_ = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32*, i32*, i32 }

@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_cache_mp_read_session(%struct.cache_mp_read_session_* %0) #0 {
  %2 = alloca %struct.cache_mp_read_session_*, align 8
  store %struct.cache_mp_read_session_* %0, %struct.cache_mp_read_session_** %2, align 8
  %3 = call i32 @TRACE_IN(void (%struct.cache_mp_read_session_*)* @close_cache_mp_read_session)
  %4 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %5 = icmp ne %struct.cache_mp_read_session_* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %9 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %15 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %19 = load i32, i32* @entries, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* %17, %struct.cache_mp_read_session_* %18, i32 %19)
  %21 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %22 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %28 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %1
  %34 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %35 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %42 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @destroy_cache_mp_write_session(i32* %45)
  %47 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %48 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %53 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32* %51, i32** %55, align 8
  %56 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %57 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %40, %33, %1
  %61 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  %62 = call i32 @destroy_cache_mp_read_session(%struct.cache_mp_read_session_* %61)
  %63 = call i32 @TRACE_OUT(void (%struct.cache_mp_read_session_*)* @close_cache_mp_read_session)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_mp_read_session_*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cache_mp_read_session_*, i32) #1

declare dso_local i32 @destroy_cache_mp_write_session(i32*) #1

declare dso_local i32 @destroy_cache_mp_read_session(%struct.cache_mp_read_session_*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_mp_read_session_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
