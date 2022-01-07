; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_queue_pair_notify_peer_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_queue_pair_notify_peer_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_event_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.vmci_event_payload_qp = type { %struct.vmci_handle, i32 }
%struct.vmci_datagram = type { i32 }

@VMCI_EVENT_HANDLER = common dso_local global i32 0, align 4
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_CONTEXT_RESOURCE_ID = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_ATTACH = common dso_local global i32 0, align 4
@VMCI_EVENT_QP_PEER_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @queue_pair_notify_peer_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_pair_notify_peer_local(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.vmci_handle, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_event_msg*, align 8
  %6 = alloca %struct.vmci_event_payload_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [40 x i8], align 16
  %9 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store i32 %0, i32* %4, align 4
  %10 = call i32 (...) @vmci_get_context_id()
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %12 = bitcast i8* %11 to %struct.vmci_event_msg*
  store %struct.vmci_event_msg* %12, %struct.vmci_event_msg** %5, align 8
  %13 = load %struct.vmci_event_msg*, %struct.vmci_event_msg** %5, align 8
  %14 = call %struct.vmci_event_payload_qp* @vmci_event_msg_payload(%struct.vmci_event_msg* %13)
  store %struct.vmci_event_payload_qp* %14, %struct.vmci_event_payload_qp** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VMCI_EVENT_HANDLER, align 4
  %17 = call i8* @VMCI_MAKE_HANDLE(i32 %15, i32 %16)
  %18 = load %struct.vmci_event_msg*, %struct.vmci_event_msg** %5, align 8
  %19 = getelementptr inbounds %struct.vmci_event_msg, %struct.vmci_event_msg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %22 = load i32, i32* @VMCI_CONTEXT_RESOURCE_ID, align 4
  %23 = call i8* @VMCI_MAKE_HANDLE(i32 %21, i32 %22)
  %24 = load %struct.vmci_event_msg*, %struct.vmci_event_msg** %5, align 8
  %25 = getelementptr inbounds %struct.vmci_event_msg, %struct.vmci_event_msg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.vmci_event_msg*, %struct.vmci_event_msg** %5, align 8
  %28 = getelementptr inbounds %struct.vmci_event_msg, %struct.vmci_event_msg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 16, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @VMCI_EVENT_QP_PEER_ATTACH, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @VMCI_EVENT_QP_PEER_DETACH, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.vmci_event_msg*, %struct.vmci_event_msg** %5, align 8
  %39 = getelementptr inbounds %struct.vmci_event_msg, %struct.vmci_event_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.vmci_event_payload_qp*, %struct.vmci_event_payload_qp** %6, align 8
  %43 = getelementptr inbounds %struct.vmci_event_payload_qp, %struct.vmci_event_payload_qp* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vmci_event_payload_qp*, %struct.vmci_event_payload_qp** %6, align 8
  %45 = getelementptr inbounds %struct.vmci_event_payload_qp, %struct.vmci_event_payload_qp* %44, i32 0, i32 0
  %46 = bitcast %struct.vmci_handle* %45 to i8*
  %47 = bitcast %struct.vmci_handle* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.vmci_event_msg*, %struct.vmci_event_msg** %5, align 8
  %49 = bitcast %struct.vmci_event_msg* %48 to %struct.vmci_datagram*
  %50 = call i32 @vmci_event_dispatch(%struct.vmci_datagram* %49)
  ret i32 %50
}

declare dso_local i32 @vmci_get_context_id(...) #1

declare dso_local %struct.vmci_event_payload_qp* @vmci_event_msg_payload(%struct.vmci_event_msg*) #1

declare dso_local i8* @VMCI_MAKE_HANDLE(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_event_dispatch(%struct.vmci_datagram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
