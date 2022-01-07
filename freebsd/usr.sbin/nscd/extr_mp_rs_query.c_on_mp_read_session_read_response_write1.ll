; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_read_response_write1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_rs_query.c_on_mp_read_session_read_response_write1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64 (%struct.query_state*, i64*, i32)*, i64, i32*, i32 }
%struct.cache_mp_read_session_read_response = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"on_mp_read_session_read_response_write1\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@on_mp_read_session_read_response_write2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_read_session_read_response_write1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_read_session_read_response_write1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_mp_read_session_read_response*, align 8
  %5 = alloca i64, align 8
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_read_session_read_response_write1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 3
  %9 = call %struct.cache_mp_read_session_read_response* @get_cache_mp_read_session_read_response(i32* %8)
  store %struct.cache_mp_read_session_read_response* %9, %struct.cache_mp_read_session_read_response** %4, align 8
  %10 = load %struct.query_state*, %struct.query_state** %3, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 0
  %12 = load i64 (%struct.query_state*, i64*, i32)*, i64 (%struct.query_state*, i64*, i32)** %11, align 8
  %13 = load %struct.query_state*, %struct.query_state** %3, align 8
  %14 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %4, align 8
  %15 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %14, i32 0, i32 0
  %16 = call i64 %12(%struct.query_state* %13, i64* %15, i32 4)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %4, align 8
  %18 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.query_state*, %struct.query_state** %3, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 0
  %24 = load i64 (%struct.query_state*, i64*, i32)*, i64 (%struct.query_state*, i64*, i32)** %23, align 8
  %25 = load %struct.query_state*, %struct.query_state** %3, align 8
  %26 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %4, align 8
  %27 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %26, i32 0, i32 1
  %28 = call i64 %24(%struct.query_state* %25, i64* %27, i32 8)
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.query_state*, %struct.query_state** %3, align 8
  %36 = getelementptr inbounds %struct.query_state, %struct.query_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %21
  %40 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_read_response_write1)
  %41 = call i32 @LOG_ERR_3(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

42:                                               ; preds = %33
  %43 = load %struct.cache_mp_read_session_read_response*, %struct.cache_mp_read_session_read_response** %4, align 8
  %44 = getelementptr inbounds %struct.cache_mp_read_session_read_response, %struct.cache_mp_read_session_read_response* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.query_state*, %struct.query_state** %3, align 8
  %47 = getelementptr inbounds %struct.query_state, %struct.query_state* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i32*, i32** @on_mp_read_session_read_response_write2, align 8
  %49 = load %struct.query_state*, %struct.query_state** %3, align 8
  %50 = getelementptr inbounds %struct.query_state, %struct.query_state* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %68

51:                                               ; preds = %1
  %52 = load i64, i64* %5, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.query_state*, %struct.query_state** %3, align 8
  %57 = getelementptr inbounds %struct.query_state, %struct.query_state* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %51
  %61 = call i32 @LOG_ERR_3(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_read_response_write1)
  store i32 -1, i32* %2, align 4
  br label %70

63:                                               ; preds = %54
  %64 = load %struct.query_state*, %struct.query_state** %3, align 8
  %65 = getelementptr inbounds %struct.query_state, %struct.query_state* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.query_state*, %struct.query_state** %3, align 8
  %67 = getelementptr inbounds %struct.query_state, %struct.query_state* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %63, %42
  %69 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_read_session_read_response_write1)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %60, %39
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local %struct.cache_mp_read_session_read_response* @get_cache_mp_read_session_read_response(i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i32 @LOG_ERR_3(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
