; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_schedule_delayed_work_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_schedule_delayed_work_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vmci_delayed_work_info = type { i8*, i32* }

@VMCI_MEMORY_ATOMIC = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@vmci_sc = common dso_local global %struct.TYPE_2__* null, align 8
@entry = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_schedule_delayed_work_fn(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vmci_delayed_work_info*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @VMCI_MEMORY_ATOMIC, align 4
  %8 = call %struct.vmci_delayed_work_info* @vmci_alloc_kernel_mem(i32 16, i32 %7)
  store %struct.vmci_delayed_work_info* %8, %struct.vmci_delayed_work_info** %6, align 8
  %9 = load %struct.vmci_delayed_work_info*, %struct.vmci_delayed_work_info** %6, align 8
  %10 = icmp ne %struct.vmci_delayed_work_info* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.vmci_delayed_work_info*, %struct.vmci_delayed_work_info** %6, align 8
  %16 = getelementptr inbounds %struct.vmci_delayed_work_info, %struct.vmci_delayed_work_info* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.vmci_delayed_work_info*, %struct.vmci_delayed_work_info** %6, align 8
  %19 = getelementptr inbounds %struct.vmci_delayed_work_info, %struct.vmci_delayed_work_info* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmci_sc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmci_sc, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load %struct.vmci_delayed_work_info*, %struct.vmci_delayed_work_info** %6, align 8
  %26 = load i32, i32* @entry, align 4
  %27 = call i32 @vmci_list_insert(i32* %24, %struct.vmci_delayed_work_info* %25, i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmci_sc, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @mtx_unlock(i32* %29)
  %31 = load i32, i32* @taskqueue_thread, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmci_sc, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @taskqueue_enqueue(i32 %31, i32* %33)
  %35 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %13, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.vmci_delayed_work_info* @vmci_alloc_kernel_mem(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vmci_list_insert(i32*, %struct.vmci_delayed_work_info*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
