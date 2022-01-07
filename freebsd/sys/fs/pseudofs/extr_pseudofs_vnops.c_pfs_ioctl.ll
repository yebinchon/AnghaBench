; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_ioctl_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32, i64, %struct.pfs_vdata* }
%struct.pfs_vdata = type { i32, %struct.pfs_node* }
%struct.pfs_node = type { i32*, i32 }
%struct.proc = type { i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %lx\00", align 1
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_ioctl_args*)* @pfs_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_ioctl(%struct.vop_ioctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_ioctl_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.vop_ioctl_args* %0, %struct.vop_ioctl_args** %3, align 8
  %9 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %9, i32 0, i32 2
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = load i32, i32* @LK_SHARED, align 4
  %14 = load i32, i32* @LK_RETRY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @vn_lock(%struct.vnode* %12, i32 %15)
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VI_DOOMED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = call i32 @VOP_UNLOCK(%struct.vnode* %24, i32 0)
  %26 = load i32, i32* @EBADF, align 4
  store i32 %26, i32* %2, align 4
  br label %101

27:                                               ; preds = %1
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 2
  %30 = load %struct.pfs_vdata*, %struct.pfs_vdata** %29, align 8
  store %struct.pfs_vdata* %30, %struct.pfs_vdata** %5, align 8
  %31 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %32 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %31, i32 0, i32 1
  %33 = load %struct.pfs_node*, %struct.pfs_node** %32, align 8
  store %struct.pfs_node* %33, %struct.pfs_node** %6, align 8
  %34 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %35 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @PFS_TRACE(i8* %41)
  %43 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %44 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %43)
  %45 = load %struct.vnode*, %struct.vnode** %4, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VREG, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %27
  %51 = load %struct.vnode*, %struct.vnode** %4, align 8
  %52 = call i32 @VOP_UNLOCK(%struct.vnode* %51, i32 0)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @PFS_RETURN(i32 %53)
  br label %55

55:                                               ; preds = %50, %27
  %56 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %57 = call i32 @KASSERT_PN_IS_FILE(%struct.pfs_node* %56)
  %58 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %59 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = call i32 @VOP_UNLOCK(%struct.vnode* %63, i32 0)
  %65 = load i32, i32* @ENOTTY, align 4
  %66 = call i32 @PFS_RETURN(i32 %65)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* @curthread, align 4
  %69 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %70 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %71 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pfs_visible(i32 %68, %struct.pfs_node* %69, i32 %72, %struct.proc** %7)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = load %struct.vnode*, %struct.vnode** %4, align 8
  %77 = call i32 @VOP_UNLOCK(%struct.vnode* %76, i32 0)
  %78 = load i32, i32* @EIO, align 4
  %79 = call i32 @PFS_RETURN(i32 %78)
  br label %80

80:                                               ; preds = %75, %67
  %81 = load i32, i32* @curthread, align 4
  %82 = load %struct.proc*, %struct.proc** %7, align 8
  %83 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %84 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %85 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %88 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pn_ioctl(i32 %81, %struct.proc* %82, %struct.pfs_node* %83, i32 %86, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.proc*, %struct.proc** %7, align 8
  %92 = icmp ne %struct.proc* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load %struct.proc*, %struct.proc** %7, align 8
  %95 = call i32 @PROC_UNLOCK(%struct.proc* %94)
  br label %96

96:                                               ; preds = %93, %80
  %97 = load %struct.vnode*, %struct.vnode** %4, align 8
  %98 = call i32 @VOP_UNLOCK(%struct.vnode* %97, i32 0)
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @PFS_RETURN(i32 %99)
  br label %101

101:                                              ; preds = %96, %23
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local i32 @KASSERT_PN_IS_FILE(%struct.pfs_node*) #1

declare dso_local i32 @pfs_visible(i32, %struct.pfs_node*, i32, %struct.proc**) #1

declare dso_local i32 @pn_ioctl(i32, %struct.proc*, %struct.pfs_node*, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
