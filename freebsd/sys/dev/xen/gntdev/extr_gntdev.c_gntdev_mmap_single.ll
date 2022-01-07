; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.vm_object = type { i32 }
%struct.gntdev_gref = type { i32 }
%struct.gntdev_gmap = type { i32 }
%struct.per_user_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32*, i32, %struct.vm_object**, i32)* @gntdev_mmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_mmap_single(%struct.cdev* %0, i32* %1, i32 %2, %struct.vm_object** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gntdev_gref*, align 8
  %15 = alloca %struct.gntdev_gmap*, align 8
  %16 = alloca %struct.per_user_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vm_object** %3, %struct.vm_object*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = bitcast %struct.per_user_data** %16 to i8**
  %18 = call i32 @devfs_get_cdevpriv(i8** %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %6, align 4
  br label %60

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @OFF_TO_IDX(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.per_user_data*, %struct.per_user_data** %16, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.gntdev_gref* @gntdev_find_grefs(%struct.per_user_data* %26, i32 %28, i32 %29)
  store %struct.gntdev_gref* %30, %struct.gntdev_gref** %14, align 8
  %31 = load %struct.gntdev_gref*, %struct.gntdev_gref** %14, align 8
  %32 = icmp ne %struct.gntdev_gref* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.per_user_data*, %struct.per_user_data** %16, align 8
  %35 = load %struct.gntdev_gref*, %struct.gntdev_gref** %14, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  %39 = call i32 @mmap_gref(%struct.per_user_data* %34, %struct.gntdev_gref* %35, i32 %36, i32 %37, %struct.vm_object** %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %60

41:                                               ; preds = %23
  %42 = load %struct.per_user_data*, %struct.per_user_data** %16, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.gntdev_gmap* @gntdev_find_gmap(%struct.per_user_data* %42, i32 %44, i32 %45)
  store %struct.gntdev_gmap* %46, %struct.gntdev_gmap** %15, align 8
  %47 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %15, align 8
  %48 = icmp ne %struct.gntdev_gmap* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.per_user_data*, %struct.per_user_data** %16, align 8
  %51 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %15, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @mmap_gmap(%struct.per_user_data* %50, %struct.gntdev_gmap* %51, i32* %52, i32 %53, %struct.vm_object** %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %41
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %49, %33, %21
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local %struct.gntdev_gref* @gntdev_find_grefs(%struct.per_user_data*, i32, i32) #1

declare dso_local i32 @mmap_gref(%struct.per_user_data*, %struct.gntdev_gref*, i32, i32, %struct.vm_object**) #1

declare dso_local %struct.gntdev_gmap* @gntdev_find_gmap(%struct.per_user_data*, i32, i32) #1

declare dso_local i32 @mmap_gmap(%struct.per_user_data*, %struct.gntdev_gmap*, i32*, i32, %struct.vm_object**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
