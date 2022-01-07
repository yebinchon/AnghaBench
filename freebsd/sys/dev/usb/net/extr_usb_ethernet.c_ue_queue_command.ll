; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_queue_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_ue_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.usb_proc_msg = type { i32 }
%struct.usb_ether_cfg_task = type { %struct.usb_ether*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@ue_start_task = common dso_local global i32* null, align 8
@ue_stop_task = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*, i32*, %struct.usb_proc_msg*, %struct.usb_proc_msg*)* @ue_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ue_queue_command(%struct.usb_ether* %0, i32* %1, %struct.usb_proc_msg* %2, %struct.usb_proc_msg* %3) #0 {
  %5 = alloca %struct.usb_ether*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.usb_proc_msg*, align 8
  %8 = alloca %struct.usb_proc_msg*, align 8
  %9 = alloca %struct.usb_ether_cfg_task*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.usb_proc_msg* %2, %struct.usb_proc_msg** %7, align 8
  store %struct.usb_proc_msg* %3, %struct.usb_proc_msg** %8, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @UE_LOCK_ASSERT(%struct.usb_ether* %10, i32 %11)
  %13 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %14 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %13, i32 0, i32 0
  %15 = call i64 @usb_proc_is_gone(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %45

18:                                               ; preds = %4
  %19 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %20 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %19, i32 0, i32 0
  %21 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %22 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %23 = call i64 @usb_proc_msignal(i32* %20, %struct.usb_proc_msg* %21, %struct.usb_proc_msg* %22)
  %24 = inttoptr i64 %23 to %struct.usb_ether_cfg_task*
  store %struct.usb_ether_cfg_task* %24, %struct.usb_ether_cfg_task** %9, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.usb_ether_cfg_task*, %struct.usb_ether_cfg_task** %9, align 8
  %27 = getelementptr inbounds %struct.usb_ether_cfg_task, %struct.usb_ether_cfg_task* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %30 = load %struct.usb_ether_cfg_task*, %struct.usb_ether_cfg_task** %9, align 8
  %31 = getelementptr inbounds %struct.usb_ether_cfg_task, %struct.usb_ether_cfg_task* %30, i32 0, i32 0
  store %struct.usb_ether* %29, %struct.usb_ether** %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** @ue_start_task, align 8
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %18
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** @ue_stop_task, align 8
  %38 = icmp eq i32* %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %18
  %40 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %41 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %40, i32 0, i32 0
  %42 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %7, align 8
  %43 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %8, align 8
  %44 = call i32 @usb_proc_mwait(i32* %41, %struct.usb_proc_msg* %42, %struct.usb_proc_msg* %43)
  br label %45

45:                                               ; preds = %17, %39, %35
  ret void
}

declare dso_local i32 @UE_LOCK_ASSERT(%struct.usb_ether*, i32) #1

declare dso_local i64 @usb_proc_is_gone(i32*) #1

declare dso_local i64 @usb_proc_msignal(i32*, %struct.usb_proc_msg*, %struct.usb_proc_msg*) #1

declare dso_local i32 @usb_proc_mwait(i32*, %struct.usb_proc_msg*, %struct.usb_proc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
