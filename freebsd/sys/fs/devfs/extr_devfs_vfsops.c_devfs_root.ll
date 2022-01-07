; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vfsops.c_devfs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vfsops.c_devfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.devfs_mount = type { i32, i32 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, %struct.vnode**)* @devfs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_root(%struct.mount* %0, i32 %1, %struct.vnode** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.devfs_mount*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vnode** %2, %struct.vnode*** %7, align 8
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = call %struct.devfs_mount* @VFSTODEVFS(%struct.mount* %11)
  store %struct.devfs_mount* %12, %struct.devfs_mount** %10, align 8
  %13 = load %struct.devfs_mount*, %struct.devfs_mount** %10, align 8
  %14 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %13, i32 0, i32 1
  %15 = call i32 @sx_xlock(i32* %14)
  %16 = load %struct.devfs_mount*, %struct.devfs_mount** %10, align 8
  %17 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mount*, %struct.mount** %5, align 8
  %20 = load i32, i32* @LK_EXCLUSIVE, align 4
  %21 = call i32 @devfs_allocv(i32 %18, %struct.mount* %19, i32 %20, %struct.vnode** %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @VV_ROOT, align 4
  %28 = load %struct.vnode*, %struct.vnode** %9, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.vnode*, %struct.vnode** %9, align 8
  %33 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %32, %struct.vnode** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.devfs_mount* @VFSTODEVFS(%struct.mount*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @devfs_allocv(i32, %struct.mount*, i32, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
