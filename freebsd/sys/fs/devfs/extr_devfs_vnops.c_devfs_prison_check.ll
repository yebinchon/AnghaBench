; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_prison_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_prison_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_dirent = type { %struct.cdev_priv* }
%struct.cdev_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.thread = type { %struct.proc*, i32 }
%struct.proc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cdev_priv* }

@P_CONTROLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfs_dirent*, %struct.thread*)* @devfs_prison_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_prison_check(%struct.devfs_dirent* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfs_dirent*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.cdev_priv*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store %struct.devfs_dirent* %0, %struct.devfs_dirent** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %10 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %11 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %10, i32 0, i32 0
  %12 = load %struct.cdev_priv*, %struct.cdev_priv** %11, align 8
  store %struct.cdev_priv* %12, %struct.cdev_priv** %6, align 8
  %13 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %14 = icmp eq %struct.cdev_priv* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %18 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ucred*, %struct.ucred** %19, align 8
  store %struct.ucred* %20, %struct.ucred** %7, align 8
  %21 = load %struct.ucred*, %struct.ucred** %7, align 8
  %22 = icmp eq %struct.ucred* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %62

24:                                               ; preds = %16
  %25 = load %struct.thread*, %struct.thread** %5, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ucred*, %struct.ucred** %7, align 8
  %29 = call i32 @prison_check(i32 %27, %struct.ucred* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %62

33:                                               ; preds = %24
  %34 = load %struct.thread*, %struct.thread** %5, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load %struct.proc*, %struct.proc** %35, align 8
  store %struct.proc* %36, %struct.proc** %8, align 8
  %37 = load %struct.proc*, %struct.proc** %8, align 8
  %38 = call i32 @PROC_LOCK(%struct.proc* %37)
  %39 = load %struct.proc*, %struct.proc** %8, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @P_CONTROLT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load %struct.proc*, %struct.proc** %8, align 8
  %47 = call i32 @PROC_UNLOCK(%struct.proc* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %33
  %50 = load %struct.proc*, %struct.proc** %8, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.cdev_priv*, %struct.cdev_priv** %53, align 8
  %55 = load %struct.cdev_priv*, %struct.cdev_priv** %6, align 8
  %56 = icmp eq %struct.cdev_priv* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.proc*, %struct.proc** %8, align 8
  %60 = call i32 @PROC_UNLOCK(%struct.proc* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %45, %32, %23, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @prison_check(i32, %struct.ucred*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
