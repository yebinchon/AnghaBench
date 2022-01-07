; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_mmap_gref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_mmap_gref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i32, i32 }
%struct.gntdev_gref = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vm_object = type { i32 }

@OBJT_PHYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gref_tree_head = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_user_data*, %struct.gntdev_gref*, i64, i32, %struct.vm_object**)* @mmap_gref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_gref(%struct.per_user_data* %0, %struct.gntdev_gref* %1, i64 %2, i32 %3, %struct.vm_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.per_user_data*, align 8
  %8 = alloca %struct.gntdev_gref*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_object**, align 8
  %12 = alloca %struct.vm_object*, align 8
  %13 = alloca %struct.gntdev_gref*, align 8
  store %struct.per_user_data* %0, %struct.per_user_data** %7, align 8
  store %struct.gntdev_gref* %1, %struct.gntdev_gref** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.vm_object** %4, %struct.vm_object*** %11, align 8
  %14 = load i32, i32* @OBJT_PHYS, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.vm_object* @vm_object_allocate(i32 %14, i32 %15)
  store %struct.vm_object* %16, %struct.vm_object** %12, align 8
  %17 = load %struct.vm_object*, %struct.vm_object** %12, align 8
  %18 = icmp eq %struct.vm_object* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %6, align 4
  br label %77

21:                                               ; preds = %5
  %22 = load %struct.per_user_data*, %struct.per_user_data** %7, align 8
  %23 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.vm_object*, %struct.vm_object** %12, align 8
  %26 = call i32 @VM_OBJECT_WLOCK(%struct.vm_object* %25)
  %27 = load %struct.gntdev_gref*, %struct.gntdev_gref** %8, align 8
  store %struct.gntdev_gref* %27, %struct.gntdev_gref** %13, align 8
  br label %28

28:                                               ; preds = %56, %21
  %29 = load %struct.gntdev_gref*, %struct.gntdev_gref** %13, align 8
  %30 = icmp ne %struct.gntdev_gref* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = icmp sgt i64 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %62

36:                                               ; preds = %34
  %37 = load %struct.gntdev_gref*, %struct.gntdev_gref** %13, align 8
  %38 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %62

44:                                               ; preds = %36
  %45 = load %struct.gntdev_gref*, %struct.gntdev_gref** %13, align 8
  %46 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.vm_object*, %struct.vm_object** %12, align 8
  %49 = load %struct.gntdev_gref*, %struct.gntdev_gref** %13, align 8
  %50 = getelementptr inbounds %struct.gntdev_gref, %struct.gntdev_gref* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @OFF_TO_IDX(i32 %51)
  %53 = call i32 @vm_page_insert(%struct.TYPE_2__* %47, %struct.vm_object* %48, i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @gref_tree_head, align 4
  %58 = load %struct.per_user_data*, %struct.per_user_data** %7, align 8
  %59 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %58, i32 0, i32 1
  %60 = load %struct.gntdev_gref*, %struct.gntdev_gref** %13, align 8
  %61 = call %struct.gntdev_gref* @RB_NEXT(i32 %57, i32* %59, %struct.gntdev_gref* %60)
  store %struct.gntdev_gref* %61, %struct.gntdev_gref** %13, align 8
  br label %28

62:                                               ; preds = %43, %34
  %63 = load %struct.vm_object*, %struct.vm_object** %12, align 8
  %64 = call i32 @VM_OBJECT_WUNLOCK(%struct.vm_object* %63)
  %65 = load %struct.per_user_data*, %struct.per_user_data** %7, align 8
  %66 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %65, i32 0, i32 0
  %67 = call i32 @mtx_unlock(i32* %66)
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.vm_object*, %struct.vm_object** %12, align 8
  %72 = call i32 @vm_object_deallocate(%struct.vm_object* %71)
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %6, align 4
  br label %77

74:                                               ; preds = %62
  %75 = load %struct.vm_object*, %struct.vm_object** %12, align 8
  %76 = load %struct.vm_object**, %struct.vm_object*** %11, align 8
  store %struct.vm_object* %75, %struct.vm_object** %76, align 8
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %70, %19
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.vm_object* @vm_object_allocate(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.vm_object*) #1

declare dso_local i32 @vm_page_insert(%struct.TYPE_2__*, %struct.vm_object*, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local %struct.gntdev_gref* @RB_NEXT(i32, i32*, %struct.gntdev_gref*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.vm_object*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vm_object_deallocate(%struct.vm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
