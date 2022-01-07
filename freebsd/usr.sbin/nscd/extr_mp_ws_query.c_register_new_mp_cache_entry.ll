; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_register_new_mp_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_register_new_mp_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.cache_entry_params = type { i32 }

@INVALID_CACHE_ENTRY = common dso_local global i32 0, align 4
@CELT_MULTIPART = common dso_local global i32 0, align 4
@s_configuration = common dso_local global i32 0, align 4
@s_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_new_mp_cache_entry(%struct.query_state* %0, i8* %1) #0 {
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @TRACE_IN(i32 (%struct.query_state*, i8*)* @register_new_mp_cache_entry)
  %8 = load i32, i32* @INVALID_CACHE_ENTRY, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.query_state*, %struct.query_state** %3, align 8
  %10 = getelementptr inbounds %struct.query_state, %struct.query_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = load i32, i32* @CELT_MULTIPART, align 4
  %13 = call i32 @configuration_lock_entry(%struct.TYPE_8__* %11, i32 %12)
  %14 = load i32, i32* @s_configuration, align 4
  %15 = call i32 @configuration_lock_wrlock(i32 %14)
  %16 = load %struct.query_state*, %struct.query_state** %3, align 8
  %17 = getelementptr inbounds %struct.query_state, %struct.query_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.query_state*, %struct.query_state** %3, align 8
  %25 = getelementptr inbounds %struct.query_state, %struct.query_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %23, i8** %29, align 8
  %30 = load i32, i32* @s_cache, align 4
  %31 = load %struct.query_state*, %struct.query_state** %3, align 8
  %32 = getelementptr inbounds %struct.query_state, %struct.query_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = bitcast %struct.TYPE_7__* %34 to %struct.cache_entry_params*
  %36 = call i32 @register_cache_entry(i32 %30, %struct.cache_entry_params* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.query_state*, %struct.query_state** %3, align 8
  %39 = getelementptr inbounds %struct.query_state, %struct.query_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i8* %37, i8** %43, align 8
  %44 = load i32, i32* @s_configuration, align 4
  %45 = call i32 @configuration_unlock(i32 %44)
  %46 = load i32, i32* @s_configuration, align 4
  %47 = call i32 @configuration_lock_rdlock(i32 %46)
  %48 = load i32, i32* @s_cache, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @find_cache_entry(i32 %48, i8* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @s_configuration, align 4
  %52 = call i32 @configuration_unlock(i32 %51)
  %53 = load %struct.query_state*, %struct.query_state** %3, align 8
  %54 = getelementptr inbounds %struct.query_state, %struct.query_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @configuration_entry_add_mp_cache_entry(%struct.TYPE_8__* %55, i32 %56)
  %58 = load %struct.query_state*, %struct.query_state** %3, align 8
  %59 = getelementptr inbounds %struct.query_state, %struct.query_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* @CELT_MULTIPART, align 4
  %62 = call i32 @configuration_unlock_entry(%struct.TYPE_8__* %60, i32 %61)
  %63 = call i32 @TRACE_OUT(i32 (%struct.query_state*, i8*)* @register_new_mp_cache_entry)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*, i8*)*) #1

declare dso_local i32 @configuration_lock_entry(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @configuration_lock_wrlock(i32) #1

declare dso_local i32 @register_cache_entry(i32, %struct.cache_entry_params*) #1

declare dso_local i32 @configuration_unlock(i32) #1

declare dso_local i32 @configuration_lock_rdlock(i32) #1

declare dso_local i32 @find_cache_entry(i32, i8*) #1

declare dso_local i32 @configuration_entry_add_mp_cache_entry(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @configuration_unlock_entry(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
