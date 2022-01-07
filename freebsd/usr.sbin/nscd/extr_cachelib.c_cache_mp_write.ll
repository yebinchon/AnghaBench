; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_mp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_mp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_write_session_ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.cache_mp_data_item_ = type { i64, i32* }

@CET_MULTIPART = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_mp_write(%struct.cache_mp_write_session_* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_mp_write_session_*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cache_mp_data_item_*, align 8
  store %struct.cache_mp_write_session_* %0, %struct.cache_mp_write_session_** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i32 @TRACE_IN(i32 (%struct.cache_mp_write_session_*, i8*, i64)* @cache_mp_write)
  %10 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %11 = icmp ne %struct.cache_mp_write_session_* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %15 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %21 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CET_MULTIPART, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %32 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %40 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %46 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = call i32 @TRACE_OUT(i32 (%struct.cache_mp_write_session_*, i8*, i64)* @cache_mp_write)
  store i32 -1, i32* %4, align 4
  br label %86

51:                                               ; preds = %38, %3
  %52 = call %struct.cache_mp_data_item_* @calloc(i32 1, i32 16)
  store %struct.cache_mp_data_item_* %52, %struct.cache_mp_data_item_** %8, align 8
  %53 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %8, align 8
  %54 = icmp ne %struct.cache_mp_data_item_* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i32* @malloc(i64 %57)
  %59 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %8, align 8
  %60 = getelementptr inbounds %struct.cache_mp_data_item_, %struct.cache_mp_data_item_* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %8, align 8
  %62 = getelementptr inbounds %struct.cache_mp_data_item_, %struct.cache_mp_data_item_* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %8, align 8
  %68 = getelementptr inbounds %struct.cache_mp_data_item_, %struct.cache_mp_data_item_* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @memcpy(i32* %69, i8* %70, i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %8, align 8
  %75 = getelementptr inbounds %struct.cache_mp_data_item_, %struct.cache_mp_data_item_* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %77 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %76, i32 0, i32 1
  %78 = load %struct.cache_mp_data_item_*, %struct.cache_mp_data_item_** %8, align 8
  %79 = load i32, i32* @entries, align 4
  %80 = call i32 @TAILQ_INSERT_TAIL(i32* %77, %struct.cache_mp_data_item_* %78, i32 %79)
  %81 = load %struct.cache_mp_write_session_*, %struct.cache_mp_write_session_** %5, align 8
  %82 = getelementptr inbounds %struct.cache_mp_write_session_, %struct.cache_mp_write_session_* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = call i32 @TRACE_OUT(i32 (%struct.cache_mp_write_session_*, i8*, i64)* @cache_mp_write)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %51, %49
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @TRACE_IN(i32 (%struct.cache_mp_write_session_*, i8*, i64)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.cache_mp_write_session_*, i8*, i64)*) #1

declare dso_local %struct.cache_mp_data_item_* @calloc(i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cache_mp_data_item_*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
