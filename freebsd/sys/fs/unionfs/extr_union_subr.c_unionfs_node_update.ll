; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_node_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_node_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.unionfs_node_hashhead = type { i32 }
%struct.unionfs_node = type { i32*, %struct.vnode*, %struct.vnode*, %struct.vnode* }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"unionfs_node_update\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_CANRECURSE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@VDIR = common dso_local global i64 0, align 8
@unionfs_node_update.hd = internal global %struct.unionfs_node_hashhead* null, align 8
@un_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unionfs_node*, %struct.vnode*, %struct.thread*)* @unionfs_node_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unionfs_node_update(%struct.unionfs_node* %0, %struct.vnode* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.unionfs_node*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode*, align 8
  store %struct.unionfs_node* %0, %struct.unionfs_node** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %12 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %13 = call %struct.vnode* @UNIONFSTOV(%struct.unionfs_node* %12)
  store %struct.vnode* %13, %struct.vnode** %9, align 8
  %14 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %15 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %14, i32 0, i32 3
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %10, align 8
  %17 = load %struct.vnode*, %struct.vnode** %10, align 8
  %18 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %20 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %19, i32 0, i32 2
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %11, align 8
  %22 = load %struct.vnode*, %struct.vnode** %9, align 8
  %23 = call i32 @VI_LOCK(%struct.vnode* %22)
  %24 = load %struct.vnode*, %struct.vnode** %5, align 8
  %25 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %26 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %25, i32 0, i32 1
  store %struct.vnode* %24, %struct.vnode** %26, align 8
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.vnode*, %struct.vnode** %9, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 1
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.vnode*, %struct.vnode** %9, align 8
  %33 = call i32 @VI_UNLOCK(%struct.vnode* %32)
  %34 = load %struct.vnode*, %struct.vnode** %10, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %51, %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = load i32, i32* @LK_EXCLUSIVE, align 4
  %46 = load i32, i32* @LK_CANRECURSE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @LK_RETRY, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @vn_lock(%struct.vnode* %44, i32 %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %56 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.vnode*, %struct.vnode** %11, align 8
  %61 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %62 = icmp ne %struct.vnode* %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load %struct.vnode*, %struct.vnode** %9, align 8
  %65 = getelementptr inbounds %struct.vnode, %struct.vnode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VDIR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.vnode*, %struct.vnode** %11, align 8
  %71 = call i32 @VI_LOCK(%struct.vnode* %70)
  %72 = load %struct.vnode*, %struct.vnode** %11, align 8
  %73 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %74 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call %struct.unionfs_node_hashhead* @unionfs_get_hashhead(%struct.vnode* %72, i32* %75)
  store %struct.unionfs_node_hashhead* %76, %struct.unionfs_node_hashhead** @unionfs_node_update.hd, align 8
  %77 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %78 = load i32, i32* @un_hash, align 4
  %79 = call i32 @LIST_REMOVE(%struct.unionfs_node* %77, i32 %78)
  %80 = load %struct.unionfs_node_hashhead*, %struct.unionfs_node_hashhead** @unionfs_node_update.hd, align 8
  %81 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %82 = load i32, i32* @un_hash, align 4
  %83 = call i32 @LIST_INSERT_HEAD(%struct.unionfs_node_hashhead* %80, %struct.unionfs_node* %81, i32 %82)
  %84 = load %struct.vnode*, %struct.vnode** %11, align 8
  %85 = call i32 @VI_UNLOCK(%struct.vnode* %84)
  br label %86

86:                                               ; preds = %69, %63, %59, %54
  ret void
}

declare dso_local %struct.vnode* @UNIONFSTOV(%struct.unionfs_node*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local %struct.unionfs_node_hashhead* @unionfs_get_hashhead(%struct.vnode*, i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.unionfs_node*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.unionfs_node_hashhead*, %struct.unionfs_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
