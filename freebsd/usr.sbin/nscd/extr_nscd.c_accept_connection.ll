; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_accept_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_accept_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }
%struct.runtime_env = type { i32 }
%struct.configuration = type { i32 }
%struct.timespec = type { i32 }
%struct.query_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"accept_connection\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error %d during accept()\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"error %d during getpeereid()\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"can't init query_state\00", align 1
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"kevent error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @accept_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accept_connection(%struct.kevent* %0, %struct.runtime_env* %1, %struct.configuration* %2) #0 {
  %4 = alloca %struct.kevent*, align 8
  %5 = alloca %struct.runtime_env*, align 8
  %6 = alloca %struct.configuration*, align 8
  %7 = alloca [2 x %struct.kevent], align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.query_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kevent* %0, %struct.kevent** %4, align 8
  store %struct.runtime_env* %1, %struct.runtime_env** %5, align 8
  store %struct.configuration* %2, %struct.configuration** %6, align 8
  %14 = call i32 @TRACE_IN(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @accept_connection)
  %15 = load %struct.kevent*, %struct.kevent** %4, align 8
  %16 = getelementptr inbounds %struct.kevent, %struct.kevent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @accept(i32 %17, i32* null, i32* null)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 (i8*, i8*, ...) @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @accept_connection)
  br label %81

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @getpeereid(i32 %26, i32* %12, i32* %13)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 (i8*, i8*, ...) @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @accept_connection)
  br label %81

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call %struct.query_state* @init_query_state(i32 %34, i32 4, i32 %35, i32 %36)
  store %struct.query_state* %37, %struct.query_state** %9, align 8
  %38 = load %struct.query_state*, %struct.query_state** %9, align 8
  %39 = icmp eq %struct.query_state* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 (i8*, i8*, ...) @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @accept_connection)
  br label %81

43:                                               ; preds = %33
  %44 = call i32 @memset(%struct.timespec* %8, i32 0, i32 4)
  %45 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 0
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EVFILT_TIMER, align 4
  %48 = load i32, i32* @EV_ADD, align 4
  %49 = load i32, i32* @EV_ONESHOT, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.query_state*, %struct.query_state** %9, align 8
  %52 = getelementptr inbounds %struct.query_state, %struct.query_state* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 1000
  %56 = load %struct.query_state*, %struct.query_state** %9, align 8
  %57 = call i32 @EV_SET(%struct.kevent* %45, i32 %46, i32 %47, i32 %50, i32 0, i32 %55, %struct.query_state* %56)
  %58 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 1
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @EVFILT_READ, align 4
  %61 = load i32, i32* @EV_ADD, align 4
  %62 = load i32, i32* @EV_ONESHOT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NOTE_LOWAT, align 4
  %65 = load %struct.query_state*, %struct.query_state** %9, align 8
  %66 = getelementptr inbounds %struct.query_state, %struct.query_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.query_state*, %struct.query_state** %9, align 8
  %69 = call i32 @EV_SET(%struct.kevent* %58, i32 %59, i32 %60, i32 %63, i32 %64, i32 %67, %struct.query_state* %68)
  %70 = load %struct.runtime_env*, %struct.runtime_env** %5, align 8
  %71 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %7, i64 0, i64 0
  %74 = call i32 @kevent(i32 %72, %struct.kevent* %73, i32 2, i32* null, i32 0, %struct.timespec* %8)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %43
  %78 = call i32 (i8*, i8*, ...) @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %43
  %80 = call i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)* @accept_connection)
  br label %81

81:                                               ; preds = %79, %40, %29, %21
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, ...) #1

declare dso_local i32 @TRACE_OUT(void (%struct.kevent*, %struct.runtime_env*, %struct.configuration*)*) #1

declare dso_local i64 @getpeereid(i32, i32*, i32*) #1

declare dso_local %struct.query_state* @init_query_state(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.timespec*, i32, i32) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, %struct.query_state*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
