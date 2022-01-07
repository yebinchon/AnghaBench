; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_check_rmtcalls.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_check_rmtcalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64 }
%struct.TYPE_4__ = type { i8* }

@rpcb_rmtcalls = common dso_local global i32 0, align 4
@debugging = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, i32)* @check_rmtcalls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rmtcalls(%struct.pollfd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.pollfd* %0, %struct.pollfd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @rpcb_rmtcalls, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load i32, i32* @rpcb_rmtcalls, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %59, %13
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i64 %22
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_4__* @find_rmtcallxprt_by_fd(i32 %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %9, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %19
  %29 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i64 %31
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %39, i64 %41
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = call i32 @handle_reply(i32 %44, %struct.TYPE_4__* %45)
  %47 = load %struct.pollfd*, %struct.pollfd** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i64 %49
  %51 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %62

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %28
  br label %58

58:                                               ; preds = %57, %19
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %15

62:                                               ; preds = %55, %15
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_4__* @find_rmtcallxprt_by_fd(i32) #1

declare dso_local i32 @handle_reply(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
