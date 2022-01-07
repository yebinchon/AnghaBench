; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_unmap_grant_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_unmap_grant_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ioctl_gntdev_unmap_grant_ref = type { i32, i32 }
%struct.gntdev_gmap = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.per_user_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't find requested grant-map.\00", align 1
@cleanup_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@gmap_tree_head = common dso_local global i32 0, align 4
@gmap_next = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@cleanup_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioctl_gntdev_unmap_grant_ref*)* @gntdev_unmap_grant_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_unmap_grant_ref(%struct.ioctl_gntdev_unmap_grant_ref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioctl_gntdev_unmap_grant_ref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gntdev_gmap*, align 8
  %6 = alloca %struct.per_user_data*, align 8
  store %struct.ioctl_gntdev_unmap_grant_ref* %0, %struct.ioctl_gntdev_unmap_grant_ref** %3, align 8
  %7 = bitcast %struct.per_user_data** %6 to i8**
  %8 = call i32 @devfs_get_cdevpriv(i8** %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %67

13:                                               ; preds = %1
  %14 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %15 = load %struct.ioctl_gntdev_unmap_grant_ref*, %struct.ioctl_gntdev_unmap_grant_ref** %3, align 8
  %16 = getelementptr inbounds %struct.ioctl_gntdev_unmap_grant_ref, %struct.ioctl_gntdev_unmap_grant_ref* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ioctl_gntdev_unmap_grant_ref*, %struct.ioctl_gntdev_unmap_grant_ref** %3, align 8
  %19 = getelementptr inbounds %struct.ioctl_gntdev_unmap_grant_ref, %struct.ioctl_gntdev_unmap_grant_ref* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.gntdev_gmap* @gntdev_find_gmap(%struct.per_user_data* %14, i32 %17, i32 %20)
  store %struct.gntdev_gmap* %21, %struct.gntdev_gmap** %5, align 8
  %22 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %5, align 8
  %23 = icmp eq %struct.gntdev_gmap* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = call i32 @log(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %67

28:                                               ; preds = %13
  %29 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %30 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %29, i32 0, i32 0
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cleanup_data, i32 0, i32 0))
  %33 = load i32, i32* @gmap_tree_head, align 4
  %34 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %35 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %34, i32 0, i32 1
  %36 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %5, align 8
  %37 = call i32 @RB_REMOVE(i32 %33, i32* %35, %struct.gntdev_gmap* %36)
  %38 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %5, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gmap_next, i32 0, i32 0), align 4
  %40 = call i32 @STAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cleanup_data, i32 0, i32 1), %struct.gntdev_gmap* %38, i32 %39)
  %41 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cleanup_data, i32 0, i32 0))
  %42 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %43 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %5, align 8
  %46 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %28
  %50 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %5, align 8
  %51 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vm_object_deallocate(i32 %54)
  br label %56

56:                                               ; preds = %49, %28
  %57 = load i32, i32* @taskqueue_thread, align 4
  %58 = call i32 @taskqueue_enqueue(i32 %57, i32* @cleanup_task)
  %59 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %60 = load %struct.ioctl_gntdev_unmap_grant_ref*, %struct.ioctl_gntdev_unmap_grant_ref** %3, align 8
  %61 = getelementptr inbounds %struct.ioctl_gntdev_unmap_grant_ref, %struct.ioctl_gntdev_unmap_grant_ref* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ioctl_gntdev_unmap_grant_ref*, %struct.ioctl_gntdev_unmap_grant_ref** %3, align 8
  %64 = getelementptr inbounds %struct.ioctl_gntdev_unmap_grant_ref, %struct.ioctl_gntdev_unmap_grant_ref* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @put_file_offset(%struct.per_user_data* %59, i32 %62, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %56, %24, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local %struct.gntdev_gmap* @gntdev_find_gmap(%struct.per_user_data*, i32, i32) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.gntdev_gmap*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.gntdev_gmap*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @put_file_offset(%struct.per_user_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
