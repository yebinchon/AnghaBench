; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sync_fsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sync_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_fsync_args = type { i64, %struct.vnode* }
%struct.vnode = type { %struct.bufobj, %struct.mount* }
%struct.bufobj = type { i32 }
%struct.mount = type { i32 }

@MNT_LAZY = common dso_local global i64 0, align 8
@syncdelay = common dso_local global i32 0, align 4
@MBF_NOWAIT = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@TDP_SYNCIO = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_fsync_args*)* @sync_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_fsync(%struct.vop_fsync_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_fsync_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufobj*, align 8
  store %struct.vop_fsync_args* %0, %struct.vop_fsync_args** %3, align 8
  %9 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %9, i32 0, i32 1
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 1
  %14 = load %struct.mount*, %struct.mount** %13, align 8
  store %struct.mount* %14, %struct.mount** %5, align 8
  %15 = load %struct.vop_fsync_args*, %struct.vop_fsync_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_fsync_args, %struct.vop_fsync_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MNT_LAZY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  store %struct.bufobj* %23, %struct.bufobj** %8, align 8
  %24 = load %struct.bufobj*, %struct.bufobj** %8, align 8
  %25 = call i32 @BO_LOCK(%struct.bufobj* %24)
  %26 = load %struct.bufobj*, %struct.bufobj** %8, align 8
  %27 = load i32, i32* @syncdelay, align 4
  %28 = call i32 @vn_syncer_add_to_worklist(%struct.bufobj* %26, i32 %27)
  %29 = load %struct.bufobj*, %struct.bufobj** %8, align 8
  %30 = call i32 @BO_UNLOCK(%struct.bufobj* %29)
  %31 = load %struct.mount*, %struct.mount** %5, align 8
  %32 = load i32, i32* @MBF_NOWAIT, align 4
  %33 = call i64 @vfs_busy(%struct.mount* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %61

36:                                               ; preds = %21
  %37 = load i32, i32* @V_NOWAIT, align 4
  %38 = call i64 @vn_start_write(i32* null, %struct.mount** %5, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.mount*, %struct.mount** %5, align 8
  %42 = call i32 @vfs_unbusy(%struct.mount* %41)
  store i32 0, i32* %2, align 4
  br label %61

43:                                               ; preds = %36
  %44 = load i32, i32* @TDP_SYNCIO, align 4
  %45 = call i32 @curthread_pflags_set(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mount*, %struct.mount** %5, align 8
  %47 = call i32 @vnlru_return_batch(%struct.mount* %46)
  %48 = load %struct.mount*, %struct.mount** %5, align 8
  %49 = load i32, i32* @MNT_NOWAIT, align 4
  %50 = call i32 @vfs_msync(%struct.mount* %48, i32 %49)
  %51 = load %struct.mount*, %struct.mount** %5, align 8
  %52 = load i64, i64* @MNT_LAZY, align 8
  %53 = call i32 @VFS_SYNC(%struct.mount* %51, i64 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @curthread_pflags_restore(i32 %54)
  %56 = load %struct.mount*, %struct.mount** %5, align 8
  %57 = call i32 @vn_finished_write(%struct.mount* %56)
  %58 = load %struct.mount*, %struct.mount** %5, align 8
  %59 = call i32 @vfs_unbusy(%struct.mount* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %43, %40, %35, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @vn_syncer_add_to_worklist(%struct.bufobj*, i32) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i64 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i64 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @curthread_pflags_set(i32) #1

declare dso_local i32 @vnlru_return_batch(%struct.mount*) #1

declare dso_local i32 @vfs_msync(%struct.mount*, i32) #1

declare dso_local i32 @VFS_SYNC(%struct.mount*, i64) #1

declare dso_local i32 @curthread_pflags_restore(i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
