; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_metoo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_metoo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev_priv = type { i32, %struct.devfs_dirent** }
%struct.devfs_dirent = type { i32 }
%struct.devfs_mount = type { i32 }

@M_DEVFS2 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdev_priv*, %struct.devfs_mount*)* @devfs_metoo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_metoo(%struct.cdev_priv* %0, %struct.devfs_mount* %1) #0 {
  %3 = alloca %struct.cdev_priv*, align 8
  %4 = alloca %struct.devfs_mount*, align 8
  %5 = alloca %struct.devfs_dirent**, align 8
  %6 = alloca i32, align 4
  store %struct.cdev_priv* %0, %struct.cdev_priv** %3, align 8
  store %struct.devfs_mount* %1, %struct.devfs_mount** %4, align 8
  %7 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %8 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @M_DEVFS2, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.devfs_dirent** @malloc(i32 %14, i32 %15, i32 %18)
  store %struct.devfs_dirent** %19, %struct.devfs_dirent*** %5, align 8
  %20 = call i32 (...) @dev_lock()
  %21 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %22 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %25 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = call i32 (...) @dev_unlock()
  %30 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %5, align 8
  %31 = load i32, i32* @M_DEVFS2, align 4
  %32 = call i32 @free(%struct.devfs_dirent** %30, i32 %31)
  br label %66

33:                                               ; preds = %2
  %34 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %5, align 8
  %35 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %36 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %35, i32 0, i32 1
  %37 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %36, align 8
  %38 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %39 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(%struct.devfs_dirent** %34, %struct.devfs_dirent** %37, i32 %44)
  %46 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %47 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %52 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %51, i32 0, i32 1
  %53 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %52, align 8
  %54 = load i32, i32* @M_DEVFS2, align 4
  %55 = call i32 @free(%struct.devfs_dirent** %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %33
  %57 = load %struct.devfs_dirent**, %struct.devfs_dirent*** %5, align 8
  %58 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %59 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %58, i32 0, i32 1
  store %struct.devfs_dirent** %57, %struct.devfs_dirent*** %59, align 8
  %60 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %61 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %64 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = call i32 (...) @dev_unlock()
  br label %66

66:                                               ; preds = %56, %28
  ret void
}

declare dso_local %struct.devfs_dirent** @malloc(i32, i32, i32) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local i32 @free(%struct.devfs_dirent**, i32) #1

declare dso_local i32 @memcpy(%struct.devfs_dirent**, %struct.devfs_dirent**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
