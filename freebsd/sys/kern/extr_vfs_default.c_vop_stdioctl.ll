; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_ioctl_args = type { i32, i32*, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.vattr = type { i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_ioctl_args*)* @vop_stdioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_stdioctl(%struct.vop_ioctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_ioctl_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_ioctl_args* %0, %struct.vop_ioctl_args** %3, align 8
  %8 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %68 [
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %12, i32 0, i32 3
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = load i32, i32* @LK_SHARED, align 4
  %17 = call i32 @vn_lock(%struct.vnode* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @EBADF, align 4
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %11
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VREG, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @VOP_GETATTR(%struct.vnode* %29, %struct.vattr* %5, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOTTY, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %41 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %39
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %7, align 4
  br label %64

54:                                               ; preds = %46
  %55 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %56 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = call i32 @VOP_UNLOCK(%struct.vnode* %66, i32 0)
  br label %70

68:                                               ; preds = %1
  %69 = load i32, i32* @ENOTTY, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
