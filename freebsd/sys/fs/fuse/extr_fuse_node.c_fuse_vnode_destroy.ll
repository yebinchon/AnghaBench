; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.fuse_vnode_data* }
%struct.fuse_vnode_data = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Destroying fuse vnode with open files!\00", align 1
@M_FUSEVN = common dso_local global i32 0, align 4
@fuse_node_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_vnode_destroy(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.fuse_vnode_data*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = getelementptr inbounds %struct.vnode, %struct.vnode* %4, i32 0, i32 0
  %6 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %5, align 8
  store %struct.fuse_vnode_data* %6, %struct.fuse_vnode_data** %3, align 8
  %7 = load %struct.vnode*, %struct.vnode** %2, align 8
  %8 = getelementptr inbounds %struct.vnode, %struct.vnode* %7, i32 0, i32 0
  store %struct.fuse_vnode_data* null, %struct.fuse_vnode_data** %8, align 8
  %9 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %9, i32 0, i32 0
  %11 = call i32 @LIST_EMPTY(i32* %10)
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %3, align 8
  %14 = load i32, i32* @M_FUSEVN, align 4
  %15 = call i32 @free(%struct.fuse_vnode_data* %13, i32 %14)
  %16 = load i32, i32* @fuse_node_count, align 4
  %17 = call i32 @counter_u64_add(i32 %16, i32 -1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @free(%struct.fuse_vnode_data*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
