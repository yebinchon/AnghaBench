; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_qp_guest_endpoints_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_qp_guest_endpoints_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.qp_guest_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }

@qp_guest_endpoints = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmci_qp_guest_endpoints_exit() #0 {
  %1 = alloca %struct.qp_guest_endpoint*, align 8
  %2 = call i32 @vmci_mutex_acquire(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qp_guest_endpoints, i32 0, i32 0))
  br label %3

3:                                                ; preds = %21, %0
  %4 = call i64 @queue_pair_list_get_head(%struct.TYPE_6__* @qp_guest_endpoints)
  %5 = inttoptr i64 %4 to %struct.qp_guest_endpoint*
  store %struct.qp_guest_endpoint* %5, %struct.qp_guest_endpoint** %1, align 8
  %6 = icmp ne %struct.qp_guest_endpoint* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %1, align 8
  %9 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VMCI_QPFLAG_LOCAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %1, align 8
  %17 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @vmci_queue_pair_detach_hypercall(i32 %19)
  br label %21

21:                                               ; preds = %15, %7
  %22 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %1, align 8
  %23 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %1, align 8
  %26 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %25, i32 0, i32 0
  %27 = call i32 @queue_pair_list_remove_entry(%struct.TYPE_6__* @qp_guest_endpoints, %struct.TYPE_7__* %26)
  %28 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %1, align 8
  %29 = call i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint* %28)
  br label %3

30:                                               ; preds = %3
  %31 = call i32 @atomic_store_int(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qp_guest_endpoints, i32 0, i32 1), i32 0)
  %32 = call i32 @vmci_mutex_release(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qp_guest_endpoints, i32 0, i32 0))
  %33 = call i32 @queue_pair_list_destroy(%struct.TYPE_6__* @qp_guest_endpoints)
  ret void
}

declare dso_local i32 @vmci_mutex_acquire(i32*) #1

declare dso_local i64 @queue_pair_list_get_head(%struct.TYPE_6__*) #1

declare dso_local i32 @vmci_queue_pair_detach_hypercall(i32) #1

declare dso_local i32 @queue_pair_list_remove_entry(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint*) #1

declare dso_local i32 @atomic_store_int(i32*, i32) #1

declare dso_local i32 @vmci_mutex_release(i32*) #1

declare dso_local i32 @queue_pair_list_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
