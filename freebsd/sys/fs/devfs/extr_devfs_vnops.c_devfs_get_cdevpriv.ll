; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_get_cdevpriv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_get_cdevpriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.file* }
%struct.file = type { %struct.cdev_privdata* }
%struct.cdev_privdata = type { i8* }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@EBADF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfs_get_cdevpriv(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cdev_privdata*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %9, %struct.file** %4, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = icmp eq %struct.file* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EBADF, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.cdev_privdata*, %struct.cdev_privdata** %16, align 8
  store %struct.cdev_privdata* %17, %struct.cdev_privdata** %5, align 8
  %18 = load %struct.cdev_privdata*, %struct.cdev_privdata** %5, align 8
  %19 = icmp ne %struct.cdev_privdata* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  %21 = load %struct.cdev_privdata*, %struct.cdev_privdata** %5, align 8
  %22 = getelementptr inbounds %struct.cdev_privdata, %struct.cdev_privdata* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %3, align 8
  store i8* %23, i8** %24, align 8
  br label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
