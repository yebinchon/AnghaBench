; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_unregister_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_unregister_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_ = type { i64, %struct.cache_entry_** }
%struct.cache_entry_ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_cache_entry(%struct.cache_* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cache_entry_**, align 8
  store %struct.cache_* %0, %struct.cache_** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @TRACE_IN(i32 (%struct.cache_*, i8*)* @unregister_cache_entry)
  %8 = load %struct.cache_*, %struct.cache_** %4, align 8
  %9 = icmp ne %struct.cache_* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.cache_*, %struct.cache_** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.cache_entry_** @find_cache_entry_p(%struct.cache_* %12, i8* %13)
  store %struct.cache_entry_** %14, %struct.cache_entry_*** %6, align 8
  %15 = load %struct.cache_entry_**, %struct.cache_entry_*** %6, align 8
  %16 = icmp ne %struct.cache_entry_** %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.cache_entry_**, %struct.cache_entry_*** %6, align 8
  %19 = load %struct.cache_entry_*, %struct.cache_entry_** %18, align 8
  %20 = call i32 @destroy_cache_entry(%struct.cache_entry_* %19)
  %21 = load %struct.cache_*, %struct.cache_** %4, align 8
  %22 = getelementptr inbounds %struct.cache_, %struct.cache_* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.cache_entry_**, %struct.cache_entry_*** %6, align 8
  %26 = load %struct.cache_entry_**, %struct.cache_entry_*** %6, align 8
  %27 = getelementptr inbounds %struct.cache_entry_*, %struct.cache_entry_** %26, i64 1
  %28 = load %struct.cache_*, %struct.cache_** %4, align 8
  %29 = getelementptr inbounds %struct.cache_, %struct.cache_* %28, i32 0, i32 1
  %30 = load %struct.cache_entry_**, %struct.cache_entry_*** %29, align 8
  %31 = load %struct.cache_*, %struct.cache_** %4, align 8
  %32 = getelementptr inbounds %struct.cache_, %struct.cache_* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds %struct.cache_entry_*, %struct.cache_entry_** %30, i64 %34
  %36 = load %struct.cache_entry_**, %struct.cache_entry_*** %6, align 8
  %37 = ptrtoint %struct.cache_entry_** %35 to i64
  %38 = ptrtoint %struct.cache_entry_** %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memmove(%struct.cache_entry_** %25, %struct.cache_entry_** %27, i32 %42)
  %44 = call i32 @TRACE_OUT(i32 (%struct.cache_*, i8*)* @unregister_cache_entry)
  store i32 0, i32* %3, align 4
  br label %47

45:                                               ; preds = %2
  %46 = call i32 @TRACE_OUT(i32 (%struct.cache_*, i8*)* @unregister_cache_entry)
  store i32 -1, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @TRACE_IN(i32 (%struct.cache_*, i8*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.cache_entry_** @find_cache_entry_p(%struct.cache_*, i8*) #1

declare dso_local i32 @destroy_cache_entry(%struct.cache_entry_*) #1

declare dso_local i32 @memmove(%struct.cache_entry_**, %struct.cache_entry_**, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.cache_*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
