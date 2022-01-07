; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_gntdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.ioctl_gntdev_unmap_notify = type { i32 }
%struct.ioctl_gntdev_alloc_gref = type { i32 }
%struct.ioctl_gntdev_dealloc_gref = type { i32 }
%struct.ioctl_gntdev_map_grant_ref = type { i32 }
%struct.ioctl_gntdev_unmap_grant_ref = type { i32 }
%struct.ioctl_gntdev_get_offset_for_vaddr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @gntdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %38 [
    i32 129, label %13
    i32 133, label %17
    i32 132, label %21
    i32 130, label %25
    i32 128, label %29
    i32 131, label %33
  ]

13:                                               ; preds = %5
  %14 = load i64, i64* %8, align 8
  %15 = inttoptr i64 %14 to %struct.ioctl_gntdev_unmap_notify*
  %16 = call i32 @gntdev_set_unmap_notify(%struct.ioctl_gntdev_unmap_notify* %15)
  store i32 %16, i32* %11, align 4
  br label %40

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to %struct.ioctl_gntdev_alloc_gref*
  %20 = call i32 @gntdev_alloc_gref(%struct.ioctl_gntdev_alloc_gref* %19)
  store i32 %20, i32* %11, align 4
  br label %40

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = inttoptr i64 %22 to %struct.ioctl_gntdev_dealloc_gref*
  %24 = call i32 @gntdev_dealloc_gref(%struct.ioctl_gntdev_dealloc_gref* %23)
  store i32 %24, i32* %11, align 4
  br label %40

25:                                               ; preds = %5
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to %struct.ioctl_gntdev_map_grant_ref*
  %28 = call i32 @gntdev_map_grant_ref(%struct.ioctl_gntdev_map_grant_ref* %27)
  store i32 %28, i32* %11, align 4
  br label %40

29:                                               ; preds = %5
  %30 = load i64, i64* %8, align 8
  %31 = inttoptr i64 %30 to %struct.ioctl_gntdev_unmap_grant_ref*
  %32 = call i32 @gntdev_unmap_grant_ref(%struct.ioctl_gntdev_unmap_grant_ref* %31)
  store i32 %32, i32* %11, align 4
  br label %40

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  %35 = inttoptr i64 %34 to %struct.ioctl_gntdev_get_offset_for_vaddr*
  %36 = load %struct.thread*, %struct.thread** %10, align 8
  %37 = call i32 @gntdev_get_offset_for_vaddr(%struct.ioctl_gntdev_get_offset_for_vaddr* %35, %struct.thread* %36)
  store i32 %37, i32* %11, align 4
  br label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @ENOSYS, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %33, %29, %25, %21, %17, %13
  %41 = load i32, i32* %11, align 4
  ret i32 %41
}

declare dso_local i32 @gntdev_set_unmap_notify(%struct.ioctl_gntdev_unmap_notify*) #1

declare dso_local i32 @gntdev_alloc_gref(%struct.ioctl_gntdev_alloc_gref*) #1

declare dso_local i32 @gntdev_dealloc_gref(%struct.ioctl_gntdev_dealloc_gref*) #1

declare dso_local i32 @gntdev_map_grant_ref(%struct.ioctl_gntdev_map_grant_ref*) #1

declare dso_local i32 @gntdev_unmap_grant_ref(%struct.ioctl_gntdev_unmap_grant_ref*) #1

declare dso_local i32 @gntdev_get_offset_for_vaddr(%struct.ioctl_gntdev_get_offset_for_vaddr*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
