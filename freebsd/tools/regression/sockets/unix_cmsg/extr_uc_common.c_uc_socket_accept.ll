; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_socket_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_socket_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"socket_accept: select\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"socket_accept: select timeout\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"socket_accept: accept\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"socket_accept: fcntl(F_GETFL)\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"socket_accept: fcntl(F_SETFL)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"socket_accept: close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_socket_accept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @FD_ZERO(i32* %4)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @FD_SET(i32 %11, i32* %4)
  %13 = load i32, i32* @TIMEOUT, align 4
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @select(i32 %17, i32* %4, i32* null, i32* null, %struct.timeval* %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @uc_logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @uc_logmsgx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %63

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @accept(i32 %29, %struct.sockaddr* null, i32* null)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @uc_logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %63

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @F_GETFL, align 4
  %38 = call i32 @fcntl(i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @uc_logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %56

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @F_SETFL, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @O_NONBLOCK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @fcntl(i32 %44, i32 %45, i32 %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call i32 @uc_logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %52, %41
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @close(i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @uc_logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  store i32 -1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %54, %33, %26, %21
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @uc_dbgmsg(i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i32 @uc_logmsgx(i8*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
