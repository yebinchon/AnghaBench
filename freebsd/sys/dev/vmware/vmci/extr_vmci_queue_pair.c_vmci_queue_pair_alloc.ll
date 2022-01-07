; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_queue_pair.c_vmci_queue_pair_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_queue = type { i32 }

@VMCI_QP_ALL_FLAGS = common dso_local global i32 0, align 4
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_queue_pair_alloc(%struct.vmci_handle* %0, %struct.vmci_queue** %1, i32 %2, %struct.vmci_queue** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmci_handle*, align 8
  %11 = alloca %struct.vmci_queue**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmci_queue**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vmci_handle* %0, %struct.vmci_handle** %10, align 8
  store %struct.vmci_queue** %1, %struct.vmci_queue*** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.vmci_queue** %3, %struct.vmci_queue*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %18 = load %struct.vmci_handle*, %struct.vmci_handle** %10, align 8
  %19 = icmp ne %struct.vmci_handle* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %8
  %21 = load %struct.vmci_queue**, %struct.vmci_queue*** %11, align 8
  %22 = icmp ne %struct.vmci_queue** %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.vmci_queue**, %struct.vmci_queue*** %13, align 8
  %25 = icmp ne %struct.vmci_queue** %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @VMCI_QP_ALL_FLAGS, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %29, %23, %20, %8
  %39 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %39, i32* %9, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load %struct.vmci_handle*, %struct.vmci_handle** %10, align 8
  %42 = load %struct.vmci_queue**, %struct.vmci_queue*** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.vmci_queue**, %struct.vmci_queue*** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @vmci_queue_pair_alloc_guest_work(%struct.vmci_handle* %41, %struct.vmci_queue** %42, i32 %43, %struct.vmci_queue** %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %40, %38
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @vmci_queue_pair_alloc_guest_work(%struct.vmci_handle*, %struct.vmci_queue**, i32, %struct.vmci_queue**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
