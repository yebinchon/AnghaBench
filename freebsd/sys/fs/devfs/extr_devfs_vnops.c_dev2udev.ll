; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_dev2udev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_dev2udev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev2udev(%struct.cdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdev*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  %4 = load %struct.cdev*, %struct.cdev** %3, align 8
  %5 = icmp eq %struct.cdev* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @NODEV, align 4
  store i32 %7, i32* %2, align 4
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.cdev*, %struct.cdev** %3, align 8
  %10 = call %struct.TYPE_2__* @cdev2priv(%struct.cdev* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %8, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local %struct.TYPE_2__* @cdev2priv(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
