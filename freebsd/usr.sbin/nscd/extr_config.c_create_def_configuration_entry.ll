; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_create_def_configuration_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_create_def_configuration_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i32 }
%struct.common_cache_entry_params = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mp_cache_entry_params = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32, i32 }

@CET_COMMON = common dso_local global i32 0, align 4
@DEFAULT_CACHE_HT_SIZE = common dso_local global i32 0, align 4
@DEFAULT_POSITIVE_ELEMENTS_SIZE = common dso_local global i32 0, align 4
@DEFAULT_POSITIVE_LIFETIME = common dso_local global i32 0, align 4
@DEFAULT_POSITIVE_CONF_THRESH = common dso_local global i32 0, align 4
@CPT_LRU = common dso_local global i32 0, align 4
@DEFAULT_NEGATIVE_ELEMENTS_SIZE = common dso_local global i32 0, align 4
@DEFAULT_NEGATIVE_LIFETIME = common dso_local global i32 0, align 4
@DEFAULT_NEGATIVE_CONF_THRESH = common dso_local global i32 0, align 4
@CPT_FIFO = common dso_local global i32 0, align 4
@DEFAULT_COMMON_ENTRY_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_MP_ENTRY_TIMEOUT = common dso_local global i32 0, align 4
@CET_MULTIPART = common dso_local global i32 0, align 4
@DEFAULT_MULTIPART_ELEMENTS_SIZE = common dso_local global i32 0, align 4
@DEFAULT_MULITPART_SESSIONS_SIZE = common dso_local global i32 0, align 4
@DEFAULT_MULITPART_LIFETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.configuration_entry* @create_def_configuration_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.common_cache_entry_params, align 4
  %4 = alloca %struct.common_cache_entry_params, align 4
  %5 = alloca %struct.mp_cache_entry_params, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.configuration_entry*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.configuration_entry* null, %struct.configuration_entry** %8, align 8
  %9 = call i32 @TRACE_IN(%struct.configuration_entry* (i8*)* @create_def_configuration_entry)
  %10 = bitcast %struct.common_cache_entry_params* %3 to %struct.timeval*
  %11 = call i32 @memset(%struct.timeval* %10, i32 0, i32 36)
  %12 = load i32, i32* @CET_COMMON, align 4
  %13 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %3, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DEFAULT_CACHE_HT_SIZE, align 4
  %16 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %3, i32 0, i32 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @DEFAULT_POSITIVE_ELEMENTS_SIZE, align 4
  %18 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @DEFAULT_POSITIVE_ELEMENTS_SIZE, align 4
  %20 = sdiv i32 %19, 2
  %21 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @DEFAULT_POSITIVE_LIFETIME, align 4
  %23 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %3, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @DEFAULT_POSITIVE_CONF_THRESH, align 4
  %26 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %3, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @CPT_LRU, align 4
  %28 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %3, i32 0, i32 6
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.common_cache_entry_params* %4 to %struct.timeval*
  %30 = bitcast %struct.common_cache_entry_params* %3 to %struct.timeval*
  %31 = call i32 @memcpy(%struct.timeval* %29, %struct.timeval* %30, i32 36)
  %32 = load i32, i32* @DEFAULT_NEGATIVE_ELEMENTS_SIZE, align 4
  %33 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @DEFAULT_NEGATIVE_ELEMENTS_SIZE, align 4
  %35 = sdiv i32 %34, 2
  %36 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %4, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @DEFAULT_NEGATIVE_LIFETIME, align 4
  %38 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %4, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DEFAULT_NEGATIVE_CONF_THRESH, align 4
  %41 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %4, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @CPT_FIFO, align 4
  %43 = getelementptr inbounds %struct.common_cache_entry_params, %struct.common_cache_entry_params* %4, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = call i32 @memset(%struct.timeval* %6, i32 0, i32 36)
  %45 = load i32, i32* @DEFAULT_COMMON_ENTRY_TIMEOUT, align 4
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 5
  store i32 %45, i32* %46, align 4
  %47 = call i32 @memset(%struct.timeval* %7, i32 0, i32 36)
  %48 = load i32, i32* @DEFAULT_MP_ENTRY_TIMEOUT, align 4
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 5
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.mp_cache_entry_params* %5 to %struct.timeval*
  %51 = call i32 @memset(%struct.timeval* %50, i32 0, i32 36)
  %52 = load i32, i32* @CET_MULTIPART, align 4
  %53 = getelementptr inbounds %struct.mp_cache_entry_params, %struct.mp_cache_entry_params* %5, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @DEFAULT_MULTIPART_ELEMENTS_SIZE, align 4
  %56 = getelementptr inbounds %struct.mp_cache_entry_params, %struct.mp_cache_entry_params* %5, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @DEFAULT_MULITPART_SESSIONS_SIZE, align 4
  %58 = getelementptr inbounds %struct.mp_cache_entry_params, %struct.mp_cache_entry_params* %5, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @DEFAULT_MULITPART_LIFETIME, align 4
  %60 = getelementptr inbounds %struct.mp_cache_entry_params, %struct.mp_cache_entry_params* %5, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %2, align 8
  %63 = bitcast %struct.common_cache_entry_params* %3 to %struct.timeval*
  %64 = bitcast %struct.common_cache_entry_params* %4 to %struct.timeval*
  %65 = bitcast %struct.mp_cache_entry_params* %5 to %struct.timeval*
  %66 = call %struct.configuration_entry* @create_configuration_entry(i8* %62, %struct.timeval* %6, %struct.timeval* %7, %struct.timeval* %63, %struct.timeval* %64, %struct.timeval* %65)
  store %struct.configuration_entry* %66, %struct.configuration_entry** %8, align 8
  %67 = call i32 @TRACE_OUT(%struct.configuration_entry* (i8*)* @create_def_configuration_entry)
  %68 = load %struct.configuration_entry*, %struct.configuration_entry** %8, align 8
  ret %struct.configuration_entry* %68
}

declare dso_local i32 @TRACE_IN(%struct.configuration_entry* (i8*)*) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local %struct.configuration_entry* @create_configuration_entry(i8*, %struct.timeval*, %struct.timeval*, %struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @TRACE_OUT(%struct.configuration_entry* (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
