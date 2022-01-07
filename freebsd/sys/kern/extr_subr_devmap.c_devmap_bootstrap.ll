; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_bootstrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devmap.c_devmap_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_entry = type { i64, i32, i32 }

@devmap_bootstrap_done = common dso_local global i32 0, align 4
@devmap_table = common dso_local global %struct.devmap_entry* null, align 8
@PTE_DEVICE = common dso_local global i32 0, align 4
@VM_MEMATTR_DEVICE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devmap_bootstrap(i32 %0, %struct.devmap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devmap_entry*, align 8
  %5 = alloca %struct.devmap_entry*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.devmap_entry* %1, %struct.devmap_entry** %4, align 8
  store i32 1, i32* @devmap_bootstrap_done, align 4
  %6 = load %struct.devmap_entry*, %struct.devmap_entry** %4, align 8
  %7 = icmp ne %struct.devmap_entry* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct.devmap_entry*, %struct.devmap_entry** %4, align 8
  store %struct.devmap_entry* %9, %struct.devmap_entry** @devmap_table, align 8
  br label %15

10:                                               ; preds = %2
  %11 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  %12 = icmp eq %struct.devmap_entry* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %26

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %8
  %16 = load %struct.devmap_entry*, %struct.devmap_entry** @devmap_table, align 8
  store %struct.devmap_entry* %16, %struct.devmap_entry** %5, align 8
  br label %17

17:                                               ; preds = %23, %15
  %18 = load %struct.devmap_entry*, %struct.devmap_entry** %5, align 8
  %19 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.devmap_entry*, %struct.devmap_entry** %5, align 8
  %25 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %24, i32 1
  store %struct.devmap_entry* %25, %struct.devmap_entry** %5, align 8
  br label %17

26:                                               ; preds = %13, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
