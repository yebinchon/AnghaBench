; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_invalidate_inode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_invalidate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.uio = type { i32 }
%struct.fuse_notify_inval_inode_out = type { i64, i64 }
%struct.vnode = type { i32 }

@FUSE_ROOT_ID = common dso_local global i64 0, align 8
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_invalidate_inode(%struct.mount* %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.fuse_notify_inval_inode_out, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  %9 = load %struct.uio*, %struct.uio** %5, align 8
  %10 = call i32 @uiomove(%struct.fuse_notify_inval_inode_out* %6, i32 16, %struct.uio* %9)
  store i32 %10, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fuse_notify_inval_inode_out, %struct.fuse_notify_inval_inode_out* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FUSE_ROOT_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.mount*, %struct.mount** %4, align 8
  %21 = load i32, i32* @LK_EXCLUSIVE, align 4
  %22 = call i32 @VFS_ROOT(%struct.mount* %20, i32 %21, %struct.vnode** %7)
  store i32 %22, i32* %8, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = getelementptr inbounds %struct.fuse_notify_inval_inode_out, %struct.fuse_notify_inval_inode_out* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @LK_SHARED, align 4
  %28 = call i32 @fuse_internal_get_cached_vnode(%struct.mount* %24, i64 %26, i32 %27, %struct.vnode** %7)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.vnode*, %struct.vnode** %7, align 8
  %34 = icmp eq %struct.vnode* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.fuse_notify_inval_inode_out, %struct.fuse_notify_inval_inode_out* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.vnode*, %struct.vnode** %7, align 8
  %43 = load i32, i32* @curthread, align 4
  %44 = call i32 @fuse_io_invalbuf(%struct.vnode* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.vnode*, %struct.vnode** %7, align 8
  %47 = call i32 @fuse_vnode_clear_attr_cache(%struct.vnode* %46)
  %48 = load %struct.vnode*, %struct.vnode** %7, align 8
  %49 = call i32 @vput(%struct.vnode* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %35, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @uiomove(%struct.fuse_notify_inval_inode_out*, i32, %struct.uio*) #1

declare dso_local i32 @VFS_ROOT(%struct.mount*, i32, %struct.vnode**) #1

declare dso_local i32 @fuse_internal_get_cached_vnode(%struct.mount*, i64, i32, %struct.vnode**) #1

declare dso_local i32 @fuse_io_invalbuf(%struct.vnode*, i32) #1

declare dso_local i32 @fuse_vnode_clear_attr_cache(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
