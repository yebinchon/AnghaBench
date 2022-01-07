; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_dir.c_devfs_dir_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_dir.c_devfs_dir_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlistent = type { i64, %struct.dirlistent* }

@dirlist_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"devfs_dir_unref: dir %s not referenced\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"devfs_dir_unref: negative refcnt\00", align 1
@link = common dso_local global i32 0, align 4
@M_DEVFS4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @devfs_dir_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_dir_unref(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dirlistent*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = call i32 @mtx_lock(i32* @dirlist_mtx)
  %11 = load i8*, i8** %2, align 8
  %12 = call %struct.dirlistent* @devfs_dir_findent_locked(i8* %11)
  store %struct.dirlistent* %12, %struct.dirlistent** %3, align 8
  %13 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %14 = icmp ne %struct.dirlistent* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @KASSERT(i32 %15, i8* %16)
  %18 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %19 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %23 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %29 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %9
  %33 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %34 = load i32, i32* @link, align 4
  %35 = call i32 @LIST_REMOVE(%struct.dirlistent* %33, i32 %34)
  %36 = call i32 @mtx_unlock(i32* @dirlist_mtx)
  %37 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %38 = getelementptr inbounds %struct.dirlistent, %struct.dirlistent* %37, i32 0, i32 1
  %39 = load %struct.dirlistent*, %struct.dirlistent** %38, align 8
  %40 = load i32, i32* @M_DEVFS4, align 4
  %41 = call i32 @free(%struct.dirlistent* %39, i32 %40)
  %42 = load %struct.dirlistent*, %struct.dirlistent** %3, align 8
  %43 = load i32, i32* @M_DEVFS4, align 4
  %44 = call i32 @free(%struct.dirlistent* %42, i32 %43)
  br label %47

45:                                               ; preds = %9
  %46 = call i32 @mtx_unlock(i32* @dirlist_mtx)
  br label %47

47:                                               ; preds = %8, %45, %32
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.dirlistent* @devfs_dir_findent_locked(i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.dirlistent*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.dirlistent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
