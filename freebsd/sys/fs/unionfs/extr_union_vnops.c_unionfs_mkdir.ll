; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.vop_mkdir_args = type { i32, %struct.TYPE_4__*, i32, %struct.componentname* }
%struct.TYPE_4__ = type { i32 }
%struct.componentname = type { i32, i32, i32 }
%struct.unionfs_node = type { %struct.vnode* }
%struct.vattr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"unionfs_mkdir: enter\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@NULLVP = common dso_local global %struct.vnode* null, align 8
@ISWHITEOUT = common dso_local global i32 0, align 4
@OPAQUE = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unionfs_mkdir: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mkdir_args*)* @unionfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_mkdir(%struct.vop_mkdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_mkdir_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.unionfs_node*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vattr, align 4
  store %struct.vop_mkdir_args* %0, %struct.vop_mkdir_args** %3, align 8
  %12 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_4__* %15)
  %17 = load i32, i32* @EROFS, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_4__* %20)
  store %struct.unionfs_node* %21, %struct.unionfs_node** %6, align 8
  %22 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %22, i32 0, i32 3
  %24 = load %struct.componentname*, %struct.componentname** %23, align 8
  store %struct.componentname* %24, %struct.componentname** %7, align 8
  %25 = load %struct.componentname*, %struct.componentname** %7, align 8
  %26 = getelementptr inbounds %struct.componentname, %struct.componentname* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %28, %struct.thread** %8, align 8
  %29 = load %struct.unionfs_node*, %struct.unionfs_node** %6, align 8
  %30 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %29, i32 0, i32 0
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %9, align 8
  %32 = load %struct.vnode*, %struct.vnode** %9, align 8
  %33 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %34 = icmp ne %struct.vnode* %32, %33
  br i1 %34, label %35, label %102

35:                                               ; preds = %1
  %36 = load %struct.componentname*, %struct.componentname** %7, align 8
  %37 = getelementptr inbounds %struct.componentname, %struct.componentname* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ISWHITEOUT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %35
  %43 = load %struct.vnode*, %struct.vnode** %9, align 8
  %44 = load %struct.componentname*, %struct.componentname** %7, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VOP_GETATTR(%struct.vnode* %43, %struct.vattr* %11, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OPAQUE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @ISWHITEOUT, align 4
  %60 = load %struct.componentname*, %struct.componentname** %7, align 8
  %61 = getelementptr inbounds %struct.componentname, %struct.componentname* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.vnode*, %struct.vnode** %9, align 8
  %67 = load %struct.componentname*, %struct.componentname** %7, align 8
  %68 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %69 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @VOP_MKDIR(%struct.vnode* %66, %struct.vnode** %10, %struct.componentname* %67, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %65
  %74 = load %struct.vnode*, %struct.vnode** %10, align 8
  %75 = load i32, i32* @LK_RELEASE, align 4
  %76 = call i32 @VOP_UNLOCK(%struct.vnode* %74, i32 %75)
  %77 = load i32, i32* @LK_EXCLUSIVE, align 4
  %78 = load %struct.componentname*, %struct.componentname** %7, align 8
  %79 = getelementptr inbounds %struct.componentname, %struct.componentname* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %81 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vnode*, %struct.vnode** %10, align 8
  %86 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %87 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %88 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %91 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.componentname*, %struct.componentname** %7, align 8
  %94 = load %struct.thread*, %struct.thread** %8, align 8
  %95 = call i32 @unionfs_nodeget(i32 %84, %struct.vnode* %85, %struct.vnode* %86, %struct.TYPE_4__* %89, i32 %92, %struct.componentname* %93, %struct.thread* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.componentname*, %struct.componentname** %7, align 8
  %98 = getelementptr inbounds %struct.componentname, %struct.componentname* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.vnode*, %struct.vnode** %10, align 8
  %100 = call i32 @vrele(%struct.vnode* %99)
  br label %101

101:                                              ; preds = %73, %65
  br label %102

102:                                              ; preds = %101, %1
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %50
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_4__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_4__*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_MKDIR(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @unionfs_nodeget(i32, %struct.vnode*, %struct.vnode*, %struct.TYPE_4__*, i32, %struct.componentname*, %struct.thread*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
