; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32* }
%struct.cdev_priv = type { i64, %struct.cdev_priv*, i32 }

@M_DEVFS2 = common dso_local global i32 0, align 4
@M_CDEVP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfs_free(%struct.cdev* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca %struct.cdev_priv*, align 8
  store %struct.cdev* %0, %struct.cdev** %2, align 8
  %4 = load %struct.cdev*, %struct.cdev** %2, align 8
  %5 = call %struct.cdev_priv* @cdev2priv(%struct.cdev* %4)
  store %struct.cdev_priv* %5, %struct.cdev_priv** %3, align 8
  %6 = load %struct.cdev*, %struct.cdev** %2, align 8
  %7 = getelementptr inbounds %struct.cdev, %struct.cdev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.cdev*, %struct.cdev** %2, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @crfree(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @devfs_free_cdp_inode(i32 %18)
  %20 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %26 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %25, i32 0, i32 1
  %27 = load %struct.cdev_priv*, %struct.cdev_priv** %26, align 8
  %28 = load i32, i32* @M_DEVFS2, align 4
  %29 = call i32 @free(%struct.cdev_priv* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %15
  %31 = load %struct.cdev_priv*, %struct.cdev_priv** %3, align 8
  %32 = load i32, i32* @M_CDEVP, align 4
  %33 = call i32 @free(%struct.cdev_priv* %31, i32 %32)
  ret void
}

declare dso_local %struct.cdev_priv* @cdev2priv(%struct.cdev*) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @devfs_free_cdp_inode(i32) #1

declare dso_local i32 @free(%struct.cdev_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
