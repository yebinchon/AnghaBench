; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_release_entry_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_release_entry_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hashtable = type { i64 }
%struct.vmci_hash_entry = type { i64 }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_SUCCESS_ENTRY_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_hashtable*, %struct.vmci_hash_entry*)* @vmci_hashtable_release_entry_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_hashtable_release_entry_locked(%struct.vmci_hashtable* %0, %struct.vmci_hash_entry* %1) #0 {
  %3 = alloca %struct.vmci_hashtable*, align 8
  %4 = alloca %struct.vmci_hash_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.vmci_hashtable* %0, %struct.vmci_hashtable** %3, align 8
  store %struct.vmci_hash_entry* %1, %struct.vmci_hash_entry** %4, align 8
  %6 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %8 = call i32 @ASSERT(%struct.vmci_hashtable* %7)
  %9 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %10 = bitcast %struct.vmci_hash_entry* %9 to %struct.vmci_hashtable*
  %11 = call i32 @ASSERT(%struct.vmci_hashtable* %10)
  %12 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %13 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %17 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %22 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %23 = bitcast %struct.vmci_hash_entry* %22 to %struct.vmci_hashtable*
  %24 = call i32 @hashtable_unlink_entry(%struct.vmci_hashtable* %21, %struct.vmci_hashtable* %23)
  %25 = load i32, i32* @VMCI_SUCCESS_ENTRY_DEAD, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @ASSERT(%struct.vmci_hashtable*) #1

declare dso_local i32 @hashtable_unlink_entry(%struct.vmci_hashtable*, %struct.vmci_hashtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
