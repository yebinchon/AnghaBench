; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kern_reroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_kern_reroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.vnode* }
%struct.vnode = type { i32, %struct.mount* }
%struct.mount = type { i32 }

@curproc = common dso_local global %struct.TYPE_3__* null, align 8
@initproc = common dso_local global %struct.TYPE_3__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@MBF_NOWAIT = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@rootdevmp = common dso_local global %struct.mount* null, align 8
@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@rootvnode = common dso_local global %struct.vnode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kern_reroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_reroot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @initproc, align 8
  %9 = icmp ne %struct.TYPE_3__* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @EPERM, align 4
  store i32 %11, i32* %1, align 4
  br label %101

12:                                               ; preds = %0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %3, align 8
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = load i32, i32* @LK_SHARED, align 4
  %18 = call i32 @vn_lock(%struct.vnode* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %1, align 4
  br label %101

23:                                               ; preds = %12
  %24 = load %struct.vnode*, %struct.vnode** %3, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 1
  %26 = load %struct.mount*, %struct.mount** %25, align 8
  store %struct.mount* %26, %struct.mount** %4, align 8
  %27 = load %struct.mount*, %struct.mount** %4, align 8
  %28 = load i32, i32* @MBF_NOWAIT, align 4
  %29 = call i32 @vfs_busy(%struct.mount* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %23
  %33 = load %struct.mount*, %struct.mount** %4, align 8
  %34 = call i32 @vfs_ref(%struct.mount* %33)
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = call i32 @VOP_UNLOCK(%struct.vnode* %35, i32 0)
  %37 = load %struct.mount*, %struct.mount** %4, align 8
  %38 = call i32 @vfs_busy(%struct.mount* %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = load i32, i32* @LK_SHARED, align 4
  %41 = load i32, i32* @LK_RETRY, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @vn_lock(%struct.vnode* %39, i32 %42)
  %44 = load %struct.mount*, %struct.mount** %4, align 8
  %45 = call i32 @vfs_rel(%struct.mount* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.vnode*, %struct.vnode** %3, align 8
  %50 = call i32 @VOP_UNLOCK(%struct.vnode* %49, i32 0)
  %51 = load i32, i32* @ENOENT, align 4
  store i32 %51, i32* %1, align 4
  br label %101

52:                                               ; preds = %32
  %53 = load %struct.vnode*, %struct.vnode** %3, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @VI_DOOMED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.vnode*, %struct.vnode** %3, align 8
  %61 = call i32 @VOP_UNLOCK(%struct.vnode* %60, i32 0)
  %62 = load %struct.mount*, %struct.mount** %4, align 8
  %63 = call i32 @vfs_unbusy(%struct.mount* %62)
  %64 = load i32, i32* @ENOENT, align 4
  store i32 %64, i32* %1, align 4
  br label %101

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %23
  %67 = load %struct.vnode*, %struct.vnode** %3, align 8
  %68 = call i32 @VOP_UNLOCK(%struct.vnode* %67, i32 0)
  %69 = load %struct.mount*, %struct.mount** @rootdevmp, align 8
  %70 = call i32 @vfs_ref(%struct.mount* %69)
  %71 = load %struct.mount*, %struct.mount** @rootdevmp, align 8
  store %struct.mount* %71, %struct.mount** %5, align 8
  store %struct.mount* null, %struct.mount** @rootdevmp, align 8
  %72 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %73 = load %struct.mount*, %struct.mount** %4, align 8
  %74 = load i32, i32* @mnt_list, align 4
  %75 = call i32 @TAILQ_REMOVE(i32* @mountlist, %struct.mount* %73, i32 %74)
  %76 = load %struct.mount*, %struct.mount** %5, align 8
  %77 = load i32, i32* @mnt_list, align 4
  %78 = call i32 @TAILQ_REMOVE(i32* @mountlist, %struct.mount* %76, i32 %77)
  %79 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %80 = load %struct.vnode*, %struct.vnode** @rootvnode, align 8
  store %struct.vnode* %80, %struct.vnode** %2, align 8
  %81 = call i32 (...) @vfs_unmountall()
  %82 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %83 = load %struct.mount*, %struct.mount** %5, align 8
  %84 = load i32, i32* @mnt_list, align 4
  %85 = call i32 @TAILQ_INSERT_HEAD(i32* @mountlist, %struct.mount* %83, i32 %84)
  %86 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %87 = load %struct.mount*, %struct.mount** %5, align 8
  store %struct.mount* %87, %struct.mount** @rootdevmp, align 8
  %88 = load %struct.mount*, %struct.mount** @rootdevmp, align 8
  %89 = call i32 @vfs_rel(%struct.mount* %88)
  %90 = call i32 (...) @vfs_mountroot()
  %91 = load %struct.vnode*, %struct.vnode** %2, align 8
  %92 = load %struct.vnode*, %struct.vnode** @rootvnode, align 8
  %93 = call i32 @mountcheckdirs(%struct.vnode* %91, %struct.vnode* %92)
  %94 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %95 = load %struct.mount*, %struct.mount** %4, align 8
  %96 = load i32, i32* @mnt_list, align 4
  %97 = call i32 @TAILQ_INSERT_TAIL(i32* @mountlist, %struct.mount* %95, i32 %96)
  %98 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %99 = load %struct.mount*, %struct.mount** %4, align 8
  %100 = call i32 @vfs_unbusy(%struct.mount* %99)
  store i32 0, i32* %1, align 4
  br label %101

101:                                              ; preds = %66, %59, %48, %21, %10
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @vfs_ref(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_rel(%struct.mount*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mount*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vfs_unmountall(...) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.mount*, i32) #1

declare dso_local i32 @vfs_mountroot(...) #1

declare dso_local i32 @mountcheckdirs(%struct.vnode*, %struct.vnode*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
