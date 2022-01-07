; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hashtable = type { i32, i32, %struct.vmci_hashtable* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmci_hashtable_destroy(%struct.vmci_hashtable* %0) #0 {
  %2 = alloca %struct.vmci_hashtable*, align 8
  store %struct.vmci_hashtable* %0, %struct.vmci_hashtable** %2, align 8
  %3 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %4 = call i32 @ASSERT(%struct.vmci_hashtable* %3)
  %5 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %5, i32 0, i32 1
  %7 = call i32 @vmci_grab_lock_bh(i32* %6)
  %8 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %9 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %8, i32 0, i32 2
  %10 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %9, align 8
  %11 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @vmci_free_kernel_mem(%struct.vmci_hashtable* %10, i32 %16)
  %18 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %19 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %18, i32 0, i32 2
  store %struct.vmci_hashtable* null, %struct.vmci_hashtable** %19, align 8
  %20 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %21 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %20, i32 0, i32 1
  %22 = call i32 @vmci_release_lock_bh(i32* %21)
  %23 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %24 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %23, i32 0, i32 1
  %25 = call i32 @vmci_cleanup_lock(i32* %24)
  %26 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  %27 = call i32 @vmci_free_kernel_mem(%struct.vmci_hashtable* %26, i32 16)
  ret void
}

declare dso_local i32 @ASSERT(%struct.vmci_hashtable*) #1

declare dso_local i32 @vmci_grab_lock_bh(i32*) #1

declare dso_local i32 @vmci_free_kernel_mem(%struct.vmci_hashtable*, i32) #1

declare dso_local i32 @vmci_release_lock_bh(i32*) #1

declare dso_local i32 @vmci_cleanup_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
