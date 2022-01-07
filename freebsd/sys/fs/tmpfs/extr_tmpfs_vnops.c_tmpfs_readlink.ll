; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readlink_args = type { %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i32 }
%struct.vnode = type { i64, i32 }
%struct.tmpfs_node = type { i32, i32 }

@VLNK = common dso_local global i64 0, align 8
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readlink_args*)* @tmpfs_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_readlink(%struct.vop_readlink_args* %0) #0 {
  %2 = alloca %struct.vop_readlink_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_readlink_args* %0, %struct.vop_readlink_args** %2, align 8
  %7 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %10, i32 0, i32 0
  %12 = load %struct.uio*, %struct.uio** %11, align 8
  store %struct.uio* %12, %struct.uio** %4, align 8
  %13 = load %struct.uio*, %struct.uio** %4, align 8
  %14 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.vnode*, %struct.vnode** %3, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VLNK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %26)
  store %struct.tmpfs_node* %27, %struct.tmpfs_node** %6, align 8
  %28 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %29 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %32 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uio*, %struct.uio** %4, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @MIN(i32 %33, i32 %36)
  %38 = load %struct.uio*, %struct.uio** %4, align 8
  %39 = call i32 @uiomove(i32 %30, i32 %37, %struct.uio* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.vnode*, %struct.vnode** %3, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @VFS_TO_TMPFS(i32 %42)
  %44 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %45 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %46 = call i32 @tmpfs_set_status(i32 %43, %struct.tmpfs_node* %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @tmpfs_set_status(i32, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @VFS_TO_TMPFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
