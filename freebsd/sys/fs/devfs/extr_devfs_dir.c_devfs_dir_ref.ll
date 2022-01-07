; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_dir.c_devfs_dir_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_dir.c_devfs_dir_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlistent = type { i32, %struct.dirlistent* }

@M_DEVFS4 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@dirlist_mtx = common dso_local global i32 0, align 4
@devfs_dirlist = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @devfs_dir_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_dir_ref(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dirlistent*, align 8
  %4 = alloca %struct.dirlistent*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* @M_DEVFS4, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = call %struct.dirlistent* @malloc(i32 16, i32 %11, i32 %12)
  store %struct.dirlistent* %13, %struct.dirlistent** %4, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* @M_DEVFS4, align 4
  %16 = call %struct.dirlistent* @strdup(i8* %14, i32 %15)
  %17 = load %struct.dirlistent*, %struct.dirlistent** %4, align 8
  %18 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %17, i32 0, i32 1
  store %struct.dirlistent* %16, %struct.dirlistent** %18, align 8
  %19 = load %struct.dirlistent*, %struct.dirlistent** %4, align 8
  %20 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = call i32 @mtx_lock(i32* @dirlist_mtx)
  %22 = load i8*, i8** %2, align 8
  %23 = call %struct.dirlistent* @devfs_dir_findent_locked(i8* %22)
  store %struct.dirlistent* %23, %struct.dirlistent** %3, align 8
  %24 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %25 = icmp ne %struct.dirlistent* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %10
  %27 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %28 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = call i32 @mtx_unlock(i32* @dirlist_mtx)
  %32 = load %struct.dirlistent*, %struct.dirlistent** %4, align 8
  %33 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %32, i32 0, i32 1
  %34 = load %struct.dirlistent*, %struct.dirlistent** %33, align 8
  %35 = load i32, i32* @M_DEVFS4, align 4
  %36 = call i32 @free(%struct.dirlistent* %34, i32 %35)
  %37 = load %struct.dirlistent*, %struct.dirlistent** %4, align 8
  %38 = load i32, i32* @M_DEVFS4, align 4
  %39 = call i32 @free(%struct.dirlistent* %37, i32 %38)
  br label %45

40:                                               ; preds = %10
  %41 = load %struct.dirlistent*, %struct.dirlistent** %4, align 8
  %42 = load i32, i32* @link, align 4
  %43 = call i32 @LIST_INSERT_HEAD(i32* @devfs_dirlist, %struct.dirlistent* %41, i32 %42)
  %44 = call i32 @mtx_unlock(i32* @dirlist_mtx)
  br label %45

45:                                               ; preds = %40, %26, %9
  ret void
}

declare dso_local %struct.dirlistent* @malloc(i32, i32, i32) #1

declare dso_local %struct.dirlistent* @strdup(i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.dirlistent* @devfs_dir_findent_locked(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.dirlistent*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.dirlistent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
