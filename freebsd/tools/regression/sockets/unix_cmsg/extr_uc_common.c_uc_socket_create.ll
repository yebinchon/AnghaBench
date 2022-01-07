; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_socket_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timeval = type { i64, i32 }
%struct.sockaddr = type { i32 }

@PF_LOCAL = common dso_local global i32 0, align 4
@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"socket_create: socket(PF_LOCAL, %s, 0)\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"socket_create: setsockopt(SO_RCVTIMEO/SO_SNDTIMEO)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"socket_create: bind(%s)\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@LISTENQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"socket_create: listen\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"socket_create: fcntl(F_GETFL)\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"socket_create: fcntl(F_SETFL)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"socket_create: close\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"socket_close: unlink(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_socket_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @PF_LOCAL, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0), align 8
  %7 = call i32 @socket(i32 %5, i64 %6, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 4), align 8
  %12 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 -1, i32* %1, align 4
  br label %97

13:                                               ; preds = %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 3), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1), align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @TIMEOUT, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SOL_SOCKET, align 4
  %24 = load i32, i32* @SO_RCVTIMEO, align 4
  %25 = call i64 @setsockopt(i32 %22, i32 %23, i32 %24, %struct.timeval* %2, i32 16)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SOL_SOCKET, align 4
  %30 = load i32, i32* @SO_SNDTIMEO, align 4
  %31 = call i64 @setsockopt(i32 %28, i32 %29, i32 %30, %struct.timeval* %2, i32 16)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %18
  %34 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %79

35:                                               ; preds = %27
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 3), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 2, i32 1), align 4
  %41 = call i64 @bind(i32 %39, %struct.sockaddr* bitcast (%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 2) to %struct.sockaddr*), i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 2, i32 0), align 4
  %45 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %79

46:                                               ; preds = %38
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0), align 8
  %48 = load i64, i64* @SOCK_STREAM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @LISTENQ, align 4
  %53 = call i64 @listen(i32 %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %79

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @F_GETFL, align 4
  %60 = call i32 @fcntl(i32 %58, i32 %59, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %79

65:                                               ; preds = %57
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @F_SETFL, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @O_NONBLOCK, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @fcntl(i32 %66, i32 %67, i32 %70)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %35
  %78 = load i32, i32* %3, align 4
  store i32 %78, i32* %1, align 4
  br label %97

79:                                               ; preds = %73, %63, %55, %43, %33
  %80 = load i32, i32* %3, align 4
  %81 = call i64 @close(i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 3), align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 2, i32 0), align 4
  %90 = call i64 @unlink(i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 2, i32 0), align 4
  %94 = call i32 (i8*, ...) @uc_logmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %95, %85
  store i32 -1, i32* %1, align 4
  br label %97

97:                                               ; preds = %96, %77, %10
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i32 @socket(i32, i64, i32) #1

declare dso_local i32 @uc_logmsg(i8*, ...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
