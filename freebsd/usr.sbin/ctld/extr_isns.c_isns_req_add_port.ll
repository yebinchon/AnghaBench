; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_add_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns_req = type { i32 }
%struct.addrinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unsupported address family %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isns_req_add_port(%struct.isns_req* %0, i32 %1, %struct.addrinfo* %2) #0 {
  %4 = alloca %struct.isns_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i32, align 4
  store %struct.isns_req* %0, %struct.isns_req** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.addrinfo* %2, %struct.addrinfo** %6, align 8
  %10 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %43 [
    i32 129, label %15
    i32 128, label %29
  ]

15:                                               ; preds = %3
  %16 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = bitcast %struct.TYPE_2__* %18 to i8*
  %20 = bitcast i8* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %7, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = call i32 @be32enc(i32* %9, i32 %24)
  %26 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @isns_req_add(%struct.isns_req* %26, i32 %27, i32 4, i32* %9)
  br label %50

29:                                               ; preds = %3
  %30 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = bitcast %struct.TYPE_2__* %32 to i8*
  %34 = bitcast i8* %33 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %34, %struct.sockaddr_in6** %8, align 8
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = call i32 @be32enc(i32* %9, i32 %38)
  %40 = load %struct.isns_req*, %struct.isns_req** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @isns_req_add(%struct.isns_req* %40, i32 %41, i32 4, i32* %9)
  br label %50

43:                                               ; preds = %3
  %44 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %29, %15
  ret void
}

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @isns_req_add(%struct.isns_req*, i32, i32, i32*) #1

declare dso_local i32 @log_errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
