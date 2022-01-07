; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_sysctl_iflist_ifam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_sysctl_iflist_ifam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt_addrinfo = type { i32 }
%struct.walkarg = type { i64, i32 }
%struct.ifa_msghdr = type { i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifaddr*, %struct.rt_addrinfo*, %struct.walkarg*, i32)* @sysctl_iflist_ifam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_iflist_ifam(%struct.ifaddr* %0, %struct.rt_addrinfo* %1, %struct.walkarg* %2, i32 %3) #0 {
  %5 = alloca %struct.ifaddr*, align 8
  %6 = alloca %struct.rt_addrinfo*, align 8
  %7 = alloca %struct.walkarg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifa_msghdr*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %5, align 8
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %6, align 8
  store %struct.walkarg* %2, %struct.walkarg** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.walkarg*, %struct.walkarg** %7, align 8
  %11 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ifa_msghdr*
  store %struct.ifa_msghdr* %13, %struct.ifa_msghdr** %9, align 8
  %14 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %6, align 8
  %15 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %9, align 8
  %18 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %20 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %9, align 8
  %23 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %25 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %9, align 8
  %30 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %9, align 8
  %32 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %34 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %9, align 8
  %39 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.walkarg*, %struct.walkarg** %7, align 8
  %41 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.walkarg*, %struct.walkarg** %7, align 8
  %44 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @SYSCTL_OUT(i32 %42, i64 %45, i32 %46)
  ret i32 %47
}

declare dso_local i32 @SYSCTL_OUT(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
