; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.devfs_dirent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.cdev }

@CDP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cdev* (%struct.devfs_dirent*)* @devfs_rule_getdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cdev* @devfs_rule_getdev(%struct.devfs_dirent* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca %struct.devfs_dirent*, align 8
  store %struct.devfs_dirent* %0, %struct.devfs_dirent** %3, align 8
  %4 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %5 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.cdev* null, %struct.cdev** %2, align 8
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %11 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CDP_ACTIVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.devfs_dirent*, %struct.devfs_dirent** %3, align 8
  %20 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.cdev* %22, %struct.cdev** %2, align 8
  br label %24

23:                                               ; preds = %9
  store %struct.cdev* null, %struct.cdev** %2, align 8
  br label %24

24:                                               ; preds = %23, %18, %8
  %25 = load %struct.cdev*, %struct.cdev** %2, align 8
  ret %struct.cdev* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
