; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_index_table_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_index_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.vmci_doorbell_entry = type { i32, i32 }

@vmci_doorbell_it = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@max_notify_idx = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@notify_idx_count = common dso_local global i32 0, align 4
@last_notify_idx_released = common dso_local global i32 0, align 4
@last_notify_idx_reserved = common dso_local global i32 0, align 4
@idx_list_item = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmci_doorbell_entry*)* @vmci_doorbell_index_table_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_doorbell_index_table_add(%struct.vmci_doorbell_entry* %0) #0 {
  %2 = alloca %struct.vmci_doorbell_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vmci_doorbell_entry* %0, %struct.vmci_doorbell_entry** %2, align 8
  %6 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %7 = call i32 @ASSERT(%struct.vmci_doorbell_entry* %6)
  %8 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %9 = getelementptr inbounds %struct.vmci_doorbell_entry, %struct.vmci_doorbell_entry* %8, i32 0, i32 1
  %10 = call i32 @vmci_resource_hold(i32* %9)
  %11 = call i32 @vmci_grab_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  %12 = load i32, i32* @max_notify_idx, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @notify_idx_count, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @last_notify_idx_released, align 4
  %21 = load i32, i32* @max_notify_idx, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* @last_notify_idx_released, align 4
  %25 = call i32 @vmci_doorbell_index_table_find(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @last_notify_idx_released, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %29, i32* @last_notify_idx_released, align 4
  br label %60

30:                                               ; preds = %23, %19
  store i32 0, i32* %5, align 4
  %31 = load i32, i32* @last_notify_idx_reserved, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @notify_idx_count, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @max_notify_idx, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @vmci_doorbell_index_table_find(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @max_notify_idx, align 4
  %46 = srem i32 %44, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @last_notify_idx_released, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %37, label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @max_notify_idx, align 4
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @max_notify_idx, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @max_notify_idx, align 4
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %27
  br label %66

61:                                               ; preds = %15
  %62 = load i32, i32* @last_notify_idx_reserved, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %60
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* @last_notify_idx_reserved, align 4
  %68 = load i32, i32* @notify_idx_count, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @notify_idx_count, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %72 = getelementptr inbounds %struct.vmci_doorbell_entry, %struct.vmci_doorbell_entry* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %74 = getelementptr inbounds %struct.vmci_doorbell_entry, %struct.vmci_doorbell_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @VMCI_DOORBELL_HASH(i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 1), align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.vmci_doorbell_entry*, %struct.vmci_doorbell_entry** %2, align 8
  %82 = load i32, i32* @idx_list_item, align 4
  %83 = call i32 @vmci_list_insert(i32* %80, %struct.vmci_doorbell_entry* %81, i32 %82)
  %84 = call i32 @vmci_release_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  ret void
}

declare dso_local i32 @ASSERT(%struct.vmci_doorbell_entry*) #1

declare dso_local i32 @vmci_resource_hold(i32*) #1

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local i32 @vmci_doorbell_index_table_find(i32) #1

declare dso_local i32 @VMCI_DOORBELL_HASH(i32) #1

declare dso_local i32 @vmci_list_insert(i32*, %struct.vmci_doorbell_entry*, i32) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
