; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_init_cache_.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_init_cache_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32 }
%struct.cache_params = type { i32 }
%struct.configuration_entry = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cache_entry_params = type { i32 }

@get_time_func = common dso_local global i32 0, align 4
@INVALID_CACHE_ENTRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cache was successfully initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.configuration*)* @init_cache_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cache_(%struct.configuration* %0) #0 {
  %2 = alloca %struct.configuration*, align 8
  %3 = alloca %struct.cache_params, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.configuration_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.configuration* %0, %struct.configuration** %2, align 8
  %9 = call i32 @TRACE_IN(i32 (%struct.configuration*)* @init_cache_)
  %10 = call i32 @memset(%struct.cache_params* %3, i32 0, i32 4)
  %11 = load i32, i32* @get_time_func, align 4
  %12 = getelementptr inbounds %struct.cache_params, %struct.cache_params* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = call i32 @init_cache(%struct.cache_params* %3)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.configuration*, %struct.configuration** %2, align 8
  %15 = call i64 @configuration_get_entries_size(%struct.configuration* %14)
  store i64 %15, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %68, %1
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %16
  %21 = load %struct.configuration*, %struct.configuration** %2, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.configuration_entry* @configuration_get_entry(%struct.configuration* %21, i64 %22)
  store %struct.configuration_entry* %23, %struct.configuration_entry** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %26 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %25, i32 0, i32 3
  %27 = bitcast %struct.TYPE_6__* %26 to %struct.cache_entry_params*
  %28 = call i32 @register_cache_entry(i32 %24, %struct.cache_entry_params* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %31 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @find_cache_entry(i32 %29, i32 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %38 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %40 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INVALID_CACHE_ENTRY, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %48 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %47, i32 0, i32 2
  %49 = bitcast %struct.TYPE_8__* %48 to %struct.cache_entry_params*
  %50 = call i32 @register_cache_entry(i32 %46, %struct.cache_entry_params* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %53 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @find_cache_entry(i32 %51, i32 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %60 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %62 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INVALID_CACHE_ENTRY, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %20
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %16

71:                                               ; preds = %16
  %72 = call i32 @LOG_MSG_2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @TRACE_OUT(i32 (%struct.configuration*)* @init_cache_)
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @TRACE_IN(i32 (%struct.configuration*)*) #1

declare dso_local i32 @memset(%struct.cache_params*, i32, i32) #1

declare dso_local i32 @init_cache(%struct.cache_params*) #1

declare dso_local i64 @configuration_get_entries_size(%struct.configuration*) #1

declare dso_local %struct.configuration_entry* @configuration_get_entry(%struct.configuration*, i64) #1

declare dso_local i32 @register_cache_entry(i32, %struct.cache_entry_params*) #1

declare dso_local i8* @find_cache_entry(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LOG_MSG_2(i8*, i8*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.configuration*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
