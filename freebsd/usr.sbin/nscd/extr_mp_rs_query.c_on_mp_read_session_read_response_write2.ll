; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_read_response_write2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_read_response_write2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64 (%struct.query_state*, i32, i32)*, i64, i32, i32, i32, i32 }
%struct.cache_mp_read_session_read_response = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"on_mp_read_session_read_response_write2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@on_mp_read_session_mapper = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_read_session_read_response_write2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_read_session_read_response_write2(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_mp_read_session_read_response*, align 8
  %5 = alloca i64, align 8
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_read_session_read_response_write2)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 4
  %9 = call %struct.cache_mp_read_session_read_response* @get_cache_mp_read_session_read_response(i32* %8)
  store %struct.cache_mp_read_session_read_response* %9, %struct.cache_mp_read_session_read_response** %4, align 8
  %10 = load %struct.query_state*, %struct.query_state** %3, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 0
  %12 = load i64 (%struct.query_state*, i32, i32)*, i64 (%struct.query_state*, i32, i32)** %11, align 8
  %13 = load %struct.query_state*, %struct.query_state** %3, align 8
  %14 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %4, align 8
  %15 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %4, align 8
  %18 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 %12(%struct.query_state* %13, i32 %16, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.query_state*, %struct.query_state** %3, align 8
  %26 = getelementptr inbounds %struct.query_state, %struct.query_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %1
  %30 = call i32 @LOG_ERR_3(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_read_response_write2)
  store i32 -1, i32* %2, align 4
  br label %48

32:                                               ; preds = %23
  %33 = load %struct.query_state*, %struct.query_state** %3, align 8
  %34 = getelementptr inbounds %struct.query_state, %struct.query_state* %33, i32 0, i32 5
  %35 = call i32 @finalize_comm_element(i32* %34)
  %36 = load %struct.query_state*, %struct.query_state** %3, align 8
  %37 = getelementptr inbounds %struct.query_state, %struct.query_state* %36, i32 0, i32 4
  %38 = call i32 @finalize_comm_element(i32* %37)
  %39 = load %struct.query_state*, %struct.query_state** %3, align 8
  %40 = getelementptr inbounds %struct.query_state, %struct.query_state* %39, i32 0, i32 1
  store i64 4, i64* %40, align 8
  %41 = load i32, i32* @on_mp_read_session_mapper, align 4
  %42 = load %struct.query_state*, %struct.query_state** %3, align 8
  %43 = getelementptr inbounds %struct.query_state, %struct.query_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @EVFILT_READ, align 4
  %45 = load %struct.query_state*, %struct.query_state** %3, align 8
  %46 = getelementptr inbounds %struct.query_state, %struct.query_state* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_read_response_write2)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %29
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local %struct.cache_mp_read_session_read_response* @get_cache_mp_read_session_read_response(i32*) #1

declare dso_local i32 @LOG_ERR_3(i8*, i8*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i32 @finalize_comm_element(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
