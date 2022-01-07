; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_read_request_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_read_request_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32, i32, i32, i64, i32 }
%struct.cache_mp_read_session_read_response = type { i64, i32, i32* }

@on_mp_read_session_response_process = common dso_local global i32 0, align 4
@CET_MP_READ_SESSION_READ_RESPONSE = common dso_local global i32 0, align 4
@CELT_MULTIPART = common dso_local global i32 0, align 4
@on_mp_read_session_read_response_write1 = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_read_session_read_request_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_read_session_read_request_process(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  %3 = alloca %struct.cache_mp_read_session_read_response*, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %4 = load i32, i32* @on_mp_read_session_response_process, align 4
  %5 = call i32 @TRACE_IN(i32 %4)
  %6 = load %struct.query_state*, %struct.query_state** %2, align 8
  %7 = getelementptr inbounds %struct.query_state, %struct.query_state* %6, i32 0, i32 5
  %8 = load i32, i32* @CET_MP_READ_SESSION_READ_RESPONSE, align 4
  %9 = call i32 @init_comm_element(i32* %7, i32 %8)
  %10 = load %struct.query_state*, %struct.query_state** %2, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 5
  %12 = call %struct.cache_mp_read_session_read_response* @get_cache_mp_read_session_read_response(i32* %11)
  store %struct.cache_mp_read_session_read_response* %12, %struct.cache_mp_read_session_read_response** %3, align 8
  %13 = load %struct.query_state*, %struct.query_state** %2, align 8
  %14 = getelementptr inbounds %struct.query_state, %struct.query_state* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CELT_MULTIPART, align 4
  %17 = call i32 @configuration_lock_entry(i32 %15, i32 %16)
  %18 = load %struct.query_state*, %struct.query_state** %2, align 8
  %19 = getelementptr inbounds %struct.query_state, %struct.query_state* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %23 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %22, i32 0, i32 1
  %24 = call i8* @cache_mp_read(i32 %21, i32* null, i32* %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %27 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %29 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %1
  %33 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %34 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @malloc(i32 %35)
  %37 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %38 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %40 = icmp ne %struct.cache_mp_read_session_read_response* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.query_state*, %struct.query_state** %2, align 8
  %44 = getelementptr inbounds %struct.query_state, %struct.query_state* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %48 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %51 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %50, i32 0, i32 1
  %52 = call i8* @cache_mp_read(i32 %46, i32* %49, i32* %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %55 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %32, %1
  %57 = load %struct.query_state*, %struct.query_state** %2, align 8
  %58 = getelementptr inbounds %struct.query_state, %struct.query_state* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CELT_MULTIPART, align 4
  %61 = call i32 @configuration_unlock_entry(i32 %59, i32 %60)
  %62 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %3, align 8
  %63 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.query_state*, %struct.query_state** %2, align 8
  %68 = getelementptr inbounds %struct.query_state, %struct.query_state* %67, i32 0, i32 0
  store i32 12, i32* %68, align 8
  br label %72

69:                                               ; preds = %56
  %70 = load %struct.query_state*, %struct.query_state** %2, align 8
  %71 = getelementptr inbounds %struct.query_state, %struct.query_state* %70, i32 0, i32 0
  store i32 4, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @on_mp_read_session_read_response_write1, align 4
  %74 = load %struct.query_state*, %struct.query_state** %2, align 8
  %75 = getelementptr inbounds %struct.query_state, %struct.query_state* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @EVFILT_WRITE, align 4
  %77 = load %struct.query_state*, %struct.query_state** %2, align 8
  %78 = getelementptr inbounds %struct.query_state, %struct.query_state* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @on_mp_read_session_response_process, align 4
  %80 = call i32 @TRACE_OUT(i32 %79)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_mp_read_session_read_response* @get_cache_mp_read_session_read_response(i32*) #1

declare dso_local i32 @configuration_lock_entry(i32, i32) #1

declare dso_local i8* @cache_mp_read(i32, i32*, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @configuration_unlock_entry(i32, i32) #1

declare dso_local i32 @TRACE_OUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
