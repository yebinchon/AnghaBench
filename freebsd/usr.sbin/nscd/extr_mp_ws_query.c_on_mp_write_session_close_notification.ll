; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_close_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_close_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32*, i64, i64, i32 }

@CELT_MULTIPART = common dso_local global i32 0, align 4
@INVALID_CACHE_MP_WRITE_SESSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_write_session_close_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_write_session_close_notification(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %3 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_write_session_close_notification)
  %4 = load %struct.query_state*, %struct.query_state** %2, align 8
  %5 = getelementptr inbounds %struct.query_state, %struct.query_state* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CELT_MULTIPART, align 4
  %8 = call i32 @configuration_lock_entry(i32 %6, i32 %7)
  %9 = load %struct.query_state*, %struct.query_state** %2, align 8
  %10 = getelementptr inbounds %struct.query_state, %struct.query_state* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @close_cache_mp_write_session(i32 %12)
  %14 = load %struct.query_state*, %struct.query_state** %2, align 8
  %15 = getelementptr inbounds %struct.query_state, %struct.query_state* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CELT_MULTIPART, align 4
  %18 = call i32 @configuration_unlock_entry(i32 %16, i32 %17)
  %19 = load i64, i64* @INVALID_CACHE_MP_WRITE_SESSION, align 8
  %20 = load %struct.query_state*, %struct.query_state** %2, align 8
  %21 = getelementptr inbounds %struct.query_state, %struct.query_state* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.query_state*, %struct.query_state** %2, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.query_state*, %struct.query_state** %2, align 8
  %25 = getelementptr inbounds %struct.query_state, %struct.query_state* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_close_notification)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @configuration_lock_entry(i32, i32) #1

declare dso_local i32 @close_cache_mp_write_session(i32) #1

declare dso_local i32 @configuration_unlock_entry(i32, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
