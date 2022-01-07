; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_fsync_args = type { i32, i32, i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.unionfs_node_status = type { i64 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_fsync_args*)* @unionfs_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_fsync(%struct.vop_fsync_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_fsync_args*, align 8
  %4 = alloca %struct.unionfs_node*, align 8
  %5 = alloca %struct.unionfs_node_status*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.vop_fsync_args* %0, %struct.vop_fsync_args** %3, align 8
  %7 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @KASSERT_UNIONFS_VNODE(i32 %9)
  %11 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.unionfs_node* @VTOUNIONFS(i32 %13)
  store %struct.unionfs_node* %14, %struct.unionfs_node** %4, align 8
  %15 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %16 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @unionfs_get_node_status(%struct.unionfs_node* %15, i32 %18, %struct.unionfs_node_status** %5)
  %20 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %21 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %26 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %25, i32 0, i32 1
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %30 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %29, i32 0, i32 0
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi %struct.vnode* [ %27, %24 ], [ %31, %28 ]
  store %struct.vnode* %33, %struct.vnode** %6, align 8
  %34 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %35 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %36 = call i32 @unionfs_tryrem_node_status(%struct.unionfs_node* %34, %struct.unionfs_node_status* %35)
  %37 = load %struct.vnode*, %struct.vnode** %6, align 8
  %38 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %39 = icmp eq %struct.vnode* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @EBADF, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %32
  %43 = load %struct.vnode*, %struct.vnode** %6, align 8
  %44 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @VOP_FSYNC(%struct.vnode* %43, i32 %46, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %40
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @unionfs_get_node_status(%struct.unionfs_node*, i32, %struct.unionfs_node_status**) #1

declare dso_local i32 @unionfs_tryrem_node_status(%struct.unionfs_node*, %struct.unionfs_node_status*) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
