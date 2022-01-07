; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_ifdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_ifdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32, i32, i32, i32, i32*, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@ueunit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uether_ifdetach(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %4 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %5 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %4, i32 0, i32 0
  %6 = call i32 @usb_proc_drain(i32* %5)
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %7, i32 0, i32 7
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = icmp ne %struct.ifnet* %10, null
  br i1 %11, label %12, label %56

12:                                               ; preds = %1
  %13 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %14 = call i32 @UE_LOCK(%struct.usb_ether* %13)
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %22 = call i32 @UE_UNLOCK(%struct.usb_ether* %21)
  %23 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %24 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %23, i32 0, i32 6
  %25 = call i32 @usb_callout_drain(i32* %24)
  %26 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %27 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %12
  %31 = call i32 @mtx_lock(i32* @Giant)
  %32 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %33 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %36 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @device_delete_child(i32 %34, i32* %37)
  %39 = call i32 @mtx_unlock(i32* @Giant)
  br label %40

40:                                               ; preds = %30, %12
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = call i32 @ether_ifdetach(%struct.ifnet* %41)
  %43 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %44 = call i32 @if_free(%struct.ifnet* %43)
  %45 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %46 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %45, i32 0, i32 3
  %47 = call i32 @sysctl_ctx_free(i32* %46)
  %48 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %49 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %48, i32 0, i32 2
  %50 = call i32 @mbufq_drain(i32* %49)
  %51 = load i32, i32* @ueunit, align 4
  %52 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %53 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @free_unr(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %40, %1
  %57 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %58 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %57, i32 0, i32 0
  %59 = call i32 @usb_proc_free(i32* %58)
  ret void
}

declare dso_local i32 @usb_proc_drain(i32*) #1

declare dso_local i32 @UE_LOCK(%struct.usb_ether*) #1

declare dso_local i32 @UE_UNLOCK(%struct.usb_ether*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @usb_proc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
