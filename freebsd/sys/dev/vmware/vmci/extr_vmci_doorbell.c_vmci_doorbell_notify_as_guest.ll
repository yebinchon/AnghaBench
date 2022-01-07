; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_notify_as_guest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_notify_as_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_doorbell_notify_msg = type { %struct.vmci_handle, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.vmci_datagram = type { i32 }

@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_DOORBELL_NOTIFY = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4
@VMCI_DG_HEADERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vmci_doorbell_notify_as_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_doorbell_notify_as_guest(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.vmci_handle, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_doorbell_notify_msg, align 8
  %6 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %8 = load i32, i32* @VMCI_DOORBELL_NOTIFY, align 4
  %9 = call i32 @VMCI_MAKE_HANDLE(i32 %7, i32 %8)
  %10 = getelementptr inbounds %struct.vmci_doorbell_notify_msg, %struct.vmci_doorbell_notify_msg* %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %13 = getelementptr inbounds %struct.vmci_doorbell_notify_msg, %struct.vmci_doorbell_notify_msg* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @VMCI_DG_HEADERSIZE, align 8
  %16 = sub i64 24, %15
  %17 = getelementptr inbounds %struct.vmci_doorbell_notify_msg, %struct.vmci_doorbell_notify_msg* %5, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = getelementptr inbounds %struct.vmci_doorbell_notify_msg, %struct.vmci_doorbell_notify_msg* %5, i32 0, i32 0
  %20 = bitcast %struct.vmci_handle* %19 to i8*
  %21 = bitcast %struct.vmci_handle* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = bitcast %struct.vmci_doorbell_notify_msg* %5 to %struct.vmci_datagram*
  %23 = call i32 @vmci_send_datagram(%struct.vmci_datagram* %22)
  ret i32 %23
}

declare dso_local i32 @VMCI_MAKE_HANDLE(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_send_datagram(%struct.vmci_datagram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
