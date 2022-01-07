; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getpages_args = type { i32, i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.ufsmount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@use_buf_pager = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@ffs_gbp_getblkno = common dso_local global i32 0, align 4
@ffs_gbp_getblksz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getpages_args*)* @ffs_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_getpages(%struct.vop_getpages_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getpages_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ufsmount*, align 8
  store %struct.vop_getpages_args* %0, %struct.vop_getpages_args** %3, align 8
  %6 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %6, i32 0, i32 4
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ufsmount* @VFSTOUFS(i32 %11)
  store %struct.ufsmount* %12, %struct.ufsmount** %5, align 8
  %13 = load i32, i32* @use_buf_pager, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %1
  %16 = load %struct.ufsmount*, %struct.ufsmount** %5, align 8
  %17 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %36 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @vnode_pager_generic_getpages(%struct.vnode* %25, i32 %28, i32 %31, i32 %34, i32 %37, i32* null, i32* null)
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %15, %1
  %40 = load %struct.vnode*, %struct.vnode** %4, align 8
  %41 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %51 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ffs_gbp_getblkno, align 4
  %54 = load i32, i32* @ffs_gbp_getblksz, align 4
  %55 = call i32 @vfs_bio_getpages(%struct.vnode* %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %39, %24
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ufsmount* @VFSTOUFS(i32) #1

declare dso_local i32 @vnode_pager_generic_getpages(%struct.vnode*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @vfs_bio_getpages(%struct.vnode*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
