; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_read_args = type { i32, i32, i32, i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @unionfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca %struct.vop_read_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.unionfs_node*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.vop_read_args* %0, %struct.vop_read_args** %2, align 8
  %6 = load %struct.vop_read_args*, %struct.vop_read_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @KASSERT_UNIONFS_VNODE(i32 %8)
  %10 = load %struct.vop_read_args*, %struct.vop_read_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.unionfs_node* @VTOUNIONFS(i32 %12)
  store %struct.unionfs_node* %13, %struct.unionfs_node** %4, align 8
  %14 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %15 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %14, i32 0, i32 1
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  %17 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %18 = icmp ne %struct.vnode* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %21 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %20, i32 0, i32 1
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %25 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %24, i32 0, i32 0
  %26 = load %struct.vnode*, %struct.vnode** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi %struct.vnode* [ %22, %19 ], [ %26, %23 ]
  store %struct.vnode* %28, %struct.vnode** %5, align 8
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = load %struct.vop_read_args*, %struct.vop_read_args** %2, align 8
  %31 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vop_read_args*, %struct.vop_read_args** %2, align 8
  %34 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vop_read_args*, %struct.vop_read_args** %2, align 8
  %37 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @VOP_READ(%struct.vnode* %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
