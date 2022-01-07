; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_destroy_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_destroy_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_ = type { i64, %struct.cache_* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_cache(%struct.cache_* %0) #0 {
  %2 = alloca %struct.cache_*, align 8
  %3 = alloca i64, align 8
  store %struct.cache_* %0, %struct.cache_** %2, align 8
  %4 = call i32 @TRACE_IN(void (%struct.cache_*)* @destroy_cache)
  %5 = load %struct.cache_*, %struct.cache_** %2, align 8
  %6 = icmp ne %struct.cache_* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.cache_*, %struct.cache_** %2, align 8
  %10 = getelementptr inbounds %struct.cache_, %struct.cache_* %9, i32 0, i32 1
  %11 = load %struct.cache_*, %struct.cache_** %10, align 8
  %12 = icmp ne %struct.cache_* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.cache_*, %struct.cache_** %2, align 8
  %17 = getelementptr inbounds %struct.cache_, %struct.cache_* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.cache_*, %struct.cache_** %2, align 8
  %22 = getelementptr inbounds %struct.cache_, %struct.cache_* %21, i32 0, i32 1
  %23 = load %struct.cache_*, %struct.cache_** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.cache_, %struct.cache_* %23, i64 %24
  %26 = bitcast %struct.cache_* %25 to { i64, %struct.cache_* }*
  %27 = getelementptr inbounds { i64, %struct.cache_* }, { i64, %struct.cache_* }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, %struct.cache_* }, { i64, %struct.cache_* }* %26, i32 0, i32 1
  %30 = load %struct.cache_*, %struct.cache_** %29, align 8
  %31 = call i32 @destroy_cache_entry(i64 %28, %struct.cache_* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.cache_*, %struct.cache_** %2, align 8
  %37 = getelementptr inbounds %struct.cache_, %struct.cache_* %36, i32 0, i32 1
  %38 = load %struct.cache_*, %struct.cache_** %37, align 8
  %39 = call i32 @free(%struct.cache_* %38)
  br label %40

40:                                               ; preds = %35, %1
  %41 = load %struct.cache_*, %struct.cache_** %2, align 8
  %42 = call i32 @free(%struct.cache_* %41)
  %43 = call i32 @TRACE_OUT(void (%struct.cache_*)* @destroy_cache)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.cache_*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @destroy_cache_entry(i64, %struct.cache_*) #1

declare dso_local i32 @free(%struct.cache_*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.cache_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
