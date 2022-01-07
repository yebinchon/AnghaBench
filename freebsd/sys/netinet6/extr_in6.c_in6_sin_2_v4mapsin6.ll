; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_sin_2_v4mapsin6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_sin_2_v4mapsin6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64* }

@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_INT32_SMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_sin_2_v4mapsin6(%struct.sockaddr_in* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %3, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %4, align 8
  %5 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %6 = call i32 @bzero(%struct.sockaddr_in6* %5, i32 24)
  %7 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %8 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  store i32 24, i32* %8, align 8
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @IPV6_ADDR_INT32_SMP, align 8
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  store i64 %27, i64* %32, align 8
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  store i64 %36, i64* %41, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
