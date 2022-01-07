; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_queue_pair_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_handle, align 4
  %4 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @VMCI_HANDLE_INVALID(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vmci_queue_pair_detach_guest_work(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i64 @VMCI_HANDLE_INVALID(i32) #1

declare dso_local i32 @vmci_queue_pair_detach_guest_work(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
