; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_return_batches.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_return_batches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsops = type { i32 }
%struct.mount = type { i64, %struct.vfsops* }

@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@MBF_NOWAIT = common dso_local global i32 0, align 4
@MBF_MNTLSTLOCK = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfsops*)* @vnlru_return_batches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnlru_return_batches(%struct.vfsops* %0) #0 {
  %2 = alloca %struct.vfsops*, align 8
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  store %struct.vfsops* %0, %struct.vfsops** %2, align 8
  %6 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %7 = call %struct.mount* @TAILQ_FIRST(i32* @mountlist)
  store %struct.mount* %7, %struct.mount** %3, align 8
  br label %8

8:                                                ; preds = %49, %1
  %9 = load %struct.mount*, %struct.mount** %3, align 8
  %10 = icmp ne %struct.mount* %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  %12 = load %struct.vfsops*, %struct.vfsops** %2, align 8
  %13 = icmp ne %struct.vfsops* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.mount*, %struct.mount** %3, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 1
  %17 = load %struct.vfsops*, %struct.vfsops** %16, align 8
  %18 = load %struct.vfsops*, %struct.vfsops** %2, align 8
  %19 = icmp ne %struct.vfsops* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %39

21:                                               ; preds = %14, %11
  %22 = load %struct.mount*, %struct.mount** %3, align 8
  %23 = getelementptr inbounds %struct.mount, %struct.mount* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %39

27:                                               ; preds = %21
  %28 = load %struct.mount*, %struct.mount** %3, align 8
  %29 = load i32, i32* @MBF_NOWAIT, align 4
  %30 = load i32, i32* @MBF_MNTLSTLOCK, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @vfs_busy(%struct.mount* %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.mount*, %struct.mount** %3, align 8
  %36 = call i32 @vnlru_return_batch(%struct.mount* %35)
  store i32 1, i32* %5, align 4
  %37 = call i32 @mtx_lock(i32* @mountlist_mtx)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %38, %26, %20
  %40 = load %struct.mount*, %struct.mount** %3, align 8
  %41 = load i32, i32* @mnt_list, align 4
  %42 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %40, i32 %41)
  store %struct.mount* %42, %struct.mount** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.mount*, %struct.mount** %3, align 8
  %47 = call i32 @vfs_unbusy(%struct.mount* %46)
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.mount*, %struct.mount** %4, align 8
  store %struct.mount* %50, %struct.mount** %3, align 8
  br label %8

51:                                               ; preds = %8
  %52 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mount* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @vnlru_return_batch(%struct.mount*) #1

declare dso_local %struct.mount* @TAILQ_NEXT(%struct.mount*, i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
