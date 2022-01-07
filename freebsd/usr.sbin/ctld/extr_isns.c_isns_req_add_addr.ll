; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_add_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns_req = type { i32 }
%struct.addrinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unsupported address family %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isns_req_add_addr(%struct.isns_req* %0, i32 %1, %struct.addrinfo* %2) #0 {
  %4 = alloca %struct.isns_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca [16 x i32], align 16
  store %struct.isns_req* %0, %struct.isns_req** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.addrinfo* %2, %struct.addrinfo** %6, align 8
  %10 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %44 [
    i32 129, label %15
    i32 128, label %33
  ]

15:                                               ; preds = %3
  %16 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = bitcast %struct.TYPE_2__* %18 to i8*
  %20 = bitcast i8* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %7, align 8
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 10)
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 10
  store i32 255, i32* %23, align 8
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 11
  store i32 255, i32* %24, align 4
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 12
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = call i32 @memcpy(i32* %25, i32* %27, i32 4)
  %29 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %32 = call i32 @isns_req_add(%struct.isns_req* %29, i32 %30, i32 64, i32* %31)
  br label %51

33:                                               ; preds = %3
  %34 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = bitcast %struct.TYPE_2__* %36 to i8*
  %38 = bitcast i8* %37 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %38, %struct.sockaddr_in6** %8, align 8
  %39 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  %43 = call i32 @isns_req_add(%struct.isns_req* %39, i32 %40, i32 4, i32* %42)
  br label %51

44:                                               ; preds = %3
  %45 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %33, %15
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @isns_req_add(%struct.isns_req*, i32, i32, i32*) #1

declare dso_local i32 @log_errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
