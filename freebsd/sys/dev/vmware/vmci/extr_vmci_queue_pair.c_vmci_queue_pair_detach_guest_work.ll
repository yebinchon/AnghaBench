; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_detach_guest_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_detach_guest_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.vmci_handle = type { i32 }
%struct.qp_guest_endpoint = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@qp_guest_endpoints = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmci_queue_pair_detach_guest_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_queue_pair_detach_guest_work(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_handle, align 4
  %4 = alloca %struct.qp_guest_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @VMCI_HANDLE_INVALID(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = call i32 @vmci_mutex_acquire(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @qp_guest_endpoints, i32 0, i32 0))
  %16 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @queue_pair_list_find_entry(%struct.TYPE_5__* @qp_guest_endpoints, i32 %17)
  %19 = inttoptr i64 %18 to %struct.qp_guest_endpoint*
  store %struct.qp_guest_endpoint* %19, %struct.qp_guest_endpoint** %4, align 8
  %20 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %21 = icmp ne %struct.qp_guest_endpoint* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = call i32 @vmci_mutex_release(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @qp_guest_endpoints, i32 0, i32 0))
  %24 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %24, i32* %2, align 4
  br label %116

25:                                               ; preds = %1
  %26 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %34 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VMCI_QPFLAG_LOCAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %25
  %41 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %41, i32* %5, align 4
  %42 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %43 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @queue_pair_notify_peer_local(i32 0, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %40
  br label %82

52:                                               ; preds = %25
  %53 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vmci_queue_pair_detach_hypercall(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %57 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %66 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %64, %60
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @VMCI_SUCCESS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = call i32 @vmci_mutex_release(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @qp_guest_endpoints, i32 0, i32 0))
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %116

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %51
  %83 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %84 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %89 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %95 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %94, i32 0, i32 0
  %96 = call i32 @queue_pair_list_remove_entry(%struct.TYPE_5__* @qp_guest_endpoints, %struct.TYPE_6__* %95)
  br label %97

97:                                               ; preds = %93, %82
  %98 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %99 = icmp ne %struct.qp_guest_endpoint* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %102 = getelementptr inbounds %struct.qp_guest_endpoint, %struct.qp_guest_endpoint* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  br label %106

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %100
  %107 = phi i32 [ %104, %100 ], [ -1, %105 ]
  store i32 %107, i32* %6, align 4
  %108 = call i32 @vmci_mutex_release(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @qp_guest_endpoints, i32 0, i32 0))
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.qp_guest_endpoint*, %struct.qp_guest_endpoint** %4, align 8
  %113 = call i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint* %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %78, %22
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VMCI_HANDLE_INVALID(i32) #1

declare dso_local i32 @vmci_mutex_acquire(i32*) #1

declare dso_local i64 @queue_pair_list_find_entry(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @vmci_mutex_release(i32*) #1

declare dso_local i32 @queue_pair_notify_peer_local(i32, i32) #1

declare dso_local i32 @vmci_queue_pair_detach_hypercall(i32) #1

declare dso_local i32 @queue_pair_list_remove_entry(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @qp_guest_endpoint_destroy(%struct.qp_guest_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
