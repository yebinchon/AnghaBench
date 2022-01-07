; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_sysctl_iflist_ifm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_sysctl_iflist_ifm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32 }
%struct.if_data = type { i32 }
%struct.rt_addrinfo = type { i32 }
%struct.walkarg = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.if_msghdr = type { i32, %struct.if_data, i64, i32, i32 }

@SCTL_MASK32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.if_data*, %struct.rt_addrinfo*, %struct.walkarg*, i32)* @sysctl_iflist_ifm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_iflist_ifm(%struct.ifnet* %0, %struct.if_data* %1, %struct.rt_addrinfo* %2, %struct.walkarg* %3, i32 %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.if_data*, align 8
  %8 = alloca %struct.rt_addrinfo*, align 8
  %9 = alloca %struct.walkarg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.if_msghdr*, align 8
  %12 = alloca %struct.if_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.if_data* %1, %struct.if_data** %7, align 8
  store %struct.rt_addrinfo* %2, %struct.rt_addrinfo** %8, align 8
  store %struct.walkarg* %3, %struct.walkarg** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.walkarg*, %struct.walkarg** %9, align 8
  %14 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.if_msghdr*
  store %struct.if_msghdr* %16, %struct.if_msghdr** %11, align 8
  %17 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %8, align 8
  %18 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.if_msghdr*, %struct.if_msghdr** %11, align 8
  %21 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = load %struct.if_msghdr*, %struct.if_msghdr** %11, align 8
  %30 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.if_msghdr*, %struct.if_msghdr** %11, align 8
  %35 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.if_msghdr*, %struct.if_msghdr** %11, align 8
  %37 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.if_msghdr*, %struct.if_msghdr** %11, align 8
  %39 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %38, i32 0, i32 1
  store %struct.if_data* %39, %struct.if_data** %12, align 8
  %40 = load %struct.if_data*, %struct.if_data** %12, align 8
  %41 = load %struct.if_data*, %struct.if_data** %7, align 8
  %42 = call i32 @memcpy(%struct.if_data* %40, %struct.if_data* %41, i32 4)
  %43 = load %struct.walkarg*, %struct.walkarg** %9, align 8
  %44 = getelementptr inbounds %struct.walkarg, %struct.walkarg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.if_msghdr*, %struct.if_msghdr** %11, align 8
  %47 = ptrtoint %struct.if_msghdr* %46 to i32
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @SYSCTL_OUT(%struct.TYPE_2__* %45, i32 %47, i32 %48)
  ret i32 %49
}

declare dso_local i32 @memcpy(%struct.if_data*, %struct.if_data*, i32) #1

declare dso_local i32 @SYSCTL_OUT(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
