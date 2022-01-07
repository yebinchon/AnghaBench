; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_getpages_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffs_getpages_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getpages_async_args = type { i32, i32, i32, i32 (i32, i32, i32, i32)*, i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.ufsmount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ffs_gbp_getblkno = common dso_local global i32 0, align 4
@ffs_gbp_getblksz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getpages_async_args*)* @ffs_getpages_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_getpages_async(%struct.vop_getpages_async_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getpages_async_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.ufsmount*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_getpages_async_args* %0, %struct.vop_getpages_async_args** %3, align 8
  %7 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %7, i32 0, i32 6
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ufsmount* @VFSTOUFS(i32 %12)
  store %struct.ufsmount* %13, %struct.ufsmount** %5, align 8
  %14 = load %struct.ufsmount*, %struct.ufsmount** %5, align 8
  %15 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %36, i32 0, i32 3
  %38 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %37, align 8
  %39 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %40 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vnode_pager_generic_getpages(%struct.vnode* %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 (i32, i32, i32, i32)* %38, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %75

43:                                               ; preds = %1
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %46 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %49 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %52 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ffs_gbp_getblkno, align 4
  %58 = load i32, i32* @ffs_gbp_getblksz, align 4
  %59 = call i32 @vfs_bio_getpages(%struct.vnode* %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %61 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %60, i32 0, i32 3
  %62 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %61, align 8
  %63 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %64 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %67 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vop_getpages_async_args*, %struct.vop_getpages_async_args** %3, align 8
  %70 = getelementptr inbounds %struct.vop_getpages_async_args, %struct.vop_getpages_async_args* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 %62(i32 %65, i32 %68, i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %43, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ufsmount* @VFSTOUFS(i32) #1

declare dso_local i32 @vnode_pager_generic_getpages(%struct.vnode*, i32, i32, i32, i32, i32 (i32, i32, i32, i32)*, i32) #1

declare dso_local i32 @vfs_bio_getpages(%struct.vnode*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
