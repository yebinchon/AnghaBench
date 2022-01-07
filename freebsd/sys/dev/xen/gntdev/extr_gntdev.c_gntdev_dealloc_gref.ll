; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_dealloc_gref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_dealloc_gref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ioctl_gntdev_dealloc_gref = type { i64, i32 }
%struct.gntdev_gref = type { i32 }
%struct.per_user_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't find requested grant-refs.\00", align 1
@cleanup_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@gref_tree_head = common dso_local global i32 0, align 4
@gref_next = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@cleanup_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioctl_gntdev_dealloc_gref*)* @gntdev_dealloc_gref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_dealloc_gref(%struct.ioctl_gntdev_dealloc_gref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioctl_gntdev_dealloc_gref*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.gntdev_gref*, align 8
  %7 = alloca %struct.gntdev_gref*, align 8
  %8 = alloca %struct.per_user_data*, align 8
  store %struct.ioctl_gntdev_dealloc_gref* %0, %struct.ioctl_gntdev_dealloc_gref** %3, align 8
  %9 = bitcast %struct.per_user_data** %8 to i8**
  %10 = call i32 @devfs_get_cdevpriv(i8** %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %17 = load %struct.ioctl_gntdev_dealloc_gref*, %struct.ioctl_gntdev_dealloc_gref** %3, align 8
  %18 = getelementptr inbounds %struct.ioctl_gntdev_dealloc_gref, %struct.ioctl_gntdev_dealloc_gref* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ioctl_gntdev_dealloc_gref*, %struct.ioctl_gntdev_dealloc_gref** %3, align 8
  %21 = getelementptr inbounds %struct.ioctl_gntdev_dealloc_gref, %struct.ioctl_gntdev_dealloc_gref* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.gntdev_gref* @gntdev_find_grefs(%struct.per_user_data* %16, i32 %19, i64 %22)
  store %struct.gntdev_gref* %23, %struct.gntdev_gref** %6, align 8
  %24 = load %struct.gntdev_gref*, %struct.gntdev_gref** %6, align 8
  %25 = icmp eq %struct.gntdev_gref* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @log(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %2, align 4
  br label %79

30:                                               ; preds = %15
  %31 = load %struct.ioctl_gntdev_dealloc_gref*, %struct.ioctl_gntdev_dealloc_gref** %3, align 8
  %32 = getelementptr inbounds %struct.ioctl_gntdev_dealloc_gref, %struct.ioctl_gntdev_dealloc_gref* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %35 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %34, i32 0, i32 0
  %36 = call i32 @mtx_lock(i32* %35)
  %37 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cleanup_data, i32 0, i32 0))
  br label %38

38:                                               ; preds = %62, %30
  %39 = load %struct.gntdev_gref*, %struct.gntdev_gref** %6, align 8
  %40 = icmp ne %struct.gntdev_gref* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = icmp sgt i64 %42, 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %64

46:                                               ; preds = %44
  %47 = load i32, i32* @gref_tree_head, align 4
  %48 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %49 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %48, i32 0, i32 1
  %50 = load %struct.gntdev_gref*, %struct.gntdev_gref** %6, align 8
  %51 = call %struct.gntdev_gref* @RB_NEXT(i32 %47, i32* %49, %struct.gntdev_gref* %50)
  store %struct.gntdev_gref* %51, %struct.gntdev_gref** %7, align 8
  %52 = load i32, i32* @gref_tree_head, align 4
  %53 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %54 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %53, i32 0, i32 1
  %55 = load %struct.gntdev_gref*, %struct.gntdev_gref** %6, align 8
  %56 = call i32 @RB_REMOVE(i32 %52, i32* %54, %struct.gntdev_gref* %55)
  %57 = load %struct.gntdev_gref*, %struct.gntdev_gref** %6, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gref_next, i32 0, i32 0), align 4
  %59 = call i32 @STAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cleanup_data, i32 0, i32 1), %struct.gntdev_gref* %57, i32 %58)
  %60 = load i64, i64* %5, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %46
  %63 = load %struct.gntdev_gref*, %struct.gntdev_gref** %7, align 8
  store %struct.gntdev_gref* %63, %struct.gntdev_gref** %6, align 8
  br label %38

64:                                               ; preds = %44
  %65 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cleanup_data, i32 0, i32 0))
  %66 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %67 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %66, i32 0, i32 0
  %68 = call i32 @mtx_unlock(i32* %67)
  %69 = load i32, i32* @taskqueue_thread, align 4
  %70 = call i32 @taskqueue_enqueue(i32 %69, i32* @cleanup_task)
  %71 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  %72 = load %struct.ioctl_gntdev_dealloc_gref*, %struct.ioctl_gntdev_dealloc_gref** %3, align 8
  %73 = getelementptr inbounds %struct.ioctl_gntdev_dealloc_gref, %struct.ioctl_gntdev_dealloc_gref* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ioctl_gntdev_dealloc_gref*, %struct.ioctl_gntdev_dealloc_gref** %3, align 8
  %76 = getelementptr inbounds %struct.ioctl_gntdev_dealloc_gref, %struct.ioctl_gntdev_dealloc_gref* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @put_file_offset(%struct.per_user_data* %71, i64 %74, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %64, %26, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local %struct.gntdev_gref* @gntdev_find_grefs(%struct.per_user_data*, i32, i64) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gntdev_gref* @RB_NEXT(i32, i32*, %struct.gntdev_gref*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.gntdev_gref*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.gntdev_gref*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @put_file_offset(%struct.per_user_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
