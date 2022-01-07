; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_set_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i64 }
%struct.tmpfs_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_set_status(%struct.tmpfs_mount* %0, %struct.tmpfs_node* %1, i32 %2) #0 {
  %4 = alloca %struct.tmpfs_mount*, align 8
  %5 = alloca %struct.tmpfs_node*, align 8
  %6 = alloca i32, align 4
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %4, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %8 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %4, align 8
  %16 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  br label %30

20:                                               ; preds = %14
  %21 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %22 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %25 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %29 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %28)
  br label %30

30:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
