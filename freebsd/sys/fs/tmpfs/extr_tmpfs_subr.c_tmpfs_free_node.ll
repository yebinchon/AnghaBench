; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_free_node(%struct.tmpfs_mount* %0, %struct.tmpfs_node* %1) #0 {
  %3 = alloca %struct.tmpfs_mount*, align 8
  %4 = alloca %struct.tmpfs_node*, align 8
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %3, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %4, align 8
  %5 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %3, align 8
  %6 = call i32 @TMPFS_LOCK(%struct.tmpfs_mount* %5)
  %7 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %8 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %7)
  %9 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %3, align 8
  %10 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %11 = call i32 @tmpfs_free_node_locked(%struct.tmpfs_mount* %9, %struct.tmpfs_node* %10, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %15 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %14)
  %16 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %3, align 8
  %17 = call i32 @TMPFS_UNLOCK(%struct.tmpfs_mount* %16)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @TMPFS_LOCK(%struct.tmpfs_mount*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @tmpfs_free_node_locked(%struct.tmpfs_mount*, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_UNLOCK(%struct.tmpfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
