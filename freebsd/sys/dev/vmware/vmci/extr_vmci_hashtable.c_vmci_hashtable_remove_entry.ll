; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_remove_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hashtable = type { i64, i32 }
%struct.vmci_hash_entry = type { i64, i32 }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_SUCCESS_ENTRY_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_hashtable_remove_entry(%struct.vmci_hashtable* %0, %struct.vmci_hash_entry* %1) #0 {
  %3 = alloca %struct.vmci_hashtable*, align 8
  %4 = alloca %struct.vmci_hash_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.vmci_hashtable* %0, %struct.vmci_hashtable** %3, align 8
  store %struct.vmci_hash_entry* %1, %struct.vmci_hash_entry** %4, align 8
  %6 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %7 = call i32 @ASSERT(%struct.vmci_hashtable* %6)
  %8 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %9 = bitcast %struct.vmci_hash_entry* %8 to %struct.vmci_hashtable*
  %10 = call i32 @ASSERT(%struct.vmci_hashtable* %9)
  %11 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %12 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %11, i32 0, i32 1
  %13 = call i32 @vmci_grab_lock_bh(i32* %12)
  %14 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %15 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %16 = bitcast %struct.vmci_hash_entry* %15 to %struct.vmci_hashtable*
  %17 = call i32 @hashtable_unlink_entry(%struct.vmci_hashtable* %14, %struct.vmci_hashtable* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @VMCI_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %24 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %28 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @VMCI_SUCCESS_ENTRY_DEAD, align 4
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %31, %21
  %35 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %36 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %35, i32 0, i32 1
  %37 = call i32 @vmci_release_lock_bh(i32* %36)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @ASSERT(%struct.vmci_hashtable*) #1

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local i32 @hashtable_unlink_entry(%struct.vmci_hashtable*, %struct.vmci_hashtable*) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
