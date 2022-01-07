; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpconnect/extr_tcpconnect.c_try_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpconnect/extr_tcpconnect.c_try_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.fd_set = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"socket(PF_INET, SOCK_STREAM)\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fcntl(s, FIOBIO, 1)\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"connect(%s)\00", align 1
@EINTR = common dso_local global i64 0, align 8
@timer_fired = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*)* @try_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_connect(%struct.sockaddr_in* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca %struct.fd_set, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %3, align 8
  %7 = load i32, i32* @PF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  store i32 1, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @F_SETFL, align 4
  %17 = load i32, i32* @FIONBIO, align 4
  %18 = call i64 @fcntl(i32 %15, i32 %16, i32 %17, i32* %5)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  %23 = call i32 @FD_ZERO(%struct.fd_set* %4)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @FD_SET(i32 %24, %struct.fd_set* %4)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %28 = bitcast %struct.sockaddr_in* %27 to %struct.sockaddr*
  %29 = call i64 @connect(i32 %26, %struct.sockaddr* %28, i32 4)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINPROGRESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @inet_ntoa(i32 %38)
  %40 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %31, %22
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i64 @select(i32 %43, %struct.fd_set* %4, %struct.fd_set* %4, %struct.fd_set* %4, i32* null)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EINTR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @timer_fired, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %46
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINTR, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %50
  %58 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  store i32 -1, i32* %2, align 4
  br label %63

60:                                               ; preds = %41
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @close(i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @fcntl(i32, i32, i32, i32*) #1

declare dso_local i32 @FD_ZERO(%struct.fd_set*) #1

declare dso_local i32 @FD_SET(i32, %struct.fd_set*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i64 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
