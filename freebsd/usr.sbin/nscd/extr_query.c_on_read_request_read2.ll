; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_read_request_read2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_read_request_read2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64 (%struct.query_state*, i64, i32)*, i32, i64, i64, i32 }
%struct.cache_read_request = type { i32, i64, i32, i64 }

@on_read_request_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_read_request_read2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_read_request_read2(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_read_request*, align 8
  %5 = alloca i64, align 8
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_read_request_read2)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 4
  %9 = call %struct.cache_read_request* @get_cache_read_request(i32* %8)
  store %struct.cache_read_request* %9, %struct.cache_read_request** %4, align 8
  %10 = load %struct.query_state*, %struct.query_state** %3, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 0
  %12 = load i64 (%struct.query_state*, i64, i32)*, i64 (%struct.query_state*, i64, i32)** %11, align 8
  %13 = load %struct.query_state*, %struct.query_state** %3, align 8
  %14 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %15 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %18 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 %12(%struct.query_state* %13, i64 %16, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.query_state*, %struct.query_state** %3, align 8
  %22 = getelementptr inbounds %struct.query_state, %struct.query_state* %21, i32 0, i32 0
  %23 = load i64 (%struct.query_state*, i64, i32)*, i64 (%struct.query_state*, i64, i32)** %22, align 8
  %24 = load %struct.query_state*, %struct.query_state** %3, align 8
  %25 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %26 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.query_state*, %struct.query_state** %3, align 8
  %29 = getelementptr inbounds %struct.query_state, %struct.query_state* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %33 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 %23(%struct.query_state* %24, i64 %31, i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.query_state*, %struct.query_state** %3, align 8
  %40 = getelementptr inbounds %struct.query_state, %struct.query_state* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_read_request_read2)
  store i32 -1, i32* %2, align 4
  br label %61

45:                                               ; preds = %1
  %46 = load %struct.query_state*, %struct.query_state** %3, align 8
  %47 = getelementptr inbounds %struct.query_state, %struct.query_state* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cache_read_request*, %struct.cache_read_request** %4, align 8
  %50 = getelementptr inbounds %struct.cache_read_request, %struct.cache_read_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load %struct.query_state*, %struct.query_state** %3, align 8
  %56 = getelementptr inbounds %struct.query_state, %struct.query_state* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @on_read_request_process, align 4
  %58 = load %struct.query_state*, %struct.query_state** %3, align 8
  %59 = getelementptr inbounds %struct.query_state, %struct.query_state* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_read_request_read2)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %45, %43
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local %struct.cache_read_request* @get_cache_read_request(i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
