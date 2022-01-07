; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_ypbindproc_setdom_2_yp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_ypbindproc_setdom_2_yp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@ypbindproc_setdom_2_yp.result = internal global i8* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Domain name '%s' has embedded slash -- rejecting.\00", align 1
@ypsetmode = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPPORT_RESERVED = common dso_local global i64 0, align 8
@YPVERS = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ypbindproc_setdom_2_yp(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @strchr(i32 %12, i8 signext 47)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @LOG_WARNING, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @syslog(i32 %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i8* null, i8** %4, align 8
  br label %80

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.sockaddr_in* @svc_getcaller(i32* %22)
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %8, align 8
  %24 = load i32, i32* @ypsetmode, align 4
  switch i32 %24, label %39 [
    i32 129, label %25
    i32 130, label %37
    i32 128, label %38
  ]

25:                                               ; preds = %21
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INADDR_LOOPBACK, align 4
  %31 = call i32 @htonl(i32 %30)
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @svcerr_noprog(i32* %34)
  store i8* null, i8** %4, align 8
  br label %80

36:                                               ; preds = %25
  br label %42

37:                                               ; preds = %21
  br label %42

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %21, %38
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @svcerr_noprog(i32* %40)
  store i8* null, i8** %4, align 8
  br label %80

42:                                               ; preds = %37, %36
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ntohs(i32 %45)
  %47 = load i64, i64* @IPPORT_RESERVED, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @svcerr_noprog(i32* %50)
  store i8* null, i8** %4, align 8
  br label %80

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @YPVERS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @svcerr_noprog(i32* %59)
  store i8* null, i8** %4, align 8
  br label %80

61:                                               ; preds = %52
  %62 = call i32 @bzero(%struct.sockaddr_in* %9, i32 12)
  %63 = load i32, i32* @AF_INET, align 4
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = call i32 @memcpy(i32* %66, i32* %69, i32 4)
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @memcpy(i32* %71, i32* %74, i32 4)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @rpc_received(i32 %78, %struct.sockaddr_in* %9, i32 1)
  store i8* bitcast (i8** @ypbindproc_setdom_2_yp.result to i8*), i8** %4, align 8
  br label %80

80:                                               ; preds = %61, %58, %49, %39, %33, %15
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local %struct.sockaddr_in* @svc_getcaller(i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @svcerr_noprog(i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rpc_received(i32, %struct.sockaddr_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
