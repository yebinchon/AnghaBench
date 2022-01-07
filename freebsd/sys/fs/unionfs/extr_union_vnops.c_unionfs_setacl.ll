; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_setacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.vop_setacl_args = type { i32, i32, i32, %struct.TYPE_5__*, %struct.thread* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@.str = private unnamed_addr constant [23 x i8] c"unionfs_setacl: enter\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@VREG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unionfs_setacl: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setacl_args*)* @unionfs_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_setacl(%struct.vop_setacl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setacl_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.thread*, align 8
  store %struct.vop_setacl_args* %0, %struct.vop_setacl_args** %3, align 8
  %9 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_5__* %12)
  %14 = load i32, i32* @EROFS, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_5__* %17)
  store %struct.unionfs_node* %18, %struct.unionfs_node** %5, align 8
  %19 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %20 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %19, i32 0, i32 0
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %6, align 8
  %22 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %23 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %22, i32 0, i32 1
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8
  store %struct.vnode* %24, %struct.vnode** %7, align 8
  %25 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %25, i32 0, i32 4
  %27 = load %struct.thread*, %struct.thread** %26, align 8
  store %struct.thread* %27, %struct.thread** %8, align 8
  %28 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MNT_RDONLY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @EROFS, align 4
  store i32 %39, i32* %2, align 4
  br label %85

40:                                               ; preds = %1
  %41 = load %struct.vnode*, %struct.vnode** %6, align 8
  %42 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %43 = icmp eq %struct.vnode* %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VREG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %52 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %53 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.thread*, %struct.thread** %8, align 8
  %56 = call i32 @unionfs_copyfile(%struct.unionfs_node* %51, i32 1, i32 %54, %struct.thread* %55)
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %85

60:                                               ; preds = %50
  %61 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %62 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %61, i32 0, i32 0
  %63 = load %struct.vnode*, %struct.vnode** %62, align 8
  store %struct.vnode* %63, %struct.vnode** %6, align 8
  br label %64

64:                                               ; preds = %60, %44, %40
  %65 = load %struct.vnode*, %struct.vnode** %6, align 8
  %66 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %67 = icmp ne %struct.vnode* %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.vnode*, %struct.vnode** %6, align 8
  %70 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %71 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %74 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vop_setacl_args*, %struct.vop_setacl_args** %3, align 8
  %77 = getelementptr inbounds %struct.vop_setacl_args, %struct.vop_setacl_args* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.thread*, %struct.thread** %8, align 8
  %80 = call i32 @VOP_SETACL(%struct.vnode* %69, i32 %72, i32 %75, i32 %78, %struct.thread* %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %68, %64
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %58, %38
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_5__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_5__*) #1

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, i32, %struct.thread*) #1

declare dso_local i32 @VOP_SETACL(%struct.vnode*, i32, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
