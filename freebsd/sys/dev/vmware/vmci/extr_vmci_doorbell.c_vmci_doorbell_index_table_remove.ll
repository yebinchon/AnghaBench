; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_index_table_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_index_table_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmci_doorbell_entry = type { i32, i32 }

@vmci_doorbell_it = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@idx_list_item = common dso_local global i32 0, align 4
@notify_idx_count = common dso_local global i32 0, align 4
@max_notify_idx = common dso_local global i32 0, align 4
@last_notify_idx_released = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmci_doorbell_entry*)* @vmci_doorbell_index_table_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_doorbell_index_table_remove(%struct.vmci_doorbell_entry* %0) #0 {
  %2 = alloca %struct.vmci_doorbell_entry*, align 8
  store %struct.vmci_doorbell_entry* %0, %struct.vmci_doorbell_entry** %2, align 8
  %3 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %4 = call i32 @ASSERT(%struct.vmci_doorbell_entry* %3)
  %5 = call i32 @vmci_grab_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  %6 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %7 = load i32, i32* @idx_list_item, align 4
  %8 = call i32 @vmci_list_remove(%struct.vmci_doorbell_entry* %6, i32 %7)
  %9 = load i32, i32* @notify_idx_count, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @notify_idx_count, align 4
  %11 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %12 = getelementptr inbounds %struct.vmci_doorbell_entry, %struct.vmci_doorbell_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @max_notify_idx, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* @max_notify_idx, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* @max_notify_idx, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @vmci_doorbell_index_table_find(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %18 ], [ %26, %21 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, i32* @max_notify_idx, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @max_notify_idx, align 4
  br label %18

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %35 = getelementptr inbounds %struct.vmci_doorbell_entry, %struct.vmci_doorbell_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @last_notify_idx_released, align 4
  %37 = call i32 @vmci_release_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  %38 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %39 = getelementptr inbounds %struct.vmci_doorbell_entry, %struct.vmci_doorbell_entry* %38, i32 0, i32 1
  %40 = call i32 @vmci_resource_release(i32* %39)
  ret void
}

declare dso_local i32 @ASSERT(%struct.vmci_doorbell_entry*) #1

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local i32 @vmci_list_remove(%struct.vmci_doorbell_entry*, i32) #1

declare dso_local i32 @vmci_doorbell_index_table_find(i32) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

declare dso_local i32 @vmci_resource_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
