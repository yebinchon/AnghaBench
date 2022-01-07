; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_passfd_test.c_recvfd_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_unix_passfd_test.c_recvfd_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i64, i64, i64 }
%struct.msghdr = type { i8*, i64, i32, %struct.iovec* }
%struct.iovec = type { i64, i8* }

@.str = private unnamed_addr constant [19 x i8] c"recvmsg failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"recvmsg: %zd bytes received; expected %zd\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"recvmsg: did not receive control message\00", align 1
@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_RIGHTS = common dso_local global i64 0, align 8
@SCM_CREDS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"recvmsg: did not receive single-fd message\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"recvmsg: expected credentials were not received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*, i64, i64)* @recvfd_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recvfd_payload(i32 %0, i32* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cmsghdr*, align 8
  %12 = alloca %struct.msghdr, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = call i32 @bzero(%struct.msghdr* %12, i32 32)
  %18 = load i64, i64* %10, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ATF_REQUIRE(i32 %22)
  %24 = load i8*, i8** %14, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3
  store %struct.iovec* %13, %struct.iovec** %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @recvmsg(i32 %34, %struct.msghdr* %12, i32 0)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %15, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48)
  %50 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %12)
  store %struct.cmsghdr* %50, %struct.cmsghdr** %11, align 8
  %51 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %52 = icmp ne %struct.cmsghdr* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 -1, i32* %55, align 4
  br label %56

56:                                               ; preds = %102, %5
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %58 = icmp ne %struct.cmsghdr* %57, null
  br i1 %58, label %59, label %105

59:                                               ; preds = %56
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %61 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SOL_SOCKET, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %59
  %66 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %67 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SCM_RIGHTS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %73 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @CMSG_LEN(i32 4)
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %80 = call i32 @CMSG_DATA(%struct.cmsghdr* %79)
  %81 = call i32 @memcpy(i32* %78, i32 %80, i32 4)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, -1
  %85 = zext i1 %84 to i32
  %86 = call i32 @ATF_REQUIRE(i32 %85)
  br label %101

87:                                               ; preds = %71, %65, %59
  %88 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %89 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SOL_SOCKET, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %95 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SCM_CREDS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %99, %93, %87
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.cmsghdr*, %struct.cmsghdr** %11, align 8
  %104 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %12, %struct.cmsghdr* %103)
  store %struct.cmsghdr* %104, %struct.cmsghdr** %11, align 8
  br label %56

105:                                              ; preds = %56
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, -1
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @localcreds(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %114, %105
  %118 = phi i1 [ true, %105 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bzero(%struct.msghdr*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @localcreds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
