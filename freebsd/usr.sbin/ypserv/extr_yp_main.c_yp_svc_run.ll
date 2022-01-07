; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_main.c_yp_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_main.c_yp_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@yp_pid = common dso_local global i64 0, align 8
@svc_fds = common dso_local global i32 0, align 4
@resfd = common dso_local global i32 0, align 4
@RESOLVER_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"svc_run: - select failed\00", align 1
@svc_fdset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @yp_svc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yp_svc_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  %4 = call i32 (...) @_rpc_dtablesize()
  store i32 %4, i32* %2, align 4
  %5 = call i64 (...) @getpid()
  store i64 %5, i64* @yp_pid, align 8
  br label %6

6:                                                ; preds = %50, %19, %0
  %7 = load i32, i32* @svc_fds, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @resfd, align 4
  %9 = call i32 @FD_SET(i32 %8, i32* %1)
  %10 = load i32, i32* @RESOLVER_TIMEOUT, align 4
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @select(i32 %13, i32* %1, i32* null, i32* null, %struct.timeval* %3)
  switch i32 %14, label %29 [
    i32 -1, label %15
    i32 0, label %22
  ]

15:                                               ; preds = %6
  %16 = load i32, i32* @errno, align 4
  %17 = load i32, i32* @EINTR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %6

20:                                               ; preds = %15
  %21 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret void

22:                                               ; preds = %6
  %23 = call i64 (...) @getpid()
  %24 = load i64, i64* @yp_pid, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @yp_prune_dnsq()
  br label %28

28:                                               ; preds = %26, %22
  br label %44

29:                                               ; preds = %6
  %30 = call i64 (...) @getpid()
  %31 = load i64, i64* @yp_pid, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* @resfd, align 4
  %35 = call i32 @FD_ISSET(i32 %34, i32* %1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 (...) @yp_run_dnsq()
  %39 = load i32, i32* @resfd, align 4
  %40 = call i32 @FD_CLR(i32 %39, i32* %1)
  br label %41

41:                                               ; preds = %37, %33
  %42 = call i32 @svc_getreqset(i32* %1)
  br label %43

43:                                               ; preds = %41, %29
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i64, i64* @yp_pid, align 8
  %46 = call i64 (...) @getpid()
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @_exit(i32 0) #3
  unreachable

50:                                               ; preds = %44
  br label %6
}

declare dso_local i32 @_rpc_dtablesize(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @yp_prune_dnsq(...) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @yp_run_dnsq(...) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

declare dso_local i32 @svc_getreqset(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
