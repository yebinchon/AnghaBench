; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_mapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_mapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32 (%struct.query_state*, i32*, i32)*, i32* }

@.str = private unnamed_addr constant [27 x i8] c"on_mp_write_session_mapper\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@on_mp_write_session_write_request_read1 = common dso_local global i32* null, align 8
@on_mp_write_session_abandon_notification = common dso_local global i32* null, align 8
@on_mp_write_session_close_notification = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown element type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_write_session_mapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_write_session_mapper(%struct.query_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.query_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.query_state* %0, %struct.query_state** %3, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_write_session_mapper)
  %7 = load %struct.query_state*, %struct.query_state** %3, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.query_state*, %struct.query_state** %3, align 8
  %13 = getelementptr inbounds %struct.query_state, %struct.query_state* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  br label %54

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
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = call i32 @LOG_ERR_3(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_mapper)
  store i32 -1, i32* %2, align 4
  br label %56

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %46 [
    i32 128, label %28
    i32 130, label %34
    i32 129, label %40
  ]

28:                                               ; preds = %26
  %29 = load %struct.query_state*, %struct.query_state** %3, align 8
  %30 = getelementptr inbounds %struct.query_state, %struct.query_state* %29, i32 0, i32 0
  store i32 8, i32* %30, align 8
  %31 = load i32*, i32** @on_mp_write_session_write_request_read1, align 8
  %32 = load %struct.query_state*, %struct.query_state** %3, align 8
  %33 = getelementptr inbounds %struct.query_state, %struct.query_state* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  br label %53

34:                                               ; preds = %26
  %35 = load %struct.query_state*, %struct.query_state** %3, align 8
  %36 = getelementptr inbounds %struct.query_state, %struct.query_state* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32*, i32** @on_mp_write_session_abandon_notification, align 8
  %38 = load %struct.query_state*, %struct.query_state** %3, align 8
  %39 = getelementptr inbounds %struct.query_state, %struct.query_state* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  br label %53

40:                                               ; preds = %26
  %41 = load %struct.query_state*, %struct.query_state** %3, align 8
  %42 = getelementptr inbounds %struct.query_state, %struct.query_state* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32*, i32** @on_mp_write_session_close_notification, align 8
  %44 = load %struct.query_state*, %struct.query_state** %3, align 8
  %45 = getelementptr inbounds %struct.query_state, %struct.query_state* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  br label %53

46:                                               ; preds = %26
  %47 = load %struct.query_state*, %struct.query_state** %3, align 8
  %48 = getelementptr inbounds %struct.query_state, %struct.query_state* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.query_state*, %struct.query_state** %3, align 8
  %50 = getelementptr inbounds %struct.query_state, %struct.query_state* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_mapper)
  store i32 -1, i32* %2, align 4
  br label %56

53:                                               ; preds = %40, %34, %28
  br label %54

54:                                               ; preds = %53, %11
  %55 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_mapper)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %46, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @LOG_ERR_3(i8*, i8*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
