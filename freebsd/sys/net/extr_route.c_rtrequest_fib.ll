; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtrequest_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rtrequest_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.rtentry = type { i32 }
%struct.rt_addrinfo = type { i32, %struct.sockaddr** }

@EINVAL = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtrequest_fib(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4, %struct.rtentry** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtentry**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rt_addrinfo, align 8
  store i32 %0, i32* %9, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.rtentry** %5, %struct.rtentry*** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %8, align 4
  br label %47

23:                                               ; preds = %7
  %24 = ptrtoint %struct.rt_addrinfo* %16 to i32
  %25 = call i32 @bzero(i32 %24, i32 16)
  %26 = load i32, i32* %13, align 4
  %27 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %29 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %30 = load %struct.sockaddr**, %struct.sockaddr*** %29, align 8
  %31 = load i64, i64* @RTAX_DST, align 8
  %32 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %30, i64 %31
  store %struct.sockaddr* %28, %struct.sockaddr** %32, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %34 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %35 = load %struct.sockaddr**, %struct.sockaddr*** %34, align 8
  %36 = load i64, i64* @RTAX_GATEWAY, align 8
  %37 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %35, i64 %36
  store %struct.sockaddr* %33, %struct.sockaddr** %37, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %39 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %16, i32 0, i32 1
  %40 = load %struct.sockaddr**, %struct.sockaddr*** %39, align 8
  %41 = load i64, i64* @RTAX_NETMASK, align 8
  %42 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %40, i64 %41
  store %struct.sockaddr* %38, %struct.sockaddr** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.rtentry**, %struct.rtentry*** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @rtrequest1_fib(i32 %43, %struct.rt_addrinfo* %16, %struct.rtentry** %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %23, %21
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @rtrequest1_fib(i32, %struct.rt_addrinfo*, %struct.rtentry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
