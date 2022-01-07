; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arp_ifinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arp_ifinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifaddr = type { %struct.sockaddr*, i32* }
%struct.sockaddr = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INADDR_ANY = common dso_local global i64 0, align 8
@garp_rexmit_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arp_ifinit(%struct.ifnet* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  %5 = alloca %struct.epoch_tracker, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  %8 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %9 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %15 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %14, i32 0, i32 0
  %16 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  store %struct.sockaddr* %16, %struct.sockaddr** %7, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %6, align 8
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ntohl(i32 %22)
  %24 = load i64, i64* @INADDR_ANY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %51

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NET_EPOCH_ENTER(i32 %29)
  %31 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = call i32 @IF_LLADDR(%struct.ifnet* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @arp_announce_ifaddr(%struct.ifnet* %31, i32 %37, i32 %35)
  %39 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NET_EPOCH_EXIT(i32 %40)
  %42 = load i64, i64* @garp_rexmit_count, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %46 = call i32 @garp_timer_start(%struct.ifaddr* %45)
  br label %47

47:                                               ; preds = %44, %27
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %50 = call i32 @arp_add_ifa_lle(%struct.ifnet* %48, %struct.sockaddr* %49)
  br label %51

51:                                               ; preds = %47, %26, %12
  ret void
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @arp_announce_ifaddr(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @garp_timer_start(%struct.ifaddr*) #1

declare dso_local i32 @arp_add_ifa_lle(%struct.ifnet*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
