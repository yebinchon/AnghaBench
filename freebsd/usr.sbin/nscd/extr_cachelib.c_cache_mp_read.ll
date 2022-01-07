; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_mp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_cache_mp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_read_session_ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_mp_read(%struct.cache_mp_read_session_* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_mp_read_session_*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.cache_mp_read_session_* %0, %struct.cache_mp_read_session_** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = call i32 @TRACE_IN(i32 (%struct.cache_mp_read_session_*, i8*, i64*)* @cache_mp_read)
  %9 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %10 = icmp ne %struct.cache_mp_read_session_* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %14 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @TRACE_OUT(i32 (%struct.cache_mp_read_session_*, i8*, i64*)* @cache_mp_read)
  store i32 -1, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %21 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %30 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 @TRACE_OUT(i32 (%struct.cache_mp_read_session_*, i8*, i64*)* @cache_mp_read)
  store i32 0, i32* %4, align 4
  br label %68

39:                                               ; preds = %28
  %40 = call i32 @TRACE_OUT(i32 (%struct.cache_mp_read_session_*, i8*, i64*)* @cache_mp_read)
  store i32 -2, i32* %4, align 4
  br label %68

41:                                               ; preds = %19
  %42 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %43 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %50 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %55 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i8* %48, i32 %53, i64 %58)
  %60 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %61 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* @entries, align 4
  %64 = call %struct.TYPE_3__* @TAILQ_NEXT(%struct.TYPE_3__* %62, i32 %63)
  %65 = load %struct.cache_mp_read_session_*, %struct.cache_mp_read_session_** %5, align 8
  %66 = getelementptr inbounds %struct.cache_mp_read_session_, %struct.cache_mp_read_session_* %65, i32 0, i32 0
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = call i32 @TRACE_OUT(i32 (%struct.cache_mp_read_session_*, i8*, i64*)* @cache_mp_read)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %41, %39, %37, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @TRACE_IN(i32 (%struct.cache_mp_read_session_*, i8*, i64*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.cache_mp_read_session_*, i8*, i64*)*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local %struct.TYPE_3__* @TAILQ_NEXT(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
