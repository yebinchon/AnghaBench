; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_protocol.c_get_cache_mp_read_session_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_protocol.c_get_cache_mp_read_session_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_mp_read_session_response = type { i32 }
%struct.comm_element = type { i64, %struct.cache_mp_read_session_response }

@CET_MP_READ_SESSION_RESPONSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_mp_read_session_response* @get_cache_mp_read_session_response(%struct.comm_element* %0) #0 {
  %2 = alloca %struct.comm_element*, align 8
  store %struct.comm_element* %0, %struct.comm_element** %2, align 8
  %3 = call i32 @TRACE_IN(%struct.cache_mp_read_session_response* (%struct.comm_element*)* @get_cache_mp_read_session_response)
  %4 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %5 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CET_MP_READ_SESSION_RESPONSE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i32 @TRACE_OUT(%struct.cache_mp_read_session_response* (%struct.comm_element*)* @get_cache_mp_read_session_response)
  %12 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %13 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %12, i32 0, i32 1
  ret %struct.cache_mp_read_session_response* %13
}

declare dso_local i32 @TRACE_IN(%struct.cache_mp_read_session_response* (%struct.comm_element*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_mp_read_session_response* (%struct.comm_element*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
