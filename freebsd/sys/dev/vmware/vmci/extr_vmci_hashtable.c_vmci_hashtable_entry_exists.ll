; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_entry_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_entry_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hashtable = type { i32 }
%struct.vmci_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_hashtable_entry_exists(%struct.vmci_hashtable* %0, i32 %1) #0 {
  %3 = alloca %struct.vmci_handle, align 4
  %4 = alloca %struct.vmci_hashtable*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.vmci_hashtable* %0, %struct.vmci_hashtable** %4, align 8
  %7 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %8 = call i32 @ASSERT(%struct.vmci_hashtable* %7)
  %9 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %10 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %9, i32 0, i32 0
  %11 = call i32 @vmci_grab_lock_bh(i32* %10)
  %12 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %13 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vmci_hashtable_entry_exists_locked(%struct.vmci_hashtable* %12, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %17 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %16, i32 0, i32 0
  %18 = call i32 @vmci_release_lock_bh(i32* %17)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @ASSERT(%struct.vmci_hashtable*) #1

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local i32 @vmci_hashtable_entry_exists_locked(%struct.vmci_hashtable*, i32) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
