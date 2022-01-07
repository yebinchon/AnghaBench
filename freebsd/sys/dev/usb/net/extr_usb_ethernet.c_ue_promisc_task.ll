; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_promisc_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_promisc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_ether_cfg_task = type { %struct.usb_ether* }
%struct.usb_ether = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usb_ether*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @ue_promisc_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ue_promisc_task(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_ether_cfg_task*, align 8
  %4 = alloca %struct.usb_ether*, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %5 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %6 = bitcast %struct.usb_proc_msg* %5 to %struct.usb_ether_cfg_task*
  store %struct.usb_ether_cfg_task* %6, %struct.usb_ether_cfg_task** %3, align 8
  %7 = load %struct.usb_ether_cfg_task*, %struct.usb_ether_cfg_task** %3, align 8
  %8 = getelementptr inbounds %struct.usb_ether_cfg_task, %struct.usb_ether_cfg_task* %7, i32 0, i32 0
  %9 = load %struct.usb_ether*, %struct.usb_ether** %8, align 8
  store %struct.usb_ether* %9, %struct.usb_ether** %4, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.usb_ether*)*, i32 (%struct.usb_ether*)** %13, align 8
  %15 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %16 = call i32 %14(%struct.usb_ether* %15)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
