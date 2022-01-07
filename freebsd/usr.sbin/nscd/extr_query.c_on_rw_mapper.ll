; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_rw_mapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_rw_mapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32 (%struct.query_state*, i32*, i32)*, i32 }

@on_write_request_read1 = common dso_local global i32 0, align 4
@on_read_request_read1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_rw_mapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_rw_mapper(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_rw_mapper)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.query_state*, %struct.query_state** %3, align 8
  %13 = getelementptr inbounds %struct.query_state, %struct.query_state* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.query_state*, %struct.query_state** %3, align 8
  %16 = getelementptr inbounds %struct.query_state, %struct.query_state* %15, i32 0, i32 1
  %17 = load i32 (%struct.query_state*, i32*, i32)*, i32 (%struct.query_state*, i32*, i32)** %16, align 8
  %18 = load %struct.query_state*, %struct.query_state** %3, align 8
  %19 = call i32 %17(%struct.query_state* %18, i32* %5, i32 4)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_rw_mapper)
  store i32 -1, i32* %2, align 4
  br label %44

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %39 [
    i32 128, label %27
    i32 129, label %33
  ]

27:                                               ; preds = %25
  %28 = load %struct.query_state*, %struct.query_state** %3, align 8
  %29 = getelementptr inbounds %struct.query_state, %struct.query_state* %28, i32 0, i32 0
  store i32 8, i32* %29, align 8
  %30 = load i32, i32* @on_write_request_read1, align 4
  %31 = load %struct.query_state*, %struct.query_state** %3, align 8
  %32 = getelementptr inbounds %struct.query_state, %struct.query_state* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %41

33:                                               ; preds = %25
  %34 = load %struct.query_state*, %struct.query_state** %3, align 8
  %35 = getelementptr inbounds %struct.query_state, %struct.query_state* %34, i32 0, i32 0
  store i32 8, i32* %35, align 8
  %36 = load i32, i32* @on_read_request_read1, align 4
  %37 = load %struct.query_state*, %struct.query_state** %3, align 8
  %38 = getelementptr inbounds %struct.query_state, %struct.query_state* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %41

39:                                               ; preds = %25
  %40 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_rw_mapper)
  store i32 -1, i32* %2, align 4
  br label %44

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41, %11
  %43 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_rw_mapper)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %39, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
