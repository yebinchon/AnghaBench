; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_topage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_radix.c_vm_radix_topage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_radix_node = type { i32 }

@VM_RADIX_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_radix_node*)* @vm_radix_topage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_radix_topage(%struct.vm_radix_node* %0) #0 {
  %2 = alloca %struct.vm_radix_node*, align 8
  store %struct.vm_radix_node* %0, %struct.vm_radix_node** %2, align 8
  %3 = load %struct.vm_radix_node*, %struct.vm_radix_node** %2, align 8
  %4 = ptrtoint %struct.vm_radix_node* %3 to i64
  %5 = load i64, i64* @VM_RADIX_FLAGS, align 8
  %6 = xor i64 %5, -1
  %7 = and i64 %4, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
