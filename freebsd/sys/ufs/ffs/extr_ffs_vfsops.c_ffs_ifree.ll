; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_ifree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_ifree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufsmount = type { i64 }
%struct.inode = type { %struct.inode*, %struct.inode* }

@UFS1 = common dso_local global i64 0, align 8
@uma_ufs1 = common dso_local global i32 0, align 4
@uma_ufs2 = common dso_local global i32 0, align 4
@uma_inode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufsmount*, %struct.inode*)* @ffs_ifree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_ifree(%struct.ufsmount* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ufsmount*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.ufsmount* %0, %struct.ufsmount** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.ufsmount*, %struct.ufsmount** %3, align 8
  %6 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @UFS1, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @uma_ufs1, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  %20 = call i32 @uma_zfree(i32 %16, %struct.inode* %19)
  br label %33

21:                                               ; preds = %10, %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @uma_ufs2, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = call i32 @uma_zfree(i32 %27, %struct.inode* %30)
  br label %32

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* @uma_inode, align 4
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @uma_zfree(i32 %34, %struct.inode* %35)
  ret void
}

declare dso_local i32 @uma_zfree(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
