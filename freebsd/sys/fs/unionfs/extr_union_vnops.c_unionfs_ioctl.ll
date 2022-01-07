; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_ioctl_args = type { i32, i32, i32, i32, i32, i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.unionfs_node_status = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"unionfs_ioctl: enter\0A\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@EBADF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unionfs_ioctl: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_ioctl_args*)* @unionfs_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_ioctl(%struct.vop_ioctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_ioctl_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.unionfs_node_status*, align 8
  %7 = alloca %struct.vnode*, align 8
  store %struct.vop_ioctl_args* %0, %struct.vop_ioctl_args** %3, align 8
  %8 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @KASSERT_UNIONFS_VNODE(i32 %11)
  %13 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LK_EXCLUSIVE, align 4
  %17 = load i32, i32* @LK_RETRY, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @vn_lock(i32 %15, i32 %18)
  %20 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.unionfs_node* @VTOUNIONFS(i32 %22)
  store %struct.unionfs_node* %23, %struct.unionfs_node** %5, align 8
  %24 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %25 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @unionfs_get_node_status(%struct.unionfs_node* %24, i32 %27, %struct.unionfs_node_status** %6)
  %29 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %30 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %35 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %34, i32 0, i32 1
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %39 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %38, i32 0, i32 0
  %40 = load %struct.vnode*, %struct.vnode** %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi %struct.vnode* [ %36, %33 ], [ %40, %37 ]
  store %struct.vnode* %42, %struct.vnode** %7, align 8
  %43 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %44 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %6, align 8
  %45 = call i32 @unionfs_tryrem_node_status(%struct.unionfs_node* %43, %struct.unionfs_node_status* %44)
  %46 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @LK_RELEASE, align 4
  %50 = call i32 @VOP_UNLOCK(i32 %48, i32 %49)
  %51 = load %struct.vnode*, %struct.vnode** %7, align 8
  %52 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %53 = icmp eq %struct.vnode* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @EBADF, align 4
  store i32 %55, i32* %2, align 4
  br label %77

56:                                               ; preds = %41
  %57 = load %struct.vnode*, %struct.vnode** %7, align 8
  %58 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %59 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %62 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %65 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %68 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %71 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @VOP_IOCTL(%struct.vnode* %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %56, %54
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @unionfs_get_node_status(%struct.unionfs_node*, i32, %struct.unionfs_node_status**) #1

declare dso_local i32 @unionfs_tryrem_node_status(%struct.unionfs_node*, %struct.unionfs_node_status*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @VOP_IOCTL(%struct.vnode*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
