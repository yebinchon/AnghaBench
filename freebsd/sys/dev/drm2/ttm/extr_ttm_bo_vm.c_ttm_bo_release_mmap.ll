; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_vm.c_ttm_bo_release_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_vm.c_ttm_bo_release_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }

@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_release_mmap(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %7 = call i32* @cdev_pager_lookup(%struct.ttm_buffer_object* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @VM_OBJECT_WLOCK(i32* %12)
  br label %14

14:                                               ; preds = %33, %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %38, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @vm_page_lookup(i32* %22, i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %38

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %31 = call i64 @vm_page_busy_acquire(i32* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %14

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @cdev_pager_free_page(i32* %35, i32* %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @VM_OBJECT_WUNLOCK(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @vm_object_deallocate(i32* %44)
  br label %46

46:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32* @cdev_pager_lookup(%struct.ttm_buffer_object*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32* @vm_page_lookup(i32*, i32) #1

declare dso_local i64 @vm_page_busy_acquire(i32*, i32) #1

declare dso_local i32 @cdev_pager_free_page(i32*, i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
