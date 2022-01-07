; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_event_cmd_exec_act.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_event_cmd_exec_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_cmd_exec = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@_PATH_BSHELL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_cmd_exec_act(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.event_cmd_exec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.event_cmd_exec*
  store %struct.event_cmd_exec* %7, %struct.event_cmd_exec** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = call i32 (...) @fork()
  store i32 %8, i32* %5, align 4
  switch i32 %8, label %27 [
    i32 -1, label %9
    i32 0, label %11
  ]

9:                                                ; preds = %1
  %10 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @SIGHUP, align 4
  %13 = load i32, i32* @SIG_DFL, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = load i32, i32* @SIGCHLD, align 4
  %16 = load i32, i32* @SIG_DFL, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = load i32, i32* @SIGTERM, align 4
  %19 = load i32, i32* @SIG_DFL, align 4
  %20 = call i32 @signal(i32 %18, i32 %19)
  %21 = load i32, i32* @_PATH_BSHELL, align 4
  %22 = load %struct.event_cmd_exec*, %struct.event_cmd_exec** %3, align 8
  %23 = getelementptr inbounds %struct.event_cmd_exec, %struct.event_cmd_exec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @execl(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %24, i8* null)
  %26 = call i32 @_exit(i32 127) #3
  unreachable

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @waitpid(i32 %29, i32* %4, i32 0)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  %36 = load i32, i32* @EINTR, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %28, label %40

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40, %9
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @execl(i32, i8*, i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
