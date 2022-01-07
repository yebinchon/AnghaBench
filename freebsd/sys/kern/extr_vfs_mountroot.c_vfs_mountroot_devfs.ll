; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_devfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_devfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.vfsoptlist*, i32 }
%struct.vfsoptlist = type { i32 }
%struct.thread = type { i32 }
%struct.vfsconf = type { i32 }

@rootdevmp = common dso_local global %struct.mount* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not find devfs by name\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"VFS_MOUNT(devfs) failed %d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"VFS_STATFS(devfs) failed %d\00", align 1
@M_MOUNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"kern_symlink /dev -> / returns %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.mount**)* @vfs_mountroot_devfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_mountroot_devfs(%struct.thread* %0, %struct.mount** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.mount**, align 8
  %6 = alloca %struct.vfsoptlist*, align 8
  %7 = alloca %struct.vfsconf*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.mount** %1, %struct.mount*** %5, align 8
  %10 = load %struct.mount**, %struct.mount*** %5, align 8
  store %struct.mount* null, %struct.mount** %10, align 8
  %11 = load %struct.mount*, %struct.mount** @rootdevmp, align 8
  %12 = icmp ne %struct.mount* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.mount*, %struct.mount** @rootdevmp, align 8
  %15 = call i32 @vfs_busy(%struct.mount* %14, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %101

20:                                               ; preds = %13
  %21 = load %struct.mount*, %struct.mount** @rootdevmp, align 8
  %22 = load %struct.mount**, %struct.mount*** %5, align 8
  store %struct.mount* %21, %struct.mount** %22, align 8
  br label %88

23:                                               ; preds = %2
  %24 = call %struct.vfsconf* @vfs_byname(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.vfsconf* %24, %struct.vfsconf** %7, align 8
  %25 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %26 = icmp ne %struct.vfsconf* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %30 = icmp eq %struct.vfsconf* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %3, align 4
  br label %101

33:                                               ; preds = %23
  %34 = load i32, i32* @NULLVP, align 4
  %35 = load %struct.vfsconf*, %struct.vfsconf** %7, align 8
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.mount* @vfs_mount_alloc(i32 %34, %struct.vfsconf* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store %struct.mount* %39, %struct.mount** %8, align 8
  %40 = load %struct.mount*, %struct.mount** %8, align 8
  %41 = call i32 @VFS_MOUNT(%struct.mount* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %44, i8* %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %101

53:                                               ; preds = %33
  %54 = load %struct.mount*, %struct.mount** %8, align 8
  %55 = load %struct.mount*, %struct.mount** %8, align 8
  %56 = getelementptr inbounds %struct.mount, %struct.mount* %55, i32 0, i32 1
  %57 = call i32 @VFS_STATFS(%struct.mount* %54, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @KASSERT(i32 %60, i8* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %101

69:                                               ; preds = %53
  %70 = load i32, i32* @M_MOUNT, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call %struct.vfsoptlist* @malloc(i32 4, i32 %70, i32 %71)
  store %struct.vfsoptlist* %72, %struct.vfsoptlist** %6, align 8
  %73 = load %struct.vfsoptlist*, %struct.vfsoptlist** %6, align 8
  %74 = call i32 @TAILQ_INIT(%struct.vfsoptlist* %73)
  %75 = load %struct.vfsoptlist*, %struct.vfsoptlist** %6, align 8
  %76 = load %struct.mount*, %struct.mount** %8, align 8
  %77 = getelementptr inbounds %struct.mount, %struct.mount* %76, i32 0, i32 0
  store %struct.vfsoptlist* %75, %struct.vfsoptlist** %77, align 8
  %78 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %79 = load %struct.mount*, %struct.mount** %8, align 8
  %80 = load i32, i32* @mnt_list, align 4
  %81 = call i32 @TAILQ_INSERT_HEAD(i32* @mountlist, %struct.mount* %79, i32 %80)
  %82 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %83 = load %struct.mount*, %struct.mount** %8, align 8
  %84 = load %struct.mount**, %struct.mount*** %5, align 8
  store %struct.mount* %83, %struct.mount** %84, align 8
  %85 = load %struct.mount*, %struct.mount** %8, align 8
  store %struct.mount* %85, %struct.mount** @rootdevmp, align 8
  %86 = load %struct.mount*, %struct.mount** %8, align 8
  %87 = call i32 @vfs_op_exit(%struct.mount* %86)
  br label %88

88:                                               ; preds = %69, %20
  %89 = call i32 (...) @set_rootvnode()
  %90 = load %struct.thread*, %struct.thread** %4, align 8
  %91 = load i32, i32* @AT_FDCWD, align 4
  %92 = load i32, i32* @UIO_SYSSPACE, align 4
  %93 = call i32 @kern_symlinkat(%struct.thread* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %88
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %67, %51, %31, %18
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local %struct.vfsconf* @vfs_byname(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mount* @vfs_mount_alloc(i32, %struct.vfsconf*, i8*, i32) #1

declare dso_local i32 @VFS_MOUNT(%struct.mount*) #1

declare dso_local i32 @VFS_STATFS(%struct.mount*, i32*) #1

declare dso_local %struct.vfsoptlist* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.vfsoptlist*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.mount*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vfs_op_exit(%struct.mount*) #1

declare dso_local i32 @set_rootvnode(...) #1

declare dso_local i32 @kern_symlinkat(%struct.thread*, i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
