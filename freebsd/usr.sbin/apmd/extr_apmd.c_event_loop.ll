; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_event_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_event_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }
%struct.timeval = type { i64, i32 }

@apmctl_fd = common dso_local global i32 0, align 4
@signal_fd = common dso_local global i32* null, align 8
@enque_signal = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@BATT_CHK_INTV = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  %9 = call i32 @FD_ZERO(i32* %3)
  %10 = load i32, i32* @apmctl_fd, align 4
  %11 = call i32 @FD_SET(i32 %10, i32* %3)
  %12 = load i32, i32* @apmctl_fd, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @apmctl_fd, align 4
  br label %19

17:                                               ; preds = %0
  %18 = load i32, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %1, align 4
  %21 = load i32*, i32** @signal_fd, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @FD_SET(i32 %23, i32* %3)
  %25 = load i32*, i32** @signal_fd, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32*, i32** @signal_fd, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %33, %30 ], [ %35, %34 ]
  store i32 %37, i32* %1, align 4
  %38 = call i32 @memset(%struct.sigaction* %2, i32 0, i32 12)
  %39 = load i32, i32* @enque_signal, align 4
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  %42 = call i32 @sigfillset(i32* %41)
  %43 = load i32, i32* @SA_RESTART, align 4
  %44 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @SIGHUP, align 4
  %46 = call i32 @sigaction(i32 %45, %struct.sigaction* %2, i32* null)
  %47 = load i32, i32* @SIGCHLD, align 4
  %48 = call i32 @sigaction(i32 %47, %struct.sigaction* %2, i32* null)
  %49 = load i32, i32* @SIGTERM, align 4
  %50 = call i32 @sigaction(i32 %49, %struct.sigaction* %2, i32* null)
  %51 = call i32 @sigemptyset(i32* %4)
  %52 = load i32, i32* @SIGHUP, align 4
  %53 = call i32 @sigaddset(i32* %4, i32 %52)
  %54 = load i32, i32* @SIGCHLD, align 4
  %55 = call i32 @sigaddset(i32* %4, i32 %54)
  %56 = load i32, i32* @SIGTERM, align 4
  %57 = call i32 @sigaddset(i32* %4, i32 %56)
  %58 = load i32, i32* @SIG_SETMASK, align 4
  %59 = call i32 @sigprocmask(i32 %58, i32* %4, i32* %5)
  br label %60

60:                                               ; preds = %36, %83, %106
  %61 = load i32, i32* @BATT_CHK_INTV, align 4
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = call i32 @memcpy(i32* %6, i32* %3, i32 4)
  %65 = load i32, i32* @SIG_SETMASK, align 4
  %66 = call i32 @sigprocmask(i32 %65, i32* %5, i32* null)
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @select(i32 %68, i32* %6, i32 0, i32 0, %struct.timeval* %8)
  store i32 %69, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EINTR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32, i32* @SIG_SETMASK, align 4
  %80 = call i32 @sigprocmask(i32 %79, i32* %4, i32* null)
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (...) @check_battery()
  br label %60

85:                                               ; preds = %78
  %86 = load i32*, i32** @signal_fd, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @FD_ISSET(i32 %88, i32* %6)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32*, i32** @signal_fd, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @proc_signal(i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  ret void

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %85
  %100 = load i32, i32* @apmctl_fd, align 4
  %101 = call i64 @FD_ISSET(i32 %100, i32* %6)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @apmctl_fd, align 4
  %105 = call i32 @proc_apmevent(i32 %104)
  br label %106

106:                                              ; preds = %103, %99
  br label %60
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @select(i32, i32*, i32, i32, %struct.timeval*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @check_battery(...) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i64 @proc_signal(i32) #1

declare dso_local i32 @proc_apmevent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
