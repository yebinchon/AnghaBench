; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_msghdr_init_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_msghdr_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.msghdr = type { i64 }
%struct.iovec = type { i32 }
%struct.cmsghdr = type { i32, i32, i32 }

@uc_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"sending an array\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sending a scalar\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uc_msghdr_init_client(%struct.msghdr* %0, %struct.iovec* %1, i8* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmsghdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %7, align 8
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %15 = load %struct.iovec*, %struct.iovec** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @uc_msghdr_init_generic(%struct.msghdr* %14, %struct.iovec* %15, i8* %16)
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %6
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %27

25:                                               ; preds = %20
  %26 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  br label %34

32:                                               ; preds = %27
  %33 = call i64 @CMSG_SPACE(i32 0)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %39 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %38)
  store %struct.cmsghdr* %39, %struct.cmsghdr** %13, align 8
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %42 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %45 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i64, i64* %12, align 8
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i64 [ %49, %48 ], [ 0, %50 ]
  %53 = call i32 @CMSG_LEN(i64 %52)
  %54 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %55 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %6
  %57 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @uc_msghdr_init_generic(%struct.msghdr*, %struct.iovec*, i8*) #1

declare dso_local i32 @uc_dbgmsg(i8*) #1

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_LEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
