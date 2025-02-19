; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_ifmedia_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_ifmedia_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.usb_ether* }
%struct.usb_ether = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ue_ifmedia_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @ue_ifmedia_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ue_ifmedia_upd(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.usb_ether*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 0
  %6 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  store %struct.usb_ether* %6, %struct.usb_ether** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %8 = call i32 @UE_LOCK(%struct.usb_ether* %7)
  %9 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %10 = load i32, i32* @ue_ifmedia_task, align 4
  %11 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %12 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %17 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @ue_queue_command(%struct.usb_ether* %9, i32 %10, i32* %15, i32* %20)
  %22 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %23 = call i32 @UE_UNLOCK(%struct.usb_ether* %22)
  ret i32 0
}

declare dso_local i32 @UE_LOCK(%struct.usb_ether*) #1

declare dso_local i32 @ue_queue_command(%struct.usb_ether*, i32, i32*, i32*) #1

declare dso_local i32 @UE_UNLOCK(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
