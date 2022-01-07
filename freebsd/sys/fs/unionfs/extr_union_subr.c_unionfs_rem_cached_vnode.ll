; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_rem_cached_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_rem_cached_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.unionfs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"unionfs_rem_cached_vnode: null node\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"unionfs_rem_cached_vnode: null parent vnode\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unionfs_rem_cached_vnode: null hash\00", align 1
@un_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unionfs_node*, %struct.vnode*)* @unionfs_rem_cached_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unionfs_rem_cached_vnode(%struct.unionfs_node* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.unionfs_node*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.unionfs_node* %0, %struct.unionfs_node** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %5 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %6 = icmp ne %struct.unionfs_node* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %11 = icmp ne %struct.vnode* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %15 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i32 @VI_LOCK(%struct.vnode* %21)
  %23 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %24 = load i32, i32* @un_hash, align 4
  %25 = call i32 @LIST_REMOVE(%struct.unionfs_node* %23, i32 %24)
  %26 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %27 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.unionfs_node*, %struct.unionfs_node** %3, align 8
  %30 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = call i32 @VI_UNLOCK(%struct.vnode* %32)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @LIST_REMOVE(%struct.unionfs_node*, i32) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
