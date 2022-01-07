; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_my_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_my_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i8* }

@FD_SETSIZE = common dso_local global i32 0, align 4
@terminate_rfd = common dso_local global i32 0, align 4
@MASKVAL = common dso_local global i8* null, align 8
@svc_maxfd = common dso_local global i32 0, align 4
@svc_fdset = common dso_local global i32 0, align 4
@doterminate = common dso_local global i64 0, align 8
@rpcbindlockfd = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@debugging = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_svc_run() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pollfd*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @FD_SETSIZE, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = alloca %struct.pollfd, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  br label %14

14:                                               ; preds = %75, %69, %60, %0
  store %struct.pollfd* %13, %struct.pollfd** %7, align 8
  %15 = load i32, i32* @terminate_rfd, align 4
  %16 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @MASKVAL, align 8
  %19 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %22 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 1
  store %struct.pollfd* %22, %struct.pollfd** %7, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %41, %14
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @svc_maxfd, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @FD_ISSET(i32 %28, i32* @svc_fdset)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @MASKVAL, align 8
  %36 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %38, i32 1
  store %struct.pollfd* %39, %struct.pollfd** %7, align 8
  br label %40

40:                                               ; preds = %31, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.pollfd*, %struct.pollfd** %7, align 8
  %46 = ptrtoint %struct.pollfd* %45 to i64
  %47 = ptrtoint %struct.pollfd* %13 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 16
  store i64 %49, i64* %1, align 8
  store i32 0, i32* %4, align 4
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @poll(%struct.pollfd* %13, i64 %50, i32 30000)
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* @doterminate, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @rpcbindlockfd, align 4
  %56 = call i32 @close(i32 %55)
  %57 = call i32 @exit(i32 2) #4
  unreachable

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %64 [
    i32 -1, label %60
    i32 0, label %60
  ]

60:                                               ; preds = %58, %58
  %61 = load i32, i32* @svc_fdset, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @__svc_clean_idle(i32* %8, i32 30, i32 %62)
  br label %14

64:                                               ; preds = %58
  %65 = load i64, i64* %1, align 8
  %66 = call i32 @check_rmtcalls(%struct.pollfd* %13, i64 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %14

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @svc_getreq_poll(%struct.pollfd* %13, i32 %73)
  br label %75

75:                                               ; preds = %70
  br label %14
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @poll(%struct.pollfd*, i64, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @__svc_clean_idle(i32*, i32, i32) #2

declare dso_local i32 @check_rmtcalls(%struct.pollfd*, i64) #2

declare dso_local i32 @svc_getreq_poll(%struct.pollfd*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
