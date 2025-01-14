; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hash_entry = type { i32 }
%struct.vmci_hashtable = type { i32 }
%struct.vmci_handle = type { i32 }

@VMCI_INVALID_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmci_hash_entry* @vmci_hashtable_get_entry(%struct.vmci_hashtable* %0, i32 %1) #0 {
  %3 = alloca %struct.vmci_hash_entry*, align 8
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca %struct.vmci_hashtable*, align 8
  %6 = alloca %struct.vmci_hash_entry*, align 8
  %7 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.vmci_hashtable* %0, %struct.vmci_hashtable** %5, align 8
  %8 = load i32, i32* @VMCI_INVALID_HANDLE, align 4
  %9 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @VMCI_HANDLE_EQUAL(i32 %10, i32 %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.vmci_hash_entry* null, %struct.vmci_hash_entry** %3, align 8
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %5, align 8
  %16 = call i32 @ASSERT(%struct.vmci_hashtable* %15)
  %17 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %5, align 8
  %18 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %17, i32 0, i32 0
  %19 = call i32 @vmci_grab_lock_bh(i32* %18)
  %20 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %5, align 8
  %21 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.vmci_hash_entry* @vmci_hashtable_get_entry_locked(%struct.vmci_hashtable* %20, i32 %22)
  store %struct.vmci_hash_entry* %23, %struct.vmci_hash_entry** %6, align 8
  %24 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %5, align 8
  %25 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %24, i32 0, i32 0
  %26 = call i32 @vmci_release_lock_bh(i32* %25)
  %27 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  store %struct.vmci_hash_entry* %27, %struct.vmci_hash_entry** %3, align 8
  br label %28

28:                                               ; preds = %14, %13
  %29 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %3, align 8
  ret %struct.vmci_hash_entry* %29
}

declare dso_local i64 @VMCI_HANDLE_EQUAL(i32, i32) #1

declare dso_local i32 @ASSERT(%struct.vmci_hashtable*) #1

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local %struct.vmci_hash_entry* @vmci_hashtable_get_entry_locked(%struct.vmci_hashtable*, i32) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
