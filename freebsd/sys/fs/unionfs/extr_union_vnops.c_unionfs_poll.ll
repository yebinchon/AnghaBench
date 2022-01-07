; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_poll_args = type { i32, i32, i32, i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.unionfs_node_status = type { i64 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_poll_args*)* @unionfs_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_poll(%struct.vop_poll_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_poll_args*, align 8
  %4 = alloca %struct.unionfs_node*, align 8
  %5 = alloca %struct.unionfs_node_status*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.vop_poll_args* %0, %struct.vop_poll_args** %3, align 8
  %7 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @KASSERT_UNIONFS_VNODE(i32 %9)
  %11 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LK_EXCLUSIVE, align 4
  %15 = load i32, i32* @LK_RETRY, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @vn_lock(i32 %13, i32 %16)
  %18 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.unionfs_node* @VTOUNIONFS(i32 %20)
  store %struct.unionfs_node* %21, %struct.unionfs_node** %4, align 8
  %22 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %23 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @unionfs_get_node_status(%struct.unionfs_node* %22, i32 %25, %struct.unionfs_node_status** %5)
  %27 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %28 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %33 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %32, i32 0, i32 1
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %37 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %36, i32 0, i32 0
  %38 = load %struct.vnode*, %struct.vnode** %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi %struct.vnode* [ %34, %31 ], [ %38, %35 ]
  store %struct.vnode* %40, %struct.vnode** %6, align 8
  %41 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %42 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %43 = call i32 @unionfs_tryrem_node_status(%struct.unionfs_node* %41, %struct.unionfs_node_status* %42)
  %44 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LK_RELEASE, align 4
  %48 = call i32 @VOP_UNLOCK(i32 %46, i32 %47)
  %49 = load %struct.vnode*, %struct.vnode** %6, align 8
  %50 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %51 = icmp eq %struct.vnode* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @EBADF, align 4
  store i32 %53, i32* %2, align 4
  br label %66

54:                                               ; preds = %39
  %55 = load %struct.vnode*, %struct.vnode** %6, align 8
  %56 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %60 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vop_poll_args*, %struct.vop_poll_args** %3, align 8
  %63 = getelementptr inbounds %struct.vop_poll_args, %struct.vop_poll_args* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @VOP_POLL(%struct.vnode* %55, i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %54, %52
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @unionfs_get_node_status(%struct.unionfs_node*, i32, %struct.unionfs_node_status**) #1

declare dso_local i32 @unionfs_tryrem_node_status(%struct.unionfs_node*, %struct.unionfs_node_status*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @VOP_POLL(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
