; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_write_request_read1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_write_request_read1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64, i32 (%struct.query_state*, i64*, i32)*, i64, i32, i32, i32 }
%struct.cache_write_request = type { i64, i64, i64, i32*, i32*, i32* }

@CET_WRITE_REQUEST = common dso_local global i32 0, align 4
@on_write_request_read2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_write_request_read1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_write_request_read1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_write_request*, align 8
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_write_request_read1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.query_state*, %struct.query_state** %3, align 8
  %13 = getelementptr inbounds %struct.query_state, %struct.query_state* %12, i32 0, i32 0
  store i64 24, i64* %13, align 8
  br label %154

14:                                               ; preds = %1
  %15 = load %struct.query_state*, %struct.query_state** %3, align 8
  %16 = getelementptr inbounds %struct.query_state, %struct.query_state* %15, i32 0, i32 5
  %17 = load i32, i32* @CET_WRITE_REQUEST, align 4
  %18 = call i32 @init_comm_element(i32* %16, i32 %17)
  %19 = load %struct.query_state*, %struct.query_state** %3, align 8
  %20 = getelementptr inbounds %struct.query_state, %struct.query_state* %19, i32 0, i32 5
  %21 = call %struct.cache_write_request* @get_cache_write_request(i32* %20)
  store %struct.cache_write_request* %21, %struct.cache_write_request** %4, align 8
  %22 = load %struct.query_state*, %struct.query_state** %3, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 1
  %24 = load i32 (%struct.query_state*, i64*, i32)*, i32 (%struct.query_state*, i64*, i32)** %23, align 8
  %25 = load %struct.query_state*, %struct.query_state** %3, align 8
  %26 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %27 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %26, i32 0, i32 0
  %28 = call i32 %24(%struct.query_state* %25, i64* %27, i32 8)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.query_state*, %struct.query_state** %3, align 8
  %30 = getelementptr inbounds %struct.query_state, %struct.query_state* %29, i32 0, i32 1
  %31 = load i32 (%struct.query_state*, i64*, i32)*, i32 (%struct.query_state*, i64*, i32)** %30, align 8
  %32 = load %struct.query_state*, %struct.query_state** %3, align 8
  %33 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %34 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %33, i32 0, i32 1
  %35 = call i32 %31(%struct.query_state* %32, i64* %34, i32 8)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.query_state*, %struct.query_state** %3, align 8
  %39 = getelementptr inbounds %struct.query_state, %struct.query_state* %38, i32 0, i32 1
  %40 = load i32 (%struct.query_state*, i64*, i32)*, i32 (%struct.query_state*, i64*, i32)** %39, align 8
  %41 = load %struct.query_state*, %struct.query_state** %3, align 8
  %42 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %43 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %42, i32 0, i32 2
  %44 = call i32 %40(%struct.query_state* %41, i64* %43, i32 8)
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 24
  br i1 %49, label %50, label %52

50:                                               ; preds = %14
  %51 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_write_request_read1)
  store i32 -1, i32* %2, align 4
  br label %156

52:                                               ; preds = %14
  %53 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %54 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @BUFSIZE_INVALID(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %52
  %59 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %60 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @BUFSIZE_INVALID(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %66 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @BUFSIZE_INVALID(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %72 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %58, %52
  %76 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_write_request_read1)
  store i32 -1, i32* %2, align 4
  br label %156

77:                                               ; preds = %70, %64
  %78 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %79 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  %82 = call i8* @calloc(i32 1, i64 %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %85 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %84, i32 0, i32 5
  store i32* %83, i32** %85, align 8
  %86 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %87 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %93 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.query_state*, %struct.query_state** %3, align 8
  %96 = getelementptr inbounds %struct.query_state, %struct.query_state* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = call i8* @calloc(i32 1, i64 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %102 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %101, i32 0, i32 4
  store i32* %100, i32** %102, align 8
  %103 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %104 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %110 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.query_state*, %struct.query_state** %3, align 8
  %113 = getelementptr inbounds %struct.query_state, %struct.query_state* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.query_state*, %struct.query_state** %3, align 8
  %116 = getelementptr inbounds %struct.query_state, %struct.query_state* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @memcpy(i32* %111, i32 %114, i64 %117)
  %119 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %120 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %77
  %124 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %125 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @calloc(i32 1, i64 %126)
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %130 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %129, i32 0, i32 3
  store i32* %128, i32** %130, align 8
  %131 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %132 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  br label %137

137:                                              ; preds = %123, %77
  %138 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %139 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %142 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %146 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = load %struct.query_state*, %struct.query_state** %3, align 8
  %150 = getelementptr inbounds %struct.query_state, %struct.query_state* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i32, i32* @on_write_request_read2, align 4
  %152 = load %struct.query_state*, %struct.query_state** %3, align 8
  %153 = getelementptr inbounds %struct.query_state, %struct.query_state* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %137, %11
  %155 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_write_request_read1)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %75, %50
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_write_request* @get_cache_write_request(i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i64 @BUFSIZE_INVALID(i64) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
