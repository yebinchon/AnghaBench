; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_open_ea.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_open_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.inode = type { i32, i64, i32, i32*, %struct.ufs2_dinode* }
%struct.ufs2_dinode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.ucred*, %struct.thread*)* @ffs_open_ea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_open_ea(%struct.vnode* %0, %struct.ucred* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ufs2_dinode*, align 8
  %10 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.ucred* %1, %struct.ucred** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.vnode*, %struct.vnode** %5, align 8
  %12 = call %struct.inode* @VTOI(%struct.vnode* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.vnode*, %struct.vnode** %5, align 8
  %14 = call i32 @ffs_lock_ea(%struct.vnode* %13)
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.vnode*, %struct.vnode** %5, align 8
  %25 = call i32 @ffs_unlock_ea(%struct.vnode* %24)
  store i32 0, i32* %4, align 4
  br label %55

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  %29 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %28, align 8
  store %struct.ufs2_dinode* %29, %struct.ufs2_dinode** %9, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 3
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = call i32 @ffs_rdextattr(i32** %31, %struct.vnode* %32, %struct.thread* %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  %39 = call i32 @ffs_unlock_ea(%struct.vnode* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %26
  %42 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %9, align 8
  %43 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.vnode*, %struct.vnode** %5, align 8
  %54 = call i32 @ffs_unlock_ea(%struct.vnode* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %41, %37, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ffs_lock_ea(%struct.vnode*) #1

declare dso_local i32 @ffs_unlock_ea(%struct.vnode*) #1

declare dso_local i32 @ffs_rdextattr(i32**, %struct.vnode*, %struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
