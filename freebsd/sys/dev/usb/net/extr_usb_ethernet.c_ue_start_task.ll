; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_start_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_start_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_ether_cfg_task = type { %struct.usb_ether* }
%struct.usb_ether = type { i32, %struct.TYPE_2__*, %struct.ifnet* }
%struct.TYPE_2__ = type { i32*, i32 (%struct.usb_ether*)* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ue_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @ue_start_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ue_start_task(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_ether_cfg_task*, align 8
  %4 = alloca %struct.usb_ether*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %6 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %7 = bitcast %struct.usb_proc_msg* %6 to %struct.usb_ether_cfg_task*
  store %struct.usb_ether_cfg_task* %7, %struct.usb_ether_cfg_task** %3, align 8
  %8 = load %struct.usb_ether_cfg_task*, %struct.usb_ether_cfg_task** %3, align 8
  %9 = getelementptr inbounds %struct.usb_ether_cfg_task, %struct.usb_ether_cfg_task* %8, i32 0, i32 0
  %10 = load %struct.usb_ether*, %struct.usb_ether** %9, align 8
  store %struct.usb_ether* %10, %struct.usb_ether** %4, align 8
  %11 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %11, i32 0, i32 2
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @UE_LOCK_ASSERT(%struct.usb_ether* %14, i32 %15)
  %17 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %18 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.usb_ether*)*, i32 (%struct.usb_ether*)** %20, align 8
  %22 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %23 = call i32 %21(%struct.usb_ether* %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %33 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %40 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %39, i32 0, i32 0
  %41 = load i32, i32* @hz, align 4
  %42 = load i32, i32* @ue_watchdog, align 4
  %43 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %44 = call i32 @usb_callout_reset(i32* %40, i32 %41, i32 %42, %struct.usb_ether* %43)
  br label %45

45:                                               ; preds = %30, %38, %31
  ret void
}

declare dso_local i32 @UE_LOCK_ASSERT(%struct.usb_ether*, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
