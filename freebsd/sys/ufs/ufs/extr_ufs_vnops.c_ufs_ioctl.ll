; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_vnops.c_ufs_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_vnops.c_ufs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_ioctl_args = type { i32, i32, i64, %struct.vnode* }
%struct.vnode = type { i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_ioctl_args*)* @ufs_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_ioctl(%struct.vop_ioctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_ioctl_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_ioctl_args* %0, %struct.vop_ioctl_args** %3, align 8
  %6 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %6, i32 0, i32 3
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %44 [
    i32 129, label %12
    i32 128, label %31
  ]

12:                                               ; preds = %1
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = load i32, i32* @LK_SHARED, align 4
  %15 = call i32 @vn_lock(%struct.vnode* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @ufs_bmap_seekdata(%struct.vnode* %19, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = call i32 @VOP_UNLOCK(%struct.vnode* %25, i32 0)
  br label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @EBADF, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %41 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vn_bmap_seekhole(%struct.vnode* %32, i32 %35, i32* %39, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @ENOTTY, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %31, %29
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @ufs_bmap_seekdata(%struct.vnode*, i32*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_bmap_seekhole(%struct.vnode*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
