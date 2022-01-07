; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_alloc_hypercall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_alloc_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qp_guest_endpoint = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.vmci_queue_pair_alloc_msg = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.vmci_datagram = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i32 0, align 4
@VMCI_MEMORY_NORMAL = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_QUEUEPAIR_ALLOC = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4
@VMCI_DG_HEADERSIZE = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qp_guest_endpoint*)* @vmci_queue_pair_alloc_hypercall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_queue_pair_alloc_hypercall(%struct.qp_guest_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qp_guest_endpoint*, align 8
  %4 = alloca %struct.vmci_queue_pair_alloc_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qp_guest_endpoint* %0, %struct.qp_guest_endpoint** %3, align 8
  %7 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %8 = icmp ne %struct.qp_guest_endpoint* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %11 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %9
  %17 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VMCI_QPFLAG_LOCAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 40, %31
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @VMCI_MEMORY_NORMAL, align 4
  %35 = call %struct.vmci_queue_pair_alloc_msg* @vmci_alloc_kernel_mem(i64 %33, i32 %34)
  store %struct.vmci_queue_pair_alloc_msg* %35, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %36 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %37 = icmp ne %struct.vmci_queue_pair_alloc_msg* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %16
  %39 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %39, i32* %2, align 4
  br label %110

40:                                               ; preds = %16
  %41 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %42 = load i32, i32* @VMCI_QUEUEPAIR_ALLOC, align 4
  %43 = call i32 @VMCI_MAKE_HANDLE(i32 %41, i32 %42)
  %44 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %45 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %48 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %49 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @VMCI_DG_HEADERSIZE, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %55 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %58 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %62 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %64 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %68 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %70 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %74 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %76 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %80 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %82 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %86 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %88 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %91 = getelementptr inbounds %struct.vmci_queue_pair_alloc_msg, %struct.vmci_queue_pair_alloc_msg* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %93 = bitcast %struct.vmci_queue_pair_alloc_msg* %92 to i32*
  %94 = getelementptr inbounds i32, i32* %93, i64 40
  %95 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %3, align 8
  %96 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %95, i32 0, i32 1
  %97 = call i32 @vmci_populate_ppn_list(i32* %94, i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @VMCI_SUCCESS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %40
  %102 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %103 = bitcast %struct.vmci_queue_pair_alloc_msg* %102 to %struct.vmci_datagram*
  %104 = call i32 @vmci_send_datagram(%struct.vmci_datagram* %103)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %40
  %106 = load %struct.vmci_queue_pair_alloc_msg*, %struct.vmci_queue_pair_alloc_msg** %4, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @vmci_free_kernel_mem(%struct.vmci_queue_pair_alloc_msg* %106, i64 %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %105, %38, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.vmci_queue_pair_alloc_msg* @vmci_alloc_kernel_mem(i64, i32) #1

declare dso_local i32 @VMCI_MAKE_HANDLE(i32, i32) #1

declare dso_local i32 @vmci_populate_ppn_list(i32*, i32*) #1

declare dso_local i32 @vmci_send_datagram(%struct.vmci_datagram*) #1

declare dso_local i32 @vmci_free_kernel_mem(%struct.vmci_queue_pair_alloc_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
