; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_transform_response_write1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_transform_response_write1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32 (%struct.query_state*, i32*, i32)*, i32*, i64, i32, i32 }
%struct.cache_transform_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_transform_response_write1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_transform_response_write1(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca %struct.cache_transform_response*, align 8
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_transform_response_write1)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 3
  %9 = call %struct.cache_transform_response* @get_cache_transform_response(i32* %8)
  store %struct.cache_transform_response* %9, %struct.cache_transform_response** %4, align 8
  %10 = load %struct.query_state*, %struct.query_state** %3, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 0
  %12 = load i32 (%struct.query_state*, i32*, i32)*, i32 (%struct.query_state*, i32*, i32)** %11, align 8
  %13 = load %struct.query_state*, %struct.query_state** %3, align 8
  %14 = load %struct.cache_transform_response*, %struct.cache_transform_response** %4, align 8
  %15 = getelementptr inbounds %struct.cache_transform_response, %struct.cache_transform_response* %14, i32 0, i32 0
  %16 = call i32 %12(%struct.query_state* %13, i32* %15, i32 4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_transform_response_write1)
  store i32 -1, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.query_state*, %struct.query_state** %3, align 8
  %24 = getelementptr inbounds %struct.query_state, %struct.query_state* %23, i32 0, i32 4
  %25 = call i32 @finalize_comm_element(i32* %24)
  %26 = load %struct.query_state*, %struct.query_state** %3, align 8
  %27 = getelementptr inbounds %struct.query_state, %struct.query_state* %26, i32 0, i32 3
  %28 = call i32 @finalize_comm_element(i32* %27)
  %29 = load %struct.query_state*, %struct.query_state** %3, align 8
  %30 = getelementptr inbounds %struct.query_state, %struct.query_state* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.query_state*, %struct.query_state** %3, align 8
  %32 = getelementptr inbounds %struct.query_state, %struct.query_state* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_transform_response_write1)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %22, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local %struct.cache_transform_response* @get_cache_transform_response(i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i32 @finalize_comm_element(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
