; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_request_read1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_request_read1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64, i32 (%struct.query_state*, i32*, i32)*, i32, i32 }
%struct.cache_mp_write_session_request = type { i32, i32* }

@CET_MP_WRITE_SESSION_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"on_mp_write_session_request_read1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid entry_length value\00", align 1
@on_mp_write_session_request_read2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_mp_write_session_request_read1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_mp_write_session_request*, align 8
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_write_session_request_read1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.query_state*, %struct.query_state** %3, align 8
  %13 = getelementptr inbounds %struct.query_state, %struct.query_state* %12, i32 0, i32 0
  store i64 8, i64* %13, align 8
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.query_state*, %struct.query_state** %3, align 8
  %16 = getelementptr inbounds %struct.query_state, %struct.query_state* %15, i32 0, i32 3
  %17 = load i32, i32* @CET_MP_WRITE_SESSION_REQUEST, align 4
  %18 = call i32 @init_comm_element(i32* %16, i32 %17)
  %19 = load %struct.query_state*, %struct.query_state** %3, align 8
  %20 = getelementptr inbounds %struct.query_state, %struct.query_state* %19, i32 0, i32 3
  %21 = call %struct.cache_mp_write_session_request* @get_cache_mp_write_session_request(i32* %20)
  store %struct.cache_mp_write_session_request* %21, %struct.cache_mp_write_session_request** %4, align 8
  %22 = load %struct.query_state*, %struct.query_state** %3, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 1
  %24 = load i32 (%struct.query_state*, i32*, i32)*, i32 (%struct.query_state*, i32*, i32)** %23, align 8
  %25 = load %struct.query_state*, %struct.query_state** %3, align 8
  %26 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %4, align 8
  %27 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %26, i32 0, i32 0
  %28 = call i32 %24(%struct.query_state* %25, i32* %27, i32 8)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %14
  %33 = call i32 @LOG_ERR_3(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_request_read1)
  store i32 -1, i32* %2, align 4
  br label %69

35:                                               ; preds = %14
  %36 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %4, align 8
  %37 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @BUFSIZE_INVALID(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 @LOG_ERR_3(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_request_read1)
  store i32 -1, i32* %2, align 4
  br label %69

44:                                               ; preds = %35
  %45 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %4, align 8
  %46 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = call i32* @calloc(i32 1, i32 %48)
  %50 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %4, align 8
  %51 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %4, align 8
  %53 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %4, align 8
  %59 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load %struct.query_state*, %struct.query_state** %3, align 8
  %63 = getelementptr inbounds %struct.query_state, %struct.query_state* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @on_mp_write_session_request_read2, align 4
  %65 = load %struct.query_state*, %struct.query_state** %3, align 8
  %66 = getelementptr inbounds %struct.query_state, %struct.query_state* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %44, %11
  %68 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_request_read1)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %41, %32
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_mp_write_session_request* @get_cache_mp_write_session_request(i32*) #1

declare dso_local i32 @LOG_ERR_3(i8*, i8*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i64 @BUFSIZE_INVALID(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
