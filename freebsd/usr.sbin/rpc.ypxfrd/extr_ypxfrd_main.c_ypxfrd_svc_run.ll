; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypxfrd/extr_ypxfrd_main.c_ypxfrd_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypxfrd/extr_ypxfrd_main.c_ypxfrd_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@svc_fds = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"svc_run: - select failed\00", align 1
@forked = external dso_local global i32, align 4
@svc_fdset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ypxfrd_svc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypxfrd_svc_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @_rpc_dtablesize()
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @getpid()
  store i32 %5, i32* %2, align 4
  br label %6

6:                                                ; preds = %29, %17, %14, %0
  %7 = load i32, i32* @svc_fds, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @select(i32 %8, i32* %1, i32* null, i32* null, %struct.timeval* null)
  switch i32 %9, label %18 [
    i32 -1, label %10
    i32 0, label %17
  ]

10:                                               ; preds = %6
  %11 = load i32, i32* @errno, align 4
  %12 = load i32, i32* @EINTR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %6

15:                                               ; preds = %10
  %16 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret void

17:                                               ; preds = %6
  br label %6

18:                                               ; preds = %6
  %19 = call i32 @svc_getreqset(i32* %1)
  %20 = load i32, i32* @forked, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (...) @getpid()
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @exit(i32 0) #3
  unreachable

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %28
  br label %6
}

declare dso_local i32 @_rpc_dtablesize(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @svc_getreqset(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
