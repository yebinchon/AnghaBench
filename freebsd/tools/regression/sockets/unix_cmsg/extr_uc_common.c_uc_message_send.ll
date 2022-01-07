; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_message_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_message_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.msghdr = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cmsghdr = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"send: data size %zu\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"send: msghdr.msg_controllen %u\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"send: cmsghdr.cmsg_len %u\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"message_send: sendmsg\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"message_send: sendmsg: sent %zd of %zu bytes\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_message_send(i32 %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  %9 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %10 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i64 [ %18, %13 ], [ 0, %19 ]
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %29 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %28)
  store %struct.cmsghdr* %29, %struct.cmsghdr** %6, align 8
  %30 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %31 = icmp ne %struct.cmsghdr* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %34 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %40 = call i64 @sendmsg(i32 %38, %struct.msghdr* %39, i32 0)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @uc_logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

45:                                               ; preds = %37
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @uc_logmsgx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %50, i64 %51)
  store i32 -1, i32* %3, align 4
  br label %62

53:                                               ; preds = %45
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0), align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = call i64 (...) @uc_sync_send()
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %62

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %53
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %49, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @uc_dbgmsg(i8*, i64) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i32 @uc_logmsgx(i8*, i64, i64) #1

declare dso_local i64 @uc_sync_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
