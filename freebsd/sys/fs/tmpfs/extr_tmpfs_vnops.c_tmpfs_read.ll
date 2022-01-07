; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_read_args = type { %struct.uio*, %struct.vnode* }
%struct.uio = type { i64 }
%struct.vnode = type { i64, i32 }
%struct.tmpfs_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VREG = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @tmpfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  %7 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VREG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EISDIR, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %18, i32 0, i32 0
  %20 = load %struct.uio*, %struct.uio** %19, align 8
  store %struct.uio* %20, %struct.uio** %5, align 8
  %21 = load %struct.uio*, %struct.uio** %5, align 8
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %17
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %28)
  store %struct.tmpfs_node* %29, %struct.tmpfs_node** %6, align 8
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @VFS_TO_TMPFS(i32 %32)
  %34 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %35 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %36 = call i32 @tmpfs_set_status(i32 %33, %struct.tmpfs_node* %34, i32 %35)
  %37 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %38 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %42 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uio*, %struct.uio** %5, align 8
  %45 = call i32 @uiomove_object(i32 %40, i32 %43, %struct.uio* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %27, %25, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @tmpfs_set_status(i32, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @uiomove_object(i32, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
