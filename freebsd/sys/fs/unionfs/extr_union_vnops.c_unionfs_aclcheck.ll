; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_aclcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_aclcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_aclcheck_args = type { i32, i32, i32, i32, i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@.str = private unnamed_addr constant [25 x i8] c"unionfs_aclcheck: enter\0A\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unionfs_aclcheck: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_aclcheck_args*)* @unionfs_aclcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_aclcheck(%struct.vop_aclcheck_args* %0) #0 {
  %2 = alloca %struct.vop_aclcheck_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.unionfs_node*, align 8
  %5 = alloca %struct.vnode*, align 8
  store %struct.vop_aclcheck_args* %0, %struct.vop_aclcheck_args** %2, align 8
  %6 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.vop_aclcheck_args*, %struct.vop_aclcheck_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_aclcheck_args, %struct.vop_aclcheck_args* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @KASSERT_UNIONFS_VNODE(i32 %9)
  %11 = load %struct.vop_aclcheck_args*, %struct.vop_aclcheck_args** %2, align 8
  %12 = getelementptr inbounds %struct.vop_aclcheck_args, %struct.vop_aclcheck_args* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.unionfs_node* @VTOUNIONFS(i32 %13)
  store %struct.unionfs_node* %14, %struct.unionfs_node** %4, align 8
  %15 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %16 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %15, i32 0, i32 1
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  %18 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %19 = icmp ne %struct.vnode* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %22 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %21, i32 0, i32 1
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %26 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %25, i32 0, i32 0
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi %struct.vnode* [ %23, %20 ], [ %27, %24 ]
  store %struct.vnode* %29, %struct.vnode** %5, align 8
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = load %struct.vop_aclcheck_args*, %struct.vop_aclcheck_args** %2, align 8
  %32 = getelementptr inbounds %struct.vop_aclcheck_args, %struct.vop_aclcheck_args* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vop_aclcheck_args*, %struct.vop_aclcheck_args** %2, align 8
  %35 = getelementptr inbounds %struct.vop_aclcheck_args, %struct.vop_aclcheck_args* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vop_aclcheck_args*, %struct.vop_aclcheck_args** %2, align 8
  %38 = getelementptr inbounds %struct.vop_aclcheck_args, %struct.vop_aclcheck_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vop_aclcheck_args*, %struct.vop_aclcheck_args** %2, align 8
  %41 = getelementptr inbounds %struct.vop_aclcheck_args, %struct.vop_aclcheck_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @VOP_ACLCHECK(%struct.vnode* %30, i32 %33, i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @VOP_ACLCHECK(%struct.vnode*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
