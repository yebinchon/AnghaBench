; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_write_response_write1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_write_response_write1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32 (%struct.query_state*, i64*, i32)*, i32, i64, i32, i32, i32 }
%struct.cache_mp_write_session_write_response = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"on_mp_write_session_write_response_write1\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@on_mp_write_session_mapper = common dso_local global i64 0, align 8
@EVFILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_write_session_write_response_write1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_write_session_write_response_write1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_mp_write_session_write_response*, align 8
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_write_session_write_response_write1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 4
  %9 = call %struct.cache_mp_write_session_write_response* @get_cache_mp_write_session_write_response(i32* %8)
  store %struct.cache_mp_write_session_write_response* %9, %struct.cache_mp_write_session_write_response** %4, align 8
  %10 = load %struct.query_state*, %struct.query_state** %3, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 0
  %12 = load i32 (%struct.query_state*, i64*, i32)*, i32 (%struct.query_state*, i64*, i32)** %11, align 8
  %13 = load %struct.query_state*, %struct.query_state** %3, align 8
  %14 = load %struct.cache_mp_write_session_write_response*, %struct.cache_mp_write_session_write_response** %4, align 8
  %15 = getelementptr inbounds %struct.cache_mp_write_session_write_response, %struct.cache_mp_write_session_write_response* %14, i32 0, i32 0
  %16 = call i32 %12(%struct.query_state* %13, i64* %15, i32 4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = call i32 @LOG_ERR_3(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_write_response_write1)
  store i32 -1, i32* %2, align 4
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.cache_mp_write_session_write_response*, %struct.cache_mp_write_session_write_response** %4, align 8
  %25 = getelementptr inbounds %struct.cache_mp_write_session_write_response, %struct.cache_mp_write_session_write_response* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.query_state*, %struct.query_state** %3, align 8
  %30 = getelementptr inbounds %struct.query_state, %struct.query_state* %29, i32 0, i32 5
  %31 = call i32 @finalize_comm_element(i32* %30)
  %32 = load %struct.query_state*, %struct.query_state** %3, align 8
  %33 = getelementptr inbounds %struct.query_state, %struct.query_state* %32, i32 0, i32 4
  %34 = call i32 @finalize_comm_element(i32* %33)
  %35 = load %struct.query_state*, %struct.query_state** %3, align 8
  %36 = getelementptr inbounds %struct.query_state, %struct.query_state* %35, i32 0, i32 1
  store i32 4, i32* %36, align 8
  %37 = load i64, i64* @on_mp_write_session_mapper, align 8
  %38 = load %struct.query_state*, %struct.query_state** %3, align 8
  %39 = getelementptr inbounds %struct.query_state, %struct.query_state* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @EVFILT_READ, align 4
  %41 = load %struct.query_state*, %struct.query_state** %3, align 8
  %42 = getelementptr inbounds %struct.query_state, %struct.query_state* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  br label %48

43:                                               ; preds = %23
  %44 = load %struct.query_state*, %struct.query_state** %3, align 8
  %45 = getelementptr inbounds %struct.query_state, %struct.query_state* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = load %struct.query_state*, %struct.query_state** %3, align 8
  %47 = getelementptr inbounds %struct.query_state, %struct.query_state* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %28
  %49 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_write_response_write1)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local %struct.cache_mp_write_session_write_response* @get_cache_mp_write_session_write_response(i32*) #1

declare dso_local i32 @LOG_ERR_3(i8*, i8*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i32 @finalize_comm_element(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
