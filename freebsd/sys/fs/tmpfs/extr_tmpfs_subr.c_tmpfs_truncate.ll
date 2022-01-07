; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.tmpfs_node = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@TMPFS_NODE_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_truncate(%struct.vnode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tmpfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %8)
  store %struct.tmpfs_node* %9, %struct.tmpfs_node** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %6, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %16 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %48

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_2__* @VFS_TO_TMPFS(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %22, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @EFBIG, align 4
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %21
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @tmpfs_reg_resize(%struct.vnode* %33, i64 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %41 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %44 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %39, %32
  br label %48

48:                                               ; preds = %47, %20, %12
  %49 = load %struct.vnode*, %struct.vnode** %4, align 8
  %50 = call i32 @tmpfs_update(%struct.vnode* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %30
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local %struct.TYPE_2__* @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @tmpfs_reg_resize(%struct.vnode*, i64, i32) #1

declare dso_local i32 @tmpfs_update(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
