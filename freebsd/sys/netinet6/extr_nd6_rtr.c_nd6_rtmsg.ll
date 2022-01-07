; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_rtmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_nd6_rtmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, i32, %struct.TYPE_2__*, %struct.ifnet*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.rt_addrinfo = type { i32* }
%struct.ifaddr = type { i32 }
%struct.epoch_tracker = type { i32 }

@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@RTAX_IFP = common dso_local global i64 0, align 8
@RTAX_IFA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rtentry*)* @nd6_rtmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_rtmsg(i32 %0, %struct.rtentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.rt_addrinfo, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.epoch_tracker, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rtentry* %1, %struct.rtentry** %4, align 8
  %9 = ptrtoint %struct.rt_addrinfo* %5 to i32
  %10 = call i32 @bzero(i32 %9, i32 8)
  %11 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %12 = call i32 @rt_key(%struct.rtentry* %11)
  %13 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @RTAX_DST, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @RTAX_GATEWAY, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %25 = call i32 @rt_mask(%struct.rtentry* %24)
  %26 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @RTAX_NETMASK, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %31 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %30, i32 0, i32 3
  %32 = load %struct.ifnet*, %struct.ifnet** %31, align 8
  store %struct.ifnet* %32, %struct.ifnet** %6, align 8
  %33 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %34 = icmp ne %struct.ifnet* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NET_EPOCH_ENTER(i32 %37)
  %39 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = call %struct.ifaddr* @CK_STAILQ_FIRST(i32* %40)
  store %struct.ifaddr* %41, %struct.ifaddr** %7, align 8
  %42 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %43 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @RTAX_IFP, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %50 = call i32 @ifa_ref(%struct.ifaddr* %49)
  %51 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NET_EPOCH_EXIT(i32 %52)
  %54 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %55 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @RTAX_IFA, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %58, i32* %62, align 4
  br label %64

63:                                               ; preds = %2
  store %struct.ifaddr* null, %struct.ifaddr** %7, align 8
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %67 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %70 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @rt_missmsg_fib(i32 %65, %struct.rt_addrinfo* %5, i32 %68, i32 0, i32 %71)
  %73 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %74 = icmp ne %struct.ifaddr* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %77 = call i32 @ifa_free(%struct.ifaddr* %76)
  br label %78

78:                                               ; preds = %75, %64
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.ifaddr* @CK_STAILQ_FIRST(i32*) #1

declare dso_local i32 @ifa_ref(%struct.ifaddr*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @rt_missmsg_fib(i32, %struct.rt_addrinfo*, i32, i32, i32) #1

declare dso_local i32 @ifa_free(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
