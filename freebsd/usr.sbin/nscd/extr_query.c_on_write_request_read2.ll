; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_write_request_read2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_write_request_read2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i64 (%struct.query_state*, i64, i64)*, i32, i64, i64, i32 }
%struct.cache_write_request = type { i64, i64, i64, i64, i64, i64 }

@on_write_request_process = common dso_local global i32 0, align 4
@on_negative_write_request_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_write_request_read2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_write_request_read2(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_write_request*, align 8
  %5 = alloca i64, align 8
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_write_request_read2)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 4
  %9 = call %struct.cache_write_request* @get_cache_write_request(i32* %8)
  store %struct.cache_write_request* %9, %struct.cache_write_request** %4, align 8
  %10 = load %struct.query_state*, %struct.query_state** %3, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 0
  %12 = load i64 (%struct.query_state*, i64, i64)*, i64 (%struct.query_state*, i64, i64)** %11, align 8
  %13 = load %struct.query_state*, %struct.query_state** %3, align 8
  %14 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %15 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %18 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 %12(%struct.query_state* %13, i64 %16, i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.query_state*, %struct.query_state** %3, align 8
  %22 = getelementptr inbounds %struct.query_state, %struct.query_state* %21, i32 0, i32 0
  %23 = load i64 (%struct.query_state*, i64, i64)*, i64 (%struct.query_state*, i64, i64)** %22, align 8
  %24 = load %struct.query_state*, %struct.query_state** %3, align 8
  %25 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %26 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.query_state*, %struct.query_state** %3, align 8
  %29 = getelementptr inbounds %struct.query_state, %struct.query_state* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %33 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 %23(%struct.query_state* %24, i64 %31, i64 %34)
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %39 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %1
  %43 = load %struct.query_state*, %struct.query_state** %3, align 8
  %44 = getelementptr inbounds %struct.query_state, %struct.query_state* %43, i32 0, i32 0
  %45 = load i64 (%struct.query_state*, i64, i64)*, i64 (%struct.query_state*, i64, i64)** %44, align 8
  %46 = load %struct.query_state*, %struct.query_state** %3, align 8
  %47 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %48 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %51 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 %45(%struct.query_state* %46, i64 %49, i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %42, %1
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.query_state*, %struct.query_state** %3, align 8
  %59 = getelementptr inbounds %struct.query_state, %struct.query_state* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_write_request_read2)
  store i32 -1, i32* %2, align 4
  br label %88

64:                                               ; preds = %56
  %65 = load %struct.query_state*, %struct.query_state** %3, align 8
  %66 = getelementptr inbounds %struct.query_state, %struct.query_state* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %69 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.query_state*, %struct.query_state** %3, align 8
  %73 = getelementptr inbounds %struct.query_state, %struct.query_state* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.cache_write_request*, %struct.cache_write_request** %4, align 8
  %75 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = load i32, i32* @on_write_request_process, align 4
  %80 = load %struct.query_state*, %struct.query_state** %3, align 8
  %81 = getelementptr inbounds %struct.query_state, %struct.query_state* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %86

82:                                               ; preds = %64
  %83 = load i32, i32* @on_negative_write_request_process, align 4
  %84 = load %struct.query_state*, %struct.query_state** %3, align 8
  %85 = getelementptr inbounds %struct.query_state, %struct.query_state* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_write_request_read2)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %62
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local %struct.cache_write_request* @get_cache_write_request(i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
