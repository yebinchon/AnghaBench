; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sync_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sync_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synclist = type { i32 }
%struct.bufobj = type { i32 }
%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }

@sync_mtx = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@MNT_LAZY = common dso_local global i32 0, align 4
@BO_ONWORKLST = common dso_local global i32 0, align 4
@syncdelay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synclist*, %struct.bufobj**, %struct.thread*)* @sync_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_vnode(%struct.synclist* %0, %struct.bufobj** %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.synclist*, align 8
  %6 = alloca %struct.bufobj**, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.mount*, align 8
  store %struct.synclist* %0, %struct.synclist** %5, align 8
  store %struct.bufobj** %1, %struct.bufobj*** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.synclist*, %struct.synclist** %5, align 8
  %11 = call %struct.bufobj* @LIST_FIRST(%struct.synclist* %10)
  %12 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  store %struct.bufobj* %11, %struct.bufobj** %12, align 8
  %13 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  %14 = load %struct.bufobj*, %struct.bufobj** %13, align 8
  %15 = icmp eq %struct.bufobj* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

17:                                               ; preds = %3
  %18 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  %19 = load %struct.bufobj*, %struct.bufobj** %18, align 8
  %20 = call %struct.vnode* @bo2vnode(%struct.bufobj* %19)
  store %struct.vnode* %20, %struct.vnode** %8, align 8
  %21 = load %struct.vnode*, %struct.vnode** %8, align 8
  %22 = call i64 @VOP_ISLOCKED(%struct.vnode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.vnode*, %struct.vnode** %8, align 8
  %26 = call i64 @VI_TRYLOCK(%struct.vnode* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %17
  store i32 1, i32* %4, align 4
  br label %85

29:                                               ; preds = %24
  %30 = load %struct.vnode*, %struct.vnode** %8, align 8
  %31 = call i32 @vholdl(%struct.vnode* %30)
  %32 = call i32 @mtx_unlock(i32* @sync_mtx)
  %33 = load %struct.vnode*, %struct.vnode** %8, align 8
  %34 = call i32 @VI_UNLOCK(%struct.vnode* %33)
  %35 = load %struct.vnode*, %struct.vnode** %8, align 8
  %36 = load i32, i32* @V_NOWAIT, align 4
  %37 = call i64 @vn_start_write(%struct.vnode* %35, %struct.mount** %9, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.vnode*, %struct.vnode** %8, align 8
  %41 = call i32 @vdrop(%struct.vnode* %40)
  %42 = call i32 @mtx_lock(i32* @sync_mtx)
  %43 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  %44 = load %struct.bufobj*, %struct.bufobj** %43, align 8
  %45 = load %struct.synclist*, %struct.synclist** %5, align 8
  %46 = call %struct.bufobj* @LIST_FIRST(%struct.synclist* %45)
  %47 = icmp eq %struct.bufobj* %44, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %85

49:                                               ; preds = %29
  %50 = load %struct.vnode*, %struct.vnode** %8, align 8
  %51 = load i32, i32* @LK_EXCLUSIVE, align 4
  %52 = load i32, i32* @LK_RETRY, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @vn_lock(%struct.vnode* %50, i32 %53)
  %55 = load %struct.vnode*, %struct.vnode** %8, align 8
  %56 = load i32, i32* @MNT_LAZY, align 4
  %57 = load %struct.thread*, %struct.thread** %7, align 8
  %58 = call i32 @VOP_FSYNC(%struct.vnode* %55, i32 %56, %struct.thread* %57)
  %59 = load %struct.vnode*, %struct.vnode** %8, align 8
  %60 = call i32 @VOP_UNLOCK(%struct.vnode* %59, i32 0)
  %61 = load %struct.mount*, %struct.mount** %9, align 8
  %62 = call i32 @vn_finished_write(%struct.mount* %61)
  %63 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  %64 = load %struct.bufobj*, %struct.bufobj** %63, align 8
  %65 = call i32 @BO_LOCK(%struct.bufobj* %64)
  %66 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  %67 = load %struct.bufobj*, %struct.bufobj** %66, align 8
  %68 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BO_ONWORKLST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %49
  %74 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  %75 = load %struct.bufobj*, %struct.bufobj** %74, align 8
  %76 = load i32, i32* @syncdelay, align 4
  %77 = call i32 @vn_syncer_add_to_worklist(%struct.bufobj* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %49
  %79 = load %struct.bufobj**, %struct.bufobj*** %6, align 8
  %80 = load %struct.bufobj*, %struct.bufobj** %79, align 8
  %81 = call i32 @BO_UNLOCK(%struct.bufobj* %80)
  %82 = load %struct.vnode*, %struct.vnode** %8, align 8
  %83 = call i32 @vdrop(%struct.vnode* %82)
  %84 = call i32 @mtx_lock(i32* @sync_mtx)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %39, %28, %16
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.bufobj* @LIST_FIRST(%struct.synclist*) #1

declare dso_local %struct.vnode* @bo2vnode(%struct.bufobj*) #1

declare dso_local i64 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i64 @VI_TRYLOCK(%struct.vnode*) #1

declare dso_local i32 @vholdl(%struct.vnode*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i64 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_FSYNC(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @vn_syncer_add_to_worklist(%struct.bufobj*, i32) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
