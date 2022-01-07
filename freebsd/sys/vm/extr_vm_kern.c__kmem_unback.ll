; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c__kmem_unback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c__kmem_unback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.vmem*, %struct.vmem* }
%struct.vmem = type { i32 }
%struct.TYPE_9__ = type { i32 }

@kernel_object = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"kmem_unback: only supports kernel object.\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@vm_dom = common dso_local global %struct.TYPE_10__* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VPO_KMEM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmem* (i64, i64, i64)* @_kmem_unback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmem* @_kmem_unback(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vmem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmem*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @kernel_object, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.vmem* null, %struct.vmem** %4, align 8
  br label %69

22:                                               ; preds = %3
  %23 = load i32, i32* @kernel_pmap, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pmap_remove(i32 %23, i64 %24, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @VM_OBJECT_WLOCK(i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @atop(i64 %38)
  %40 = call %struct.TYPE_9__* @vm_page_lookup(i64 %37, i32 %39)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %9, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = call i32 @vm_phys_domain(%struct.TYPE_9__* %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vm_dom, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.vmem*, %struct.vmem** %47, align 8
  store %struct.vmem* %48, %struct.vmem** %8, align 8
  br label %49

49:                                               ; preds = %60, %22
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = call %struct.TYPE_9__* @vm_page_next(%struct.TYPE_9__* %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %10, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = call i32 @vm_page_unwire_noq(%struct.TYPE_9__* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = call i32 @vm_page_free(%struct.TYPE_9__* %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %12, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %9, align 8
  br label %49

65:                                               ; preds = %49
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @VM_OBJECT_WUNLOCK(i64 %66)
  %68 = load %struct.vmem*, %struct.vmem** %8, align 8
  store %struct.vmem* %68, %struct.vmem** %4, align 8
  br label %69

69:                                               ; preds = %65, %21
  %70 = load %struct.vmem*, %struct.vmem** %4, align 8
  ret %struct.vmem* %70
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_remove(i32, i64, i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i64) #1

declare dso_local %struct.TYPE_9__* @vm_page_lookup(i64, i32) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i32 @vm_phys_domain(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @vm_page_next(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_page_unwire_noq(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_9__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
