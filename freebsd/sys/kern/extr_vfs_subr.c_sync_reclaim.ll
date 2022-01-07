; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sync_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sync_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { %struct.TYPE_2__*, %struct.bufobj }
%struct.TYPE_2__ = type { %struct.vnode* }
%struct.bufobj = type { i32 }

@sync_mtx = common dso_local global i32 0, align 4
@BO_ONWORKLST = common dso_local global i32 0, align 4
@bo_synclist = common dso_local global i32 0, align 4
@syncer_worklist_len = common dso_local global i32 0, align 4
@sync_vnode_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_reclaim_args*)* @sync_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_reclaim(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.bufobj*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %5 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 1
  store %struct.bufobj* %9, %struct.bufobj** %4, align 8
  %10 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %11 = call i32 @BO_LOCK(%struct.bufobj* %10)
  %12 = call i32 @mtx_lock(i32* @sync_mtx)
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = icmp eq %struct.vnode* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.vnode* null, %struct.vnode** %24, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %27 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BO_ONWORKLST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %34 = load i32, i32* @bo_synclist, align 4
  %35 = call i32 @LIST_REMOVE(%struct.bufobj* %33, i32 %34)
  %36 = load i32, i32* @syncer_worklist_len, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @syncer_worklist_len, align 4
  %38 = load i32, i32* @sync_vnode_count, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @sync_vnode_count, align 4
  %40 = load i32, i32* @BO_ONWORKLST, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %43 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %32, %25
  %47 = call i32 @mtx_unlock(i32* @sync_mtx)
  %48 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %49 = call i32 @BO_UNLOCK(%struct.bufobj* %48)
  ret i32 0
}

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bufobj*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
