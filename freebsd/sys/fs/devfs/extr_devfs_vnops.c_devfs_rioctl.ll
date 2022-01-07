; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_rioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_rioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_ioctl_args = type { i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i32, i32 }
%struct.devfs_mount = type { i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_ioctl_args*)* @devfs_rioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_rioctl(%struct.vop_ioctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_ioctl_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.devfs_mount*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_ioctl_args* %0, %struct.vop_ioctl_args** %3, align 8
  %7 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %7, i32 0, i32 3
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = load i32, i32* @LK_SHARED, align 4
  %12 = load i32, i32* @LK_RETRY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @vn_lock(%struct.vnode* %10, i32 %13)
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VI_DOOMED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = call i32 @VOP_UNLOCK(%struct.vnode* %22, i32 0)
  %24 = load i32, i32* @EBADF, align 4
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.devfs_mount* @VFSTODEVFS(i32 %28)
  store %struct.devfs_mount* %29, %struct.devfs_mount** %5, align 8
  %30 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %31 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %30, i32 0, i32 0
  %32 = call i32 @sx_xlock(i32* %31)
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = call i32 @VOP_UNLOCK(%struct.vnode* %33, i32 0)
  %35 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %36 = call i32 @DEVFS_DMP_HOLD(%struct.devfs_mount* %35)
  %37 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %38 = call i32 @devfs_populate(%struct.devfs_mount* %37)
  %39 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %40 = call i64 @DEVFS_DMP_DROP(%struct.devfs_mount* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %44 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %43, i32 0, i32 0
  %45 = call i32 @sx_xunlock(i32* %44)
  %46 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %47 = call i32 @devfs_unmount_final(%struct.devfs_mount* %46)
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %25
  %50 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %51 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %52 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %58 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @devfs_rules_ioctl(%struct.devfs_mount* %50, i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %62 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %61, i32 0, i32 0
  %63 = call i32 @sx_xunlock(i32* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %49, %42, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local %struct.devfs_mount* @VFSTODEVFS(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @DEVFS_DMP_HOLD(%struct.devfs_mount*) #1

declare dso_local i32 @devfs_populate(%struct.devfs_mount*) #1

declare dso_local i64 @DEVFS_DMP_DROP(%struct.devfs_mount*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @devfs_unmount_final(%struct.devfs_mount*) #1

declare dso_local i32 @devfs_rules_ioctl(%struct.devfs_mount*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
