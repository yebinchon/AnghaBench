; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_iface_khandler_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_iface_khandler_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vnet_mtx = common dso_local global i32 0, align 4
@num_vnets = common dso_local global i32 0, align 4
@ifnet_arrival_event = common dso_local global i32 0, align 4
@ipfw_ifattach_event = common dso_local global i32 0, align 4
@ifnet_departure_event = common dso_local global i32 0, align 4
@ipfw_ifdetach_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iface_khandler_deregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iface_khandler_deregister() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @mtx_lock(i32* @vnet_mtx)
  %3 = load i32, i32* @num_vnets, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i32, i32* @num_vnets, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @num_vnets, align 4
  %9 = call i32 @mtx_unlock(i32* @vnet_mtx)
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %20

13:                                               ; preds = %6
  %14 = load i32, i32* @ifnet_arrival_event, align 4
  %15 = load i32, i32* @ipfw_ifattach_event, align 4
  %16 = call i32 @EVENTHANDLER_DEREGISTER(i32 %14, i32 %15)
  %17 = load i32, i32* @ifnet_departure_event, align 4
  %18 = load i32, i32* @ipfw_ifdetach_event, align 4
  %19 = call i32 @EVENTHANDLER_DEREGISTER(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
