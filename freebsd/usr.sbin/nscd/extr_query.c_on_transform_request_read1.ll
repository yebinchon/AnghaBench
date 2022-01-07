; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_transform_request_read1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_transform_request_read1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64, i32 (%struct.query_state*, i64*, i32)*, i32, i32 }
%struct.cache_transform_request = type { i64, i64, i32* }

@CET_TRANSFORM_REQUEST = common dso_local global i32 0, align 4
@TT_USER = common dso_local global i64 0, align 8
@TT_ALL = common dso_local global i64 0, align 8
@on_transform_request_read2 = common dso_local global i32 0, align 4
@on_transform_request_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_transform_request_read1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_transform_request_read1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_transform_request*, align 8
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_transform_request_read1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.query_state*, %struct.query_state** %3, align 8
  %13 = getelementptr inbounds %struct.query_state, %struct.query_state* %12, i32 0, i32 0
  store i64 12, i64* %13, align 8
  br label %97

14:                                               ; preds = %1
  %15 = load %struct.query_state*, %struct.query_state** %3, align 8
  %16 = getelementptr inbounds %struct.query_state, %struct.query_state* %15, i32 0, i32 3
  %17 = load i32, i32* @CET_TRANSFORM_REQUEST, align 4
  %18 = call i32 @init_comm_element(i32* %16, i32 %17)
  %19 = load %struct.query_state*, %struct.query_state** %3, align 8
  %20 = getelementptr inbounds %struct.query_state, %struct.query_state* %19, i32 0, i32 3
  %21 = call %struct.cache_transform_request* @get_cache_transform_request(i32* %20)
  store %struct.cache_transform_request* %21, %struct.cache_transform_request** %4, align 8
  %22 = load %struct.query_state*, %struct.query_state** %3, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 1
  %24 = load i32 (%struct.query_state*, i64*, i32)*, i32 (%struct.query_state*, i64*, i32)** %23, align 8
  %25 = load %struct.query_state*, %struct.query_state** %3, align 8
  %26 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %27 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %26, i32 0, i32 0
  %28 = call i32 %24(%struct.query_state* %25, i64* %27, i32 8)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.query_state*, %struct.query_state** %3, align 8
  %30 = getelementptr inbounds %struct.query_state, %struct.query_state* %29, i32 0, i32 1
  %31 = load i32 (%struct.query_state*, i64*, i32)*, i32 (%struct.query_state*, i64*, i32)** %30, align 8
  %32 = load %struct.query_state*, %struct.query_state** %3, align 8
  %33 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %34 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %33, i32 0, i32 1
  %35 = call i32 %31(%struct.query_state* %32, i64* %34, i32 4)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 12
  br i1 %40, label %41, label %43

41:                                               ; preds = %14
  %42 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_transform_request_read1)
  store i32 -1, i32* %2, align 4
  br label %99

43:                                               ; preds = %14
  %44 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %45 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TT_USER, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %51 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TT_ALL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_transform_request_read1)
  store i32 -1, i32* %2, align 4
  br label %99

57:                                               ; preds = %49, %43
  %58 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %59 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %64 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @BUFSIZE_INVALID(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_transform_request_read1)
  store i32 -1, i32* %2, align 4
  br label %99

70:                                               ; preds = %62
  %71 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %72 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i32* @calloc(i32 1, i64 %74)
  %76 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %77 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %79 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* @on_transform_request_read2, align 4
  %85 = load %struct.query_state*, %struct.query_state** %3, align 8
  %86 = getelementptr inbounds %struct.query_state, %struct.query_state* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %91

87:                                               ; preds = %57
  %88 = load i32, i32* @on_transform_request_process, align 4
  %89 = load %struct.query_state*, %struct.query_state** %3, align 8
  %90 = getelementptr inbounds %struct.query_state, %struct.query_state* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %70
  %92 = load %struct.cache_transform_request*, %struct.cache_transform_request** %4, align 8
  %93 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.query_state*, %struct.query_state** %3, align 8
  %96 = getelementptr inbounds %struct.query_state, %struct.query_state* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %11
  %98 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_transform_request_read1)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %68, %55, %41
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_transform_request* @get_cache_transform_request(i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i64 @BUFSIZE_INVALID(i64) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
