; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.vop_symlink_args = type { i32, %struct.TYPE_4__*, i32, i32, %struct.componentname* }
%struct.TYPE_4__ = type { i32 }
%struct.componentname = type { i32 }
%struct.unionfs_node = type { %struct.vnode* }

@.str = private unnamed_addr constant [24 x i8] c"unionfs_symlink: enter\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@NULLVP = common dso_local global %struct.vnode* null, align 8
@LK_RELEASE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unionfs_symlink: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_symlink_args*)* @unionfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_symlink(%struct.vop_symlink_args* %0) #0 {
  %2 = alloca %struct.vop_symlink_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  store %struct.vop_symlink_args* %0, %struct.vop_symlink_args** %2, align 8
  %10 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %12 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_4__* %13)
  %15 = load i32, i32* @EROFS, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_4__* %18)
  store %struct.unionfs_node* %19, %struct.unionfs_node** %5, align 8
  %20 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %21 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %20, i32 0, i32 4
  %22 = load %struct.componentname*, %struct.componentname** %21, align 8
  store %struct.componentname* %22, %struct.componentname** %6, align 8
  %23 = load %struct.componentname*, %struct.componentname** %6, align 8
  %24 = getelementptr inbounds %struct.componentname, %struct.componentname* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %26, %struct.thread** %7, align 8
  %27 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %28 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %27, i32 0, i32 0
  %29 = load %struct.vnode*, %struct.vnode** %28, align 8
  store %struct.vnode* %29, %struct.vnode** %8, align 8
  %30 = load %struct.vnode*, %struct.vnode** %8, align 8
  %31 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %32 = icmp ne %struct.vnode* %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %1
  %34 = load %struct.vnode*, %struct.vnode** %8, align 8
  %35 = load %struct.componentname*, %struct.componentname** %6, align 8
  %36 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %37 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %40 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @VOP_SYMLINK(%struct.vnode* %34, %struct.vnode** %9, %struct.componentname* %35, i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %33
  %46 = load %struct.vnode*, %struct.vnode** %9, align 8
  %47 = load i32, i32* @LK_RELEASE, align 4
  %48 = call i32 @VOP_UNLOCK(%struct.vnode* %46, i32 %47)
  %49 = load i32, i32* @LK_EXCLUSIVE, align 4
  %50 = load %struct.componentname*, %struct.componentname** %6, align 8
  %51 = getelementptr inbounds %struct.componentname, %struct.componentname* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %53 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vnode*, %struct.vnode** %9, align 8
  %58 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %59 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %60 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.vop_symlink_args*, %struct.vop_symlink_args** %2, align 8
  %63 = getelementptr inbounds %struct.vop_symlink_args, %struct.vop_symlink_args* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.componentname*, %struct.componentname** %6, align 8
  %66 = load %struct.thread*, %struct.thread** %7, align 8
  %67 = call i32 @unionfs_nodeget(i32 %56, %struct.vnode* %57, %struct.vnode* %58, %struct.TYPE_4__* %61, i32 %64, %struct.componentname* %65, %struct.thread* %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.componentname*, %struct.componentname** %6, align 8
  %70 = getelementptr inbounds %struct.componentname, %struct.componentname* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vnode*, %struct.vnode** %9, align 8
  %72 = call i32 @vrele(%struct.vnode* %71)
  br label %73

73:                                               ; preds = %45, %33
  br label %74

74:                                               ; preds = %73, %1
  %75 = load i32, i32* %3, align 4
  %76 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_4__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_4__*) #1

declare dso_local i32 @VOP_SYMLINK(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @unionfs_nodeget(i32, %struct.vnode*, %struct.vnode*, %struct.TYPE_4__*, i32, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
