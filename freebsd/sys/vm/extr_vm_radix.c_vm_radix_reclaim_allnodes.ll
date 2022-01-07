; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_reclaim_allnodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_reclaim_allnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_radix = type { i32 }
%struct.vm_radix_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_radix_reclaim_allnodes(%struct.vm_radix* %0) #0 {
  %2 = alloca %struct.vm_radix*, align 8
  %3 = alloca %struct.vm_radix_node*, align 8
  store %struct.vm_radix* %0, %struct.vm_radix** %2, align 8
  %4 = load %struct.vm_radix*, %struct.vm_radix** %2, align 8
  %5 = call %struct.vm_radix_node* @vm_radix_getroot(%struct.vm_radix* %4)
  store %struct.vm_radix_node* %5, %struct.vm_radix_node** %3, align 8
  %6 = load %struct.vm_radix_node*, %struct.vm_radix_node** %3, align 8
  %7 = icmp eq %struct.vm_radix_node* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.vm_radix*, %struct.vm_radix** %2, align 8
  %11 = call i32 @vm_radix_setroot(%struct.vm_radix* %10, i32* null)
  %12 = load %struct.vm_radix_node*, %struct.vm_radix_node** %3, align 8
  %13 = call i32 @vm_radix_isleaf(%struct.vm_radix_node* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.vm_radix_node*, %struct.vm_radix_node** %3, align 8
  %17 = call i32 @vm_radix_reclaim_allnodes_int(%struct.vm_radix_node* %16)
  br label %18

18:                                               ; preds = %8, %15, %9
  ret void
}

declare dso_local %struct.vm_radix_node* @vm_radix_getroot(%struct.vm_radix*) #1

declare dso_local i32 @vm_radix_setroot(%struct.vm_radix*, i32*) #1

declare dso_local i32 @vm_radix_isleaf(%struct.vm_radix_node*) #1

declare dso_local i32 @vm_radix_reclaim_allnodes_int(%struct.vm_radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
