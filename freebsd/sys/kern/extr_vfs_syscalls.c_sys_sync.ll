; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_sys_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sync_args = type { i32 }
%struct.mount = type { i32 }

@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@MBF_NOWAIT = common dso_local global i32 0, align 4
@MBF_MNTLSTLOCK = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@TDP_SYNCIO = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sync(%struct.thread* %0, %struct.sync_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.sync_args*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.sync_args* %1, %struct.sync_args** %4, align 8
  %8 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %9 = call %struct.mount* @TAILQ_FIRST(i32* @mountlist)
  store %struct.mount* %9, %struct.mount** %5, align 8
  br label %10

10:                                               ; preds = %55, %2
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = icmp ne %struct.mount* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load %struct.mount*, %struct.mount** %5, align 8
  %15 = load i32, i32* @MBF_NOWAIT, align 4
  %16 = load i32, i32* @MBF_MNTLSTLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @vfs_busy(%struct.mount* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.mount*, %struct.mount** %5, align 8
  %22 = load i32, i32* @mnt_list, align 4
  %23 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %21, i32 %22)
  store %struct.mount* %23, %struct.mount** %6, align 8
  br label %55

24:                                               ; preds = %13
  %25 = load %struct.mount*, %struct.mount** %5, align 8
  %26 = getelementptr inbounds %struct.mount, %struct.mount* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MNT_RDONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load i32, i32* @V_NOWAIT, align 4
  %33 = call i64 @vn_start_write(i32* null, %struct.mount** %5, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* @TDP_SYNCIO, align 4
  %37 = call i32 @curthread_pflags_set(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.mount*, %struct.mount** %5, align 8
  %39 = load i32, i32* @MNT_NOWAIT, align 4
  %40 = call i32 @vfs_msync(%struct.mount* %38, i32 %39)
  %41 = load %struct.mount*, %struct.mount** %5, align 8
  %42 = load i32, i32* @MNT_NOWAIT, align 4
  %43 = call i32 @VFS_SYNC(%struct.mount* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @curthread_pflags_restore(i32 %44)
  %46 = load %struct.mount*, %struct.mount** %5, align 8
  %47 = call i32 @vn_finished_write(%struct.mount* %46)
  br label %48

48:                                               ; preds = %35, %31, %24
  %49 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %50 = load %struct.mount*, %struct.mount** %5, align 8
  %51 = load i32, i32* @mnt_list, align 4
  %52 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %50, i32 %51)
  store %struct.mount* %52, %struct.mount** %6, align 8
  %53 = load %struct.mount*, %struct.mount** %5, align 8
  %54 = call i32 @vfs_unbusy(%struct.mount* %53)
  br label %55

55:                                               ; preds = %48, %20
  %56 = load %struct.mount*, %struct.mount** %6, align 8
  store %struct.mount* %56, %struct.mount** %5, align 8
  br label %10

57:                                               ; preds = %10
  %58 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mount* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @vfs_busy(%struct.mount*, i32) #1

declare dso_local %struct.mount* @TAILQ_NEXT(%struct.mount*, i32) #1

declare dso_local i64 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @curthread_pflags_set(i32) #1

declare dso_local i32 @vfs_msync(%struct.mount*, i32) #1

declare dso_local i32 @VFS_SYNC(%struct.mount*, i32) #1

declare dso_local i32 @curthread_pflags_restore(i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
