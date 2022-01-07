; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_message_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_message_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.msghdr = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.cmsghdr = type { i64 }

@uc_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"message_recv: recvmsg\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"message_recv: recvmsg: received %zd of %zu bytes\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"recv: data size %zd\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"recv: msghdr.msg_controllen %u\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"recv: cmsghdr.cmsg_len %u\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"message_recv: received message has wrong content\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_message_recv(i32 %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 1), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = call i64 (...) @uc_sync_recv()
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %71

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i64 [ %26, %21 ], [ 0, %27 ]
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %32 = load i32, i32* @MSG_WAITALL, align 4
  %33 = call i64 @recvmsg(i32 %30, %struct.msghdr* %31, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @uc_logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  store i32 -1, i32* %3, align 4
  br label %71

46:                                               ; preds = %38
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %54 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %53)
  store %struct.cmsghdr* %54, %struct.cmsghdr** %6, align 8
  %55 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %56 = icmp ne %struct.cmsghdr* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %59 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %57, %46
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0, i32 1), align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0, i32 0), align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @memcmp(i32 %63, i32 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %71

70:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %68, %42, %36, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @uc_sync_recv(...) #1

declare dso_local i64 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i32 @uc_logmsgx(i8*, ...) #1

declare dso_local i32 @uc_dbgmsg(i8*, i64) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
