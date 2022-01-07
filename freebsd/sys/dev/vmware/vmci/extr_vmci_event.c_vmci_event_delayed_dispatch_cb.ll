; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_event.c_vmci_event_delayed_dispatch_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_event.c_vmci_event_delayed_dispatch_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_delayed_event_info = type { i32, i32, i32 (i32, %struct.vmci_event_data*, i32)*, i64, %struct.vmci_delayed_event_info* }
%struct.vmci_event_data = type { i32 }
%struct.vmci_subscription = type { i32, i32, i32 (i32, %struct.vmci_event_data.0*, i32)*, i64, %struct.vmci_subscription* }
%struct.vmci_event_data.0 = type opaque

@subscriber_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vmci_event_delayed_dispatch_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_event_delayed_dispatch_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmci_delayed_event_info*, align 8
  %4 = alloca %struct.vmci_subscription*, align 8
  %5 = alloca %struct.vmci_event_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vmci_delayed_event_info*
  store %struct.vmci_delayed_event_info* %7, %struct.vmci_delayed_event_info** %3, align 8
  %8 = load %struct.vmci_delayed_event_info*, %struct.vmci_delayed_event_info** %3, align 8
  %9 = bitcast %struct.vmci_delayed_event_info* %8 to %struct.vmci_subscription*
  %10 = call i32 @ASSERT(%struct.vmci_subscription* %9)
  %11 = load %struct.vmci_delayed_event_info*, %struct.vmci_delayed_event_info** %3, align 8
  %12 = getelementptr inbounds %struct.vmci_delayed_event_info, %struct.vmci_delayed_event_info* %11, i32 0, i32 4
  %13 = load %struct.vmci_delayed_event_info*, %struct.vmci_delayed_event_info** %12, align 8
  %14 = bitcast %struct.vmci_delayed_event_info* %13 to %struct.vmci_subscription*
  %15 = call i32 @ASSERT(%struct.vmci_subscription* %14)
  %16 = load %struct.vmci_delayed_event_info*, %struct.vmci_delayed_event_info** %3, align 8
  %17 = getelementptr inbounds %struct.vmci_delayed_event_info, %struct.vmci_delayed_event_info* %16, i32 0, i32 4
  %18 = load %struct.vmci_delayed_event_info*, %struct.vmci_delayed_event_info** %17, align 8
  %19 = bitcast %struct.vmci_delayed_event_info* %18 to %struct.vmci_subscription*
  store %struct.vmci_subscription* %19, %struct.vmci_subscription** %4, align 8
  %20 = load %struct.vmci_delayed_event_info*, %struct.vmci_delayed_event_info** %3, align 8
  %21 = getelementptr inbounds %struct.vmci_delayed_event_info, %struct.vmci_delayed_event_info* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.vmci_event_data*
  store %struct.vmci_event_data* %23, %struct.vmci_event_data** %5, align 8
  %24 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %25 = getelementptr inbounds %struct.vmci_subscription, %struct.vmci_subscription* %24, i32 0, i32 2
  %26 = load i32 (i32, %struct.vmci_event_data.0*, i32)*, i32 (i32, %struct.vmci_event_data.0*, i32)** %25, align 8
  %27 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %28 = getelementptr inbounds %struct.vmci_subscription, %struct.vmci_subscription* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vmci_event_data*, %struct.vmci_event_data** %5, align 8
  %31 = bitcast %struct.vmci_event_data* %30 to %struct.vmci_event_data.0*
  %32 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %33 = getelementptr inbounds %struct.vmci_subscription, %struct.vmci_subscription* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %26(i32 %29, %struct.vmci_event_data.0* %31, i32 %34)
  %36 = call i32 @vmci_grab_lock_bh(i32* @subscriber_lock)
  %37 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %38 = call i32 @vmci_event_release(%struct.vmci_subscription* %37)
  %39 = call i32 @vmci_release_lock_bh(i32* @subscriber_lock)
  %40 = load %struct.vmci_delayed_event_info*, %struct.vmci_delayed_event_info** %3, align 8
  %41 = bitcast %struct.vmci_delayed_event_info* %40 to %struct.vmci_subscription*
  %42 = call i32 @vmci_free_kernel_mem(%struct.vmci_subscription* %41, i32 32)
  ret void
}

declare dso_local i32 @ASSERT(%struct.vmci_subscription*) #1

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local i32 @vmci_event_release(%struct.vmci_subscription*) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

declare dso_local i32 @vmci_free_kernel_mem(%struct.vmci_subscription*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
