; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_rxflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_rxflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i32* }
%struct.epoch_tracker = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@m_stailqpkt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uether_rxflush(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.epoch_tracker, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @UE_LOCK_ASSERT(%struct.usb_ether* %10, i32 %11)
  %13 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %14 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %13, i32 0, i32 0
  %15 = call %struct.mbuf* @mbufq_flush(i32* %14)
  store %struct.mbuf* %15, %struct.mbuf** %6, align 8
  %16 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %17 = call i32 @UE_UNLOCK(%struct.usb_ether* %16)
  %18 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @NET_EPOCH_ENTER(i32 %19)
  br label %21

21:                                               ; preds = %24, %1
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %22, %struct.mbuf** %5, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = load i32, i32* @m_stailqpkt, align 4
  %27 = call %struct.mbuf* @STAILQ_NEXT(%struct.mbuf* %25, i32 %26)
  store %struct.mbuf* %27, %struct.mbuf** %6, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %31, align 8
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %35 = call i32 %32(%struct.ifnet* %33, %struct.mbuf* %34)
  br label %21

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @NET_EPOCH_EXIT(i32 %38)
  %40 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %41 = call i32 @UE_LOCK(%struct.usb_ether* %40)
  ret void
}

declare dso_local i32 @UE_LOCK_ASSERT(%struct.usb_ether*, i32) #1

declare dso_local %struct.mbuf* @mbufq_flush(i32*) #1

declare dso_local i32 @UE_UNLOCK(%struct.usb_ether*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.mbuf* @STAILQ_NEXT(%struct.mbuf*, i32) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @UE_LOCK(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
