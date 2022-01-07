; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mount = type { i64 }
%struct.sbuf = type { i32 }

@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@prison0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@rootvnode = common dso_local global i32 0, align 4
@root_holds_mtx = common dso_local global i32 0, align 4
@root_mount_complete = common dso_local global i32 0, align 4
@mountroot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_mountroot() #0 {
  %1 = alloca %struct.mount*, align 8
  %2 = alloca %struct.sbuf*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MA_NOTOWNED, align 4
  %7 = call i32 @mtx_assert(i32* @Giant, i32 %6)
  %8 = call i32 (...) @TSENTER()
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %3, align 8
  %10 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %10, %struct.sbuf** %2, align 8
  %11 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %12 = call i32 @vfs_mountroot_conf0(%struct.sbuf* %11)
  %13 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %14 = call i32 @sbuf_finish(%struct.sbuf* %13)
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = call i32 @vfs_mountroot_devfs(%struct.thread* %15, %struct.mount** %1)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %38, %0
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %23 = load %struct.mount*, %struct.mount** %1, align 8
  %24 = call i32 @vfs_mountroot_parse(%struct.sbuf* %22, %struct.mount* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = load %struct.mount*, %struct.mount** %1, align 8
  %30 = call i32 @vfs_mountroot_shuffle(%struct.thread* %28, %struct.mount* %29)
  %31 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %32 = call i32 @sbuf_clear(%struct.sbuf* %31)
  %33 = load %struct.thread*, %struct.thread** %3, align 8
  %34 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %35 = call i32 @vfs_mountroot_readconf(%struct.thread* %33, %struct.sbuf* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %37 = call i32 @sbuf_finish(%struct.sbuf* %36)
  br label %38

38:                                               ; preds = %27, %21
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %41 = call i32 @sbuf_delete(%struct.sbuf* %40)
  store i64 0, i64* %4, align 8
  %42 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %43 = call %struct.mount* @TAILQ_FIRST(i32* @mountlist)
  store %struct.mount* %43, %struct.mount** %1, align 8
  br label %44

44:                                               ; preds = %57, %39
  %45 = load %struct.mount*, %struct.mount** %1, align 8
  %46 = icmp ne %struct.mount* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.mount*, %struct.mount** %1, align 8
  %49 = getelementptr inbounds %struct.mount, %struct.mount* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.mount*, %struct.mount** %1, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.mount*, %struct.mount** %1, align 8
  %59 = load i32, i32* @mnt_list, align 4
  %60 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %58, i32 %59)
  store %struct.mount* %60, %struct.mount** %1, align 8
  br label %44

61:                                               ; preds = %44
  %62 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @inittodr(i64 %63)
  %65 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0))
  %66 = load i32, i32* @rootvnode, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1), align 4
  %68 = call i32 @vref(i32 %67)
  %69 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0))
  %70 = call i32 @mtx_lock(i32* @root_holds_mtx)
  %71 = call i32 @atomic_store_rel_int(i32* @root_mount_complete, i32 1)
  %72 = call i32 @wakeup(i32* @root_mount_complete)
  %73 = call i32 @mtx_unlock(i32* @root_holds_mtx)
  %74 = load i32, i32* @mountroot, align 4
  %75 = call i32 @EVENTHANDLER_INVOKE(i32 %74)
  %76 = call i32 (...) @TSEXIT()
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TSENTER(...) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @vfs_mountroot_conf0(%struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @vfs_mountroot_devfs(%struct.thread*, %struct.mount**) #1

declare dso_local i32 @vfs_mountroot_parse(%struct.sbuf*, %struct.mount*) #1

declare dso_local i32 @vfs_mountroot_shuffle(%struct.thread*, %struct.mount*) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i32 @vfs_mountroot_readconf(%struct.thread*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mount* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.mount* @TAILQ_NEXT(%struct.mount*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @inittodr(i64) #1

declare dso_local i32 @vref(i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32) #1

declare dso_local i32 @TSEXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
