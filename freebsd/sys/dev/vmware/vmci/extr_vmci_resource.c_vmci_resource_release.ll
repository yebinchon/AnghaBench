; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_resource.c_vmci_resource_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_resource.c_vmci_resource_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_resource = type { i32 }

@resource_table = common dso_local global i32 0, align 4
@VMCI_SUCCESS_ENTRY_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_resource_release(%struct.vmci_resource* %0) #0 {
  %2 = alloca %struct.vmci_resource*, align 8
  %3 = alloca i32, align 4
  store %struct.vmci_resource* %0, %struct.vmci_resource** %2, align 8
  %4 = load %struct.vmci_resource*, %struct.vmci_resource** %2, align 8
  %5 = call i32 @ASSERT(%struct.vmci_resource* %4)
  %6 = load i32, i32* @resource_table, align 4
  %7 = load %struct.vmci_resource*, %struct.vmci_resource** %2, align 8
  %8 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %7, i32 0, i32 0
  %9 = call i32 @vmci_hashtable_release_entry(i32 %6, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VMCI_SUCCESS_ENTRY_DEAD, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.vmci_resource*, %struct.vmci_resource** %2, align 8
  %15 = call i32 @vmci_resource_do_remove(%struct.vmci_resource* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @ASSERT(%struct.vmci_resource*) #1

declare dso_local i32 @vmci_hashtable_release_entry(i32, i32*) #1

declare dso_local i32 @vmci_resource_do_remove(%struct.vmci_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
