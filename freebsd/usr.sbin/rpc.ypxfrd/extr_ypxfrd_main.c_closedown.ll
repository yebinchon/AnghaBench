; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypxfrd/extr_ypxfrd_main.c_closedown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.ypxfrd/extr_ypxfrd_main.c_closedown.c"
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
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load i64, i64* @_rpcfdtype, align 8
  %10 = load i64, i64* @SOCK_DGRAM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @exit(i32 0) #3
  unreachable

14:                                               ; preds = %8
  %15 = load i32, i32* @closedown.size, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @getdtablesize()
  store i32 %18, i32* @closedown.size, align 4
  br label %19

19:                                               ; preds = %17, %14
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @closedown.size, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 2
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @FD_ISSET(i32 %30, i32* @svc_fdset)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %20

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @exit(i32 0) #3
  unreachable

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i64, i64* @_rpcsvcstate, align 8
  %48 = load i64, i64* @_SERVED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @_IDLE, align 8
  store i64 %51, i64* @_rpcsvcstate, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* @SIGALRM, align 4
  %54 = call i32 @signal(i32 %53, i32 ptrtoint (void (i32)* @closedown to i32))
  %55 = load i32, i32* @_RPCSVC_CLOSEDOWN, align 4
  %56 = sdiv i32 %55, 2
  %57 = call i32 @alarm(i32 %56)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @getdtablesize(...) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @alarm(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
