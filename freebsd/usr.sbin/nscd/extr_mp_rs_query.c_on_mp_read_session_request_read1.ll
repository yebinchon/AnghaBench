; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_request_read1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_request_read1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64, i32 (%struct.query_state*, i32*, i32)*, i32, i32 }
%struct.cache_mp_read_session_request = type { i32, i32* }

@CET_MP_READ_SESSION_REQUEST = common dso_local global i32 0, align 4
@on_mp_read_session_request_read2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_mp_read_session_request_read1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_mp_read_session_request*, align 8
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_read_session_request_read1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.query_state*, %struct.query_state** %3, align 8
  %13 = getelementptr inbounds %struct.query_state, %struct.query_state* %12, i32 0, i32 0
  store i64 8, i64* %13, align 8
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.query_state*, %struct.query_state** %3, align 8
  %16 = getelementptr inbounds %struct.query_state, %struct.query_state* %15, i32 0, i32 3
  %17 = load i32, i32* @CET_MP_READ_SESSION_REQUEST, align 4
  %18 = call i32 @init_comm_element(i32* %16, i32 %17)
  %19 = load %struct.query_state*, %struct.query_state** %3, align 8
  %20 = getelementptr inbounds %struct.query_state, %struct.query_state* %19, i32 0, i32 3
  %21 = call %struct.cache_mp_read_session_request* @get_cache_mp_read_session_request(i32* %20)
  store %struct.cache_mp_read_session_request* %21, %struct.cache_mp_read_session_request** %4, align 8
  %22 = load %struct.query_state*, %struct.query_state** %3, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 1
  %24 = load i32 (%struct.query_state*, i32*, i32)*, i32 (%struct.query_state*, i32*, i32)** %23, align 8
  %25 = load %struct.query_state*, %struct.query_state** %3, align 8
  %26 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %4, align 8
  %27 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %26, i32 0, i32 0
  %28 = call i32 %24(%struct.query_state* %25, i32* %27, i32 8)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_request_read1)
  store i32 -1, i32* %2, align 4
  br label %67

34:                                               ; preds = %14
  %35 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %4, align 8
  %36 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @BUFSIZE_INVALID(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_request_read1)
  store i32 -1, i32* %2, align 4
  br label %67

42:                                               ; preds = %34
  %43 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %4, align 8
  %44 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = call i32* @calloc(i32 1, i32 %46)
  %48 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %4, align 8
  %49 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %4, align 8
  %51 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.cache_mp_read_session_request*, %struct.cache_mp_read_session_request** %4, align 8
  %57 = getelementptr inbounds %struct.cache_mp_read_session_request, %struct.cache_mp_read_session_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load %struct.query_state*, %struct.query_state** %3, align 8
  %61 = getelementptr inbounds %struct.query_state, %struct.query_state* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @on_mp_read_session_request_read2, align 4
  %63 = load %struct.query_state*, %struct.query_state** %3, align 8
  %64 = getelementptr inbounds %struct.query_state, %struct.query_state* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %42, %11
  %66 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_request_read1)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %40, %32
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_mp_read_session_request* @get_cache_mp_read_session_request(i32*) #1

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
