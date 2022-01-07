; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_iface_khandler_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_iface_khandler_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vnet_mtx = common dso_local global i32 0, align 4
@num_vnets = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"IPFW: starting up interface tracker\0A\00", align 1
@ifnet_departure_event = common dso_local global i32 0, align 4
@ipfw_kifhandler = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@ipfw_ifdetach_event = common dso_local global i8* null, align 8
@ifnet_arrival_event = common dso_local global i32 0, align 4
@ipfw_ifattach_event = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iface_khandler_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iface_khandler_register() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @mtx_lock(i32* @vnet_mtx)
  %3 = load i64, i64* @num_vnets, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i64, i64* @num_vnets, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @num_vnets, align 8
  %9 = call i32 @mtx_unlock(i32* @vnet_mtx)
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %23

13:                                               ; preds = %6
  %14 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ifnet_departure_event, align 4
  %16 = load i32, i32* @ipfw_kifhandler, align 4
  %17 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %18 = call i8* @EVENTHANDLER_REGISTER(i32 %15, i32 %16, i8* null, i32 %17)
  store i8* %18, i8** @ipfw_ifdetach_event, align 8
  %19 = load i32, i32* @ifnet_arrival_event, align 4
  %20 = load i32, i32* @ipfw_kifhandler, align 4
  %21 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %22 = call i8* @EVENTHANDLER_REGISTER(i32 %19, i32 %20, i8* inttoptr (i64 1 to i8*), i32 %21)
  store i8* %22, i8** @ipfw_ifattach_event, align 8
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
