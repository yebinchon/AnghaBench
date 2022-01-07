; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmap_alloc_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmap_alloc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@MAP_ACC_CHARGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kmap_alloc_wait(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @round_page(i64 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @swap_reserve(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %61

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %42, %13
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i32 @vm_map_lock(%struct.TYPE_10__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i64 @vm_map_min(%struct.TYPE_10__* %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @vm_map_findspace(%struct.TYPE_10__* %17, i64 %19, i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = call i64 @vm_map_max(%struct.TYPE_10__* %25)
  %27 = icmp sle i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %48

29:                                               ; preds = %14
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = call i64 @vm_map_max(%struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = call i64 @vm_map_min(%struct.TYPE_10__* %32)
  %34 = sub nsw i64 %31, %33
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i32 @vm_map_unlock(%struct.TYPE_10__* %38)
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @swap_release(i64 %40)
  store i64 0, i64* %3, align 8
  br label %61

42:                                               ; preds = %29
  %43 = load i32, i32* @TRUE, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = call i32 @vm_map_unlock_and_wait(%struct.TYPE_10__* %46, i32 0)
  br label %14

48:                                               ; preds = %28
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @VM_PROT_RW, align 4
  %55 = load i32, i32* @VM_PROT_RW, align 4
  %56 = load i32, i32* @MAP_ACC_CHARGED, align 4
  %57 = call i32 @vm_map_insert(%struct.TYPE_10__* %49, i32* null, i32 0, i64 %50, i64 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @vm_map_unlock(%struct.TYPE_10__* %58)
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %48, %37, %12
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @swap_reserve(i64) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_10__*) #1

declare dso_local i64 @vm_map_findspace(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i64 @vm_map_min(%struct.TYPE_10__*) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @swap_release(i64) #1

declare dso_local i32 @vm_map_unlock_and_wait(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vm_map_insert(%struct.TYPE_10__*, i32*, i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
