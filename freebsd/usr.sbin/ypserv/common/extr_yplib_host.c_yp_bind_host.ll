; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_bind_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/common/extr_yplib_host.c_yp_bind_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i64 }
%struct.timeval = type { i32, i64 }

@yp_bind_host.client = internal global i32* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"inet_aton: invalid address %s.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"gethostbyname: unknown host %s.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"clntudp_create: no contact with host %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yp_bind_host(i8* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i32 @memset(%struct.sockaddr_in* %11, i32 0, i32 16)
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i32 16, i32* %16, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @htons(i64 %23)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 48
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 57
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %39 = call i64 @inet_aton(i8* %37, %struct.TYPE_2__* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %36
  br label %61

45:                                               ; preds = %31, %26
  %46 = load i8*, i8** %6, align 8
  %47 = call %struct.hostent* @gethostbyname(i8* %46)
  store %struct.hostent* %47, %struct.hostent** %12, align 8
  %48 = load %struct.hostent*, %struct.hostent** %12, align 8
  %49 = icmp eq %struct.hostent* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.hostent*, %struct.hostent** %12, align 8
  %55 = getelementptr inbounds %struct.hostent, %struct.hostent* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %44
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 10, i32* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32* @clnttcp_create(%struct.sockaddr_in* %11, i32 %67, i32 %68, i32* %14, i32 0, i32 0)
  store i32* %69, i32** @yp_bind_host.client, align 8
  br label %79

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = bitcast %struct.timeval* %13 to { i32, i64 }*
  %74 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32* @clntudp_create(%struct.sockaddr_in* %11, i32 %71, i32 %72, i32 %75, i64 %77, i32* %14)
  store i32* %78, i32** @yp_bind_host.client, align 8
  br label %79

79:                                               ; preds = %70, %66
  %80 = load i32*, i32** @yp_bind_host.client, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32*, i32** @yp_bind_host.client, align 8
  ret i32* %86
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @inet_aton(i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32* @clnttcp_create(%struct.sockaddr_in*, i32, i32, i32*, i32, i32) #1

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
