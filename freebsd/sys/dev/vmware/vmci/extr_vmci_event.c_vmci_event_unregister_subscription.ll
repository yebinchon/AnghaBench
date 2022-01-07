; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_event.c_vmci_event_unregister_subscription.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_event.c_vmci_event_unregister_subscription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_subscription = type { i32 }

@subscriber_lock = common dso_local global i32 0, align 4
@subscriber_list_item = common dso_local global i32 0, align 4
@event_release_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmci_subscription* (i32)* @vmci_event_unregister_subscription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmci_subscription* @vmci_event_unregister_subscription(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_subscription*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @vmci_grab_lock_bh(i32* @subscriber_lock)
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vmci_subscription* @vmci_event_find(i32 %5)
  store %struct.vmci_subscription* %6, %struct.vmci_subscription** %3, align 8
  %7 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  %8 = icmp ne %struct.vmci_subscription* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  %11 = call i32 @vmci_event_release(%struct.vmci_subscription* %10)
  %12 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  %13 = load i32, i32* @subscriber_list_item, align 4
  %14 = call i32 @vmci_list_remove(%struct.vmci_subscription* %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = call i32 @vmci_release_lock_bh(i32* @subscriber_lock)
  %17 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  %18 = icmp ne %struct.vmci_subscription* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  %21 = getelementptr inbounds %struct.vmci_subscription, %struct.vmci_subscription* %20, i32 0, i32 0
  %22 = load i32, i32* @event_release_cb, align 4
  %23 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  %24 = call i32 @vmci_wait_on_event(i32* %21, i32 %22, %struct.vmci_subscription* %23)
  %25 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  %26 = getelementptr inbounds %struct.vmci_subscription, %struct.vmci_subscription* %25, i32 0, i32 0
  %27 = call i32 @vmci_destroy_event(i32* %26)
  br label %28

28:                                               ; preds = %19, %15
  %29 = load %struct.vmci_subscription*, %struct.vmci_subscription** %3, align 8
  ret %struct.vmci_subscription* %29
}

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local %struct.vmci_subscription* @vmci_event_find(i32) #1

declare dso_local i32 @vmci_event_release(%struct.vmci_subscription*) #1

declare dso_local i32 @vmci_list_remove(%struct.vmci_subscription*, i32) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

declare dso_local i32 @vmci_wait_on_event(i32*, i32, %struct.vmci_subscription*) #1

declare dso_local i32 @vmci_destroy_event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
