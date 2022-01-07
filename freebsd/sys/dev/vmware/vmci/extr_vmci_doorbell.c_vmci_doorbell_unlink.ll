; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_doorbell_unlink_msg = type { %struct.vmci_handle, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.vmci_datagram = type { i32 }

@VMCI_DOORBELL_UNLINK = common dso_local global i32 0, align 4
@VMCI_ERROR_UNAVAILABLE = common dso_local global i32 0, align 4
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4
@VMCI_DG_HEADERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vmci_doorbell_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_doorbell_unlink(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_doorbell_unlink_msg, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VMCI_HANDLE_INVALID(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @VMCI_DOORBELL_UNLINK, align 4
  store i32 %19, i32* %7, align 4
  br label %23

20:                                               ; preds = %2
  %21 = call i32 @ASSERT(i32 0)
  %22 = load i32, i32* @VMCI_ERROR_UNAVAILABLE, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %18
  %24 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @VMCI_MAKE_HANDLE(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.vmci_doorbell_unlink_msg, %struct.vmci_doorbell_unlink_msg* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %30 = getelementptr inbounds %struct.vmci_doorbell_unlink_msg, %struct.vmci_doorbell_unlink_msg* %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* @VMCI_DG_HEADERSIZE, align 8
  %33 = sub i64 24, %32
  %34 = getelementptr inbounds %struct.vmci_doorbell_unlink_msg, %struct.vmci_doorbell_unlink_msg* %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds %struct.vmci_doorbell_unlink_msg, %struct.vmci_doorbell_unlink_msg* %6, i32 0, i32 0
  %37 = bitcast %struct.vmci_handle* %36 to i8*
  %38 = bitcast %struct.vmci_handle* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = bitcast %struct.vmci_doorbell_unlink_msg* %6 to %struct.vmci_datagram*
  %40 = call i32 @vmci_send_datagram(%struct.vmci_datagram* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %23, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VMCI_HANDLE_INVALID(i32) #1

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
