; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getpages_args = type { i32, i32, i32, i32, i32 }

@use_buf_pager = common dso_local global i64 0, align 8
@msdosfs_gbp_getblkno = common dso_local global i32 0, align 4
@msdosfs_gbp_getblksz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getpages_args*)* @msdosfs_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_getpages(%struct.vop_getpages_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getpages_args*, align 8
  store %struct.vop_getpages_args* %0, %struct.vop_getpages_args** %3, align 8
  %4 = load i64, i64* @use_buf_pager, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @msdosfs_gbp_getblkno, align 4
  %23 = load i32, i32* @msdosfs_gbp_getblksz, align 4
  %24 = call i32 @vfs_bio_getpages(i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %36 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vnode_pager_generic_getpages(i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32* null, i32* null)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %25, %6
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @vfs_bio_getpages(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnode_pager_generic_getpages(i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
