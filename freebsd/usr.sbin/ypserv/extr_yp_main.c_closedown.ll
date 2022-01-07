; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_main.c_closedown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_main.c_closedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_rpcsvcstate = common dso_local global i64 0, align 8
@_IDLE = common dso_local global i64 0, align 8
@closedown.size = internal global i32 0, align 4
@_rpcfdtype = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@svc_fdset = external dso_local global i32, align 4
@_SERVED = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@_RPCSVC_CLOSEDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @closedown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closedown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @_rpcsvcstate, align 8
  %6 = load i64, i64* @_IDLE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = load i64, i64* @_rpcfdtype, align 8
  %10 = load i64, i64* @SOCK_DGRAM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 (...) @unregister()
  %14 = call i32 @exit(i32 0) #3
  unreachable

15:                                               ; preds = %8
  %16 = load i32, i32* @closedown.size, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @getdtablesize()
  store i32 %19, i32* @closedown.size, align 4
  br label %20

20:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @closedown.size, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 2
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @FD_ISSET(i32 %31, i32* @svc_fdset)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %21

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call i32 (...) @unregister()
  %46 = call i32 @exit(i32 0) #3
  unreachable

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i64, i64* @_rpcsvcstate, align 8
  %50 = load i64, i64* @_SERVED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @_IDLE, align 8
  store i64 %53, i64* @_rpcsvcstate, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* @SIGALRM, align 4
  %56 = call i32 @signal(i32 %55, i32 ptrtoint (void (i32)* @closedown to i32))
  %57 = load i32, i32* @_RPCSVC_CLOSEDOWN, align 4
  %58 = sdiv i32 %57, 2
  %59 = call i32 @alarm(i32 %58)
  ret void
}

declare dso_local i32 @unregister(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getdtablesize(...) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
