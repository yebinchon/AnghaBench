; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_open_cache_mp_read_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_open_cache_mp_read_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_read_session_ = type { i32, %struct.cache_mp_entry_* }
%struct.cache_mp_entry_ = type { %struct.TYPE_10__, i32 (%struct.TYPE_10__*)*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.cache_entry_ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@CET_MULTIPART = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_mp_read_session_* @open_cache_mp_read_session(%struct.cache_entry_* %0) #0 {
  %2 = alloca %struct.cache_mp_read_session_*, align 8
  %3 = alloca %struct.cache_entry_*, align 8
  %4 = alloca %struct.cache_mp_entry_*, align 8
  %5 = alloca %struct.cache_mp_read_session_*, align 8
  store %struct.cache_entry_* %0, %struct.cache_entry_** %3, align 8
  %6 = call i32 @TRACE_IN(%struct.cache_mp_read_session_* (%struct.cache_entry_*)* @open_cache_mp_read_session)
  %7 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  %8 = icmp ne %struct.cache_entry_* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  %12 = getelementptr inbounds %struct.cache_entry_, %struct.cache_entry_* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CET_MULTIPART, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  %21 = bitcast %struct.cache_entry_* %20 to %struct.cache_mp_entry_*
  store %struct.cache_mp_entry_* %21, %struct.cache_mp_entry_** %4, align 8
  %22 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %23 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %22, i32 0, i32 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 @TRACE_OUT(%struct.cache_mp_read_session_* (%struct.cache_entry_*)* @open_cache_mp_read_session)
  store %struct.cache_mp_read_session_* null, %struct.cache_mp_read_session_** %2, align 8
  br label %96

28:                                               ; preds = %1
  %29 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %30 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %37 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %35, %28
  %43 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %44 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %48 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %46, %50
  %52 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %53 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load %struct.cache_entry_*, %struct.cache_entry_** %3, align 8
  %60 = call i32 @flush_cache_entry(%struct.cache_entry_* %59)
  %61 = call i32 @TRACE_OUT(%struct.cache_mp_read_session_* (%struct.cache_entry_*)* @open_cache_mp_read_session)
  store %struct.cache_mp_read_session_* null, %struct.cache_mp_read_session_** %2, align 8
  br label %96

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %35
  %64 = call %struct.cache_mp_read_session_* @calloc(i32 1, i32 16)
  store %struct.cache_mp_read_session_* %64, %struct.cache_mp_read_session_** %5, align 8
  %65 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %66 = icmp ne %struct.cache_mp_read_session_* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %70 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %71 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %70, i32 0, i32 1
  store %struct.cache_mp_entry_* %69, %struct.cache_mp_entry_** %71, align 8
  %72 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %73 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %72, i32 0, i32 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = call i32 @TAILQ_FIRST(i32* %75)
  %77 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %78 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %80 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %79, i32 0, i32 3
  %81 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %82 = load i32, i32* @entries, align 4
  %83 = call i32 @TAILQ_INSERT_HEAD(i32* %80, %struct.cache_mp_read_session_* %81, i32 %82)
  %84 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %85 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %89 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %88, i32 0, i32 1
  %90 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %89, align 8
  %91 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %4, align 8
  %92 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %91, i32 0, i32 0
  %93 = call i32 %90(%struct.TYPE_10__* %92)
  %94 = call i32 @TRACE_OUT(%struct.cache_mp_read_session_* (%struct.cache_entry_*)* @open_cache_mp_read_session)
  %95 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  store %struct.cache_mp_read_session_* %95, %struct.cache_mp_read_session_** %2, align 8
  br label %96

96:                                               ; preds = %63, %58, %26
  %97 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %2, align 8
  ret %struct.cache_mp_read_session_* %97
}

declare dso_local i32 @TRACE_IN(%struct.cache_mp_read_session_* (%struct.cache_entry_*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_mp_read_session_* (%struct.cache_entry_*)*) #1

declare dso_local i32 @flush_cache_entry(%struct.cache_entry_*) #1

declare dso_local %struct.cache_mp_read_session_* @calloc(i32, i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.cache_mp_read_session_*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
