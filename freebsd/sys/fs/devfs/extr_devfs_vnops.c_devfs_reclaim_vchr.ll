; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_reclaim_vchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_reclaim_vchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { i64, i64, %struct.cdev* }
%struct.cdev = type { i32 }

@VCHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_reclaim_args*)* @devfs_reclaim_vchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_reclaim_vchr(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.cdev*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %5 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VCHR, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %16 = call i32 @devfs_reclaim(%struct.vop_reclaim_args* %15)
  %17 = load %struct.vnode*, %struct.vnode** %3, align 8
  %18 = call i32 @VI_LOCK(%struct.vnode* %17)
  %19 = call i32 (...) @dev_lock()
  %20 = load %struct.vnode*, %struct.vnode** %3, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 2
  %22 = load %struct.cdev*, %struct.cdev** %21, align 8
  store %struct.cdev* %22, %struct.cdev** %4, align 8
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 2
  store %struct.cdev* null, %struct.cdev** %24, align 8
  %25 = load %struct.cdev*, %struct.cdev** %4, align 8
  %26 = icmp ne %struct.cdev* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cdev*, %struct.cdev** %4, align 8
  %32 = getelementptr inbounds %struct.cdev, %struct.cdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  br label %37

37:                                               ; preds = %27, %1
  %38 = call i32 (...) @dev_unlock()
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = call i32 @VI_UNLOCK(%struct.vnode* %39)
  %41 = load %struct.cdev*, %struct.cdev** %4, align 8
  %42 = icmp ne %struct.cdev* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.cdev*, %struct.cdev** %4, align 8
  %45 = call i32 @dev_rel(%struct.cdev* %44)
  br label %46

46:                                               ; preds = %43, %37
  ret i32 0
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @devfs_reclaim(%struct.vop_reclaim_args*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @dev_rel(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
