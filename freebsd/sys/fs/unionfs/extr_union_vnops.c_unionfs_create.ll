; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.vop_create_args = type { %struct.vnode**, %struct.TYPE_4__*, i32, %struct.componentname* }
%struct.TYPE_4__ = type { i32 }
%struct.componentname = type { i32 }
%struct.unionfs_node = type { %struct.vnode* }

@.str = private unnamed_addr constant [23 x i8] c"unionfs_create: enter\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@VSOCK = common dso_local global i64 0, align 8
@LK_RELEASE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unionfs_create: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_create_args*)* @unionfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_create(%struct.vop_create_args* %0) #0 {
  %2 = alloca %struct.vop_create_args*, align 8
  %3 = alloca %struct.unionfs_node*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_create_args* %0, %struct.vop_create_args** %2, align 8
  %8 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_4__* %11)
  %13 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_4__* %15)
  store %struct.unionfs_node* %16, %struct.unionfs_node** %3, align 8
  %17 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %18 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %17, i32 0, i32 3
  %19 = load %struct.componentname*, %struct.componentname** %18, align 8
  store %struct.componentname* %19, %struct.componentname** %4, align 8
  %20 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %21 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %20, i32 0, i32 0
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %5, align 8
  %23 = load i32, i32* @EROFS, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.vnode*, %struct.vnode** %5, align 8
  %25 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %26 = icmp ne %struct.vnode* %24, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %1
  %28 = load %struct.vnode*, %struct.vnode** %5, align 8
  %29 = load %struct.componentname*, %struct.componentname** %4, align 8
  %30 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %31 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @VOP_CREATE(%struct.vnode* %28, %struct.vnode** %6, %struct.componentname* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %72

37:                                               ; preds = %27
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VSOCK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8
  %45 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %46 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %45, i32 0, i32 0
  %47 = load %struct.vnode**, %struct.vnode*** %46, align 8
  store %struct.vnode* %44, %struct.vnode** %47, align 8
  br label %70

48:                                               ; preds = %37
  %49 = load %struct.vnode*, %struct.vnode** %6, align 8
  %50 = load i32, i32* @LK_RELEASE, align 4
  %51 = call i32 @VOP_UNLOCK(%struct.vnode* %49, i32 %50)
  %52 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %53 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vnode*, %struct.vnode** %6, align 8
  %58 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %59 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %60 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.vop_create_args*, %struct.vop_create_args** %2, align 8
  %63 = getelementptr inbounds %struct.vop_create_args, %struct.vop_create_args* %62, i32 0, i32 0
  %64 = load %struct.vnode**, %struct.vnode*** %63, align 8
  %65 = load %struct.componentname*, %struct.componentname** %4, align 8
  %66 = load i32, i32* @curthread, align 4
  %67 = call i32 @unionfs_nodeget(i32 %56, %struct.vnode* %57, %struct.vnode* %58, %struct.TYPE_4__* %61, %struct.vnode** %64, %struct.componentname* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.vnode*, %struct.vnode** %6, align 8
  %69 = call i32 @vrele(%struct.vnode* %68)
  br label %70

70:                                               ; preds = %48, %43
  br label %71

71:                                               ; preds = %70, %1
  br label %72

72:                                               ; preds = %71, %36
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_4__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_4__*) #1

declare dso_local i32 @VOP_CREATE(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @unionfs_nodeget(i32, %struct.vnode*, %struct.vnode*, %struct.TYPE_4__*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
