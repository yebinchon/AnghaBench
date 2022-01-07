; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_write_request_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_write_request_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.cache_mp_write_session_write_request = type { i32, i32 }
%struct.cache_mp_write_session_write_response = type { i32 }

@CET_MP_WRITE_SESSION_WRITE_RESPONSE = common dso_local global i32 0, align 4
@CELT_MULTIPART = common dso_local global i32 0, align 4
@on_mp_write_session_write_response_write1 = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_write_session_write_request_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_write_session_write_request_process(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  %3 = alloca %struct.cache_mp_write_session_write_request*, align 8
  %4 = alloca %struct.cache_mp_write_session_write_response*, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %5 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_write_session_write_request_process)
  %6 = load %struct.query_state*, %struct.query_state** %2, align 8
  %7 = getelementptr inbounds %struct.query_state, %struct.query_state* %6, i32 0, i32 6
  %8 = load i32, i32* @CET_MP_WRITE_SESSION_WRITE_RESPONSE, align 4
  %9 = call i32 @init_comm_element(i32* %7, i32 %8)
  %10 = load %struct.query_state*, %struct.query_state** %2, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 6
  %12 = call %struct.cache_mp_write_session_write_response* @get_cache_mp_write_session_write_response(i32* %11)
  store %struct.cache_mp_write_session_write_response* %12, %struct.cache_mp_write_session_write_response** %4, align 8
  %13 = load %struct.query_state*, %struct.query_state** %2, align 8
  %14 = getelementptr inbounds %struct.query_state, %struct.query_state* %13, i32 0, i32 5
  %15 = call %struct.cache_mp_write_session_write_request* @get_cache_mp_write_session_write_request(i32* %14)
  store %struct.cache_mp_write_session_write_request* %15, %struct.cache_mp_write_session_write_request** %3, align 8
  %16 = load %struct.query_state*, %struct.query_state** %2, align 8
  %17 = getelementptr inbounds %struct.query_state, %struct.query_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CELT_MULTIPART, align 4
  %20 = call i32 @configuration_lock_entry(i32 %18, i32 %19)
  %21 = load %struct.query_state*, %struct.query_state** %2, align 8
  %22 = getelementptr inbounds %struct.query_state, %struct.query_state* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.cache_mp_write_session_write_request*, %struct.cache_mp_write_session_write_request** %3, align 8
  %26 = getelementptr inbounds %struct.cache_mp_write_session_write_request, %struct.cache_mp_write_session_write_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cache_mp_write_session_write_request*, %struct.cache_mp_write_session_write_request** %3, align 8
  %29 = getelementptr inbounds %struct.cache_mp_write_session_write_request, %struct.cache_mp_write_session_write_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cache_mp_write(i32 %24, i32 %27, i32 %30)
  %32 = load %struct.cache_mp_write_session_write_response*, %struct.cache_mp_write_session_write_response** %4, align 8
  %33 = getelementptr inbounds %struct.cache_mp_write_session_write_response, %struct.cache_mp_write_session_write_response* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.query_state*, %struct.query_state** %2, align 8
  %35 = getelementptr inbounds %struct.query_state, %struct.query_state* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CELT_MULTIPART, align 4
  %38 = call i32 @configuration_unlock_entry(i32 %36, i32 %37)
  %39 = load %struct.query_state*, %struct.query_state** %2, align 8
  %40 = getelementptr inbounds %struct.query_state, %struct.query_state* %39, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load i32, i32* @on_mp_write_session_write_response_write1, align 4
  %42 = load %struct.query_state*, %struct.query_state** %2, align 8
  %43 = getelementptr inbounds %struct.query_state, %struct.query_state* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @EVFILT_WRITE, align 4
  %45 = load %struct.query_state*, %struct.query_state** %2, align 8
  %46 = getelementptr inbounds %struct.query_state, %struct.query_state* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_write_request_process)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_mp_write_session_write_response* @get_cache_mp_write_session_write_response(i32*) #1

declare dso_local %struct.cache_mp_write_session_write_request* @get_cache_mp_write_session_write_request(i32*) #1

declare dso_local i32 @configuration_lock_entry(i32, i32) #1

declare dso_local i32 @cache_mp_write(i32, i32, i32) #1

declare dso_local i32 @configuration_unlock_entry(i32, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
