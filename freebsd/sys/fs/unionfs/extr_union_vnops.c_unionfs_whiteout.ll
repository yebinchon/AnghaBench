; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_whiteout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_whiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_whiteout_args = type { i32, %struct.componentname*, i32 }
%struct.componentname = type { i32 }
%struct.unionfs_node = type { %struct.vnode* }

@.str = private unnamed_addr constant [25 x i8] c"unionfs_whiteout: enter\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unionfs_whiteout: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_whiteout_args*)* @unionfs_whiteout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_whiteout(%struct.vop_whiteout_args* %0) #0 {
  %2 = alloca %struct.vop_whiteout_args*, align 8
  %3 = alloca %struct.unionfs_node*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_whiteout_args* %0, %struct.vop_whiteout_args** %2, align 8
  %7 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @KASSERT_UNIONFS_VNODE(i32 %10)
  %12 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.unionfs_node* @VTOUNIONFS(i32 %14)
  store %struct.unionfs_node* %15, %struct.unionfs_node** %3, align 8
  %16 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %16, i32 0, i32 1
  %18 = load %struct.componentname*, %struct.componentname** %17, align 8
  store %struct.componentname* %18, %struct.componentname** %4, align 8
  %19 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %20 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %19, i32 0, i32 0
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %5, align 8
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %25 = icmp ne %struct.vnode* %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %2, align 8
  %28 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %37 [
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
  ]

30:                                               ; preds = %26, %26, %26
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = load %struct.componentname*, %struct.componentname** %4, align 8
  %33 = load %struct.vop_whiteout_args*, %struct.vop_whiteout_args** %2, align 8
  %34 = getelementptr inbounds %struct.vop_whiteout_args, %struct.vop_whiteout_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @VOP_WHITEOUT(%struct.vnode* %31, %struct.componentname* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %30
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(i32) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(i32) #1

declare dso_local i32 @VOP_WHITEOUT(%struct.vnode*, %struct.componentname*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
