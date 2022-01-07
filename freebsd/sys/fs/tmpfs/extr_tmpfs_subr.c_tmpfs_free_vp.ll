; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32* }
%struct.tmpfs_node = type { i32, i32* }

@TMPFS_VNODE_WRECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_free_vp(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.tmpfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %4)
  store %struct.tmpfs_node* %5, %struct.tmpfs_node** %3, align 8
  %6 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %7 = call i32 @TMPFS_NODE_ASSERT_LOCKED(%struct.tmpfs_node* %6)
  %8 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %9 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %11 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TMPFS_VNODE_WRECLAIM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %18 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %17, i32 0, i32 1
  %19 = call i32 @wakeup(i32** %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @TMPFS_VNODE_WRECLAIM, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %24 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.vnode*, %struct.vnode** %2, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @TMPFS_NODE_ASSERT_LOCKED(%struct.tmpfs_node*) #1

declare dso_local i32 @wakeup(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
