; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_read_request_read1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_read_request_read1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64, i32 (%struct.query_state*, i32*, i32)*, i32, i32, i32, i32 }
%struct.cache_read_request = type { i32, i32, i32*, i32* }

@CET_READ_REQUEST = common dso_local global i32 0, align 4
@on_read_request_read2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_read_request_read1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_read_request_read1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_read_request*, align 8
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_read_request_read1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.query_state*, %struct.query_state** %3, align 8
  %13 = getelementptr inbounds %struct.query_state, %struct.query_state* %12, i32 0, i32 0
  store i64 16, i64* %13, align 8
  br label %112

14:                                               ; preds = %1
  %15 = load %struct.query_state*, %struct.query_state** %3, align 8
  %16 = getelementptr inbounds %struct.query_state, %struct.query_state* %15, i32 0, i32 5
  %17 = load i32, i32* @CET_READ_REQUEST, align 4
  %18 = call i32 @init_comm_element(i32* %16, i32 %17)
  %19 = load %struct.query_state*, %struct.query_state** %3, align 8
  %20 = getelementptr inbounds %struct.query_state, %struct.query_state* %19, i32 0, i32 5
  %21 = call %struct.cache_read_request* @get_cache_read_request(i32* %20)
  store %struct.cache_read_request* %21, %struct.cache_read_request** %4, align 8
  %22 = load %struct.query_state*, %struct.query_state** %3, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 1
  %24 = load i32 (%struct.query_state*, i32*, i32)*, i32 (%struct.query_state*, i32*, i32)** %23, align 8
  %25 = load %struct.query_state*, %struct.query_state** %3, align 8
  %26 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %27 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %26, i32 0, i32 0
  %28 = call i32 %24(%struct.query_state* %25, i32* %27, i32 8)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.query_state*, %struct.query_state** %3, align 8
  %30 = getelementptr inbounds %struct.query_state, %struct.query_state* %29, i32 0, i32 1
  %31 = load i32 (%struct.query_state*, i32*, i32)*, i32 (%struct.query_state*, i32*, i32)** %30, align 8
  %32 = load %struct.query_state*, %struct.query_state** %3, align 8
  %33 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %34 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %33, i32 0, i32 1
  %35 = call i32 %31(%struct.query_state* %32, i32* %34, i32 8)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 16
  br i1 %40, label %41, label %43

41:                                               ; preds = %14
  %42 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_read_request_read1)
  store i32 -1, i32* %2, align 4
  br label %114

43:                                               ; preds = %14
  %44 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %45 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @BUFSIZE_INVALID(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %51 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @BUFSIZE_INVALID(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %43
  %56 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_read_request_read1)
  store i32 -1, i32* %2, align 4
  br label %114

57:                                               ; preds = %49
  %58 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %59 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = call i8* @calloc(i32 1, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %65 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  %66 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %67 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %73 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.query_state*, %struct.query_state** %3, align 8
  %76 = getelementptr inbounds %struct.query_state, %struct.query_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %74, %77
  %79 = call i8* @calloc(i32 1, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %82 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %84 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %90 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.query_state*, %struct.query_state** %3, align 8
  %93 = getelementptr inbounds %struct.query_state, %struct.query_state* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.query_state*, %struct.query_state** %3, align 8
  %96 = getelementptr inbounds %struct.query_state, %struct.query_state* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memcpy(i32* %91, i32 %94, i32 %97)
  %99 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %100 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %103 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = load %struct.query_state*, %struct.query_state** %3, align 8
  %108 = getelementptr inbounds %struct.query_state, %struct.query_state* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @on_read_request_read2, align 4
  %110 = load %struct.query_state*, %struct.query_state** %3, align 8
  %111 = getelementptr inbounds %struct.query_state, %struct.query_state* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %57, %11
  %113 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_read_request_read1)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %55, %41
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_read_request* @get_cache_read_request(i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i64 @BUFSIZE_INVALID(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
