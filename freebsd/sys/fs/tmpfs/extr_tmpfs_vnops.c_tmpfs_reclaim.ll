; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { i64, i32*, i32*, i32 }
%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VREG = common dso_local global i64 0, align 8
@TMPFS_VNODE_ALLOCATING = common dso_local global i32 0, align 4
@TMPFS_VNODE_DOOMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_reclaim(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.tmpfs_mount*, align 8
  %5 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %6 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %6, i32 0, i32 0
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %9)
  store %struct.tmpfs_node* %10, %struct.tmpfs_node** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(i32 %13)
  store %struct.tmpfs_mount* %14, %struct.tmpfs_mount** %4, align 8
  %15 = load %struct.vnode*, %struct.vnode** %3, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VREG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %23 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tmpfs_destroy_vobject(%struct.vnode* %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.vnode*, %struct.vnode** %3, align 8
  %31 = call i64 @tmpfs_use_nc(%struct.vnode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.vnode*, %struct.vnode** %3, align 8
  %35 = call i32 @cache_purge(%struct.vnode* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %38 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %37)
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = call i32 @tmpfs_free_vp(%struct.vnode* %39)
  %41 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %42 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %47 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TMPFS_VNODE_ALLOCATING, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @TMPFS_VNODE_DOOMED, align 4
  %54 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %55 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %57 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %56)
  %58 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %4, align 8
  %59 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %60 = call i32 @tmpfs_free_node(%struct.tmpfs_mount* %58, %struct.tmpfs_node* %59)
  br label %64

61:                                               ; preds = %45, %36
  %62 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %63 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %62)
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.vnode*, %struct.vnode** %3, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @MPASS(i32 %69)
  ret i32 0
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @tmpfs_destroy_vobject(%struct.vnode*, i32) #1

declare dso_local i64 @tmpfs_use_nc(%struct.vnode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_free_vp(%struct.vnode*) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_free_node(%struct.tmpfs_mount*, %struct.tmpfs_node*) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
