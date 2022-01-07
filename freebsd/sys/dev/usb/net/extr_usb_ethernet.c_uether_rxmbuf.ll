; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_rxmbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_rxmbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }

@MA_OWNED = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uether_rxmbuf(%struct.usb_ether* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ether*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %9 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %7, align 8
  %11 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @UE_LOCK_ASSERT(%struct.usb_ether* %11, i32 %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %15 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %16 = call i32 @if_inc_counter(%struct.ifnet* %14, i32 %15, i32 1)
  %17 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.ifnet* %17, %struct.ifnet** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 8
  %27 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %28 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %27, i32 0, i32 0
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = call i32 @mbufq_enqueue(i32* %28, %struct.mbuf* %29)
  ret i32 0
}

declare dso_local i32 @UE_LOCK_ASSERT(%struct.usb_ether*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @mbufq_enqueue(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
