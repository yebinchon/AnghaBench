; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vnops.c_cd9660_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vnops.c_cd9660_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getpages_args = type { i32, i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i64 }

@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@use_buf_pager = common dso_local global i64 0, align 8
@cd9660_gbp_getblkno = common dso_local global i32 0, align 4
@cd9660_gbp_getblksz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getpages_args*)* @cd9660_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_getpages(%struct.vop_getpages_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getpages_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.vop_getpages_args* %0, %struct.vop_getpages_args** %3, align 8
  %5 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %6 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %5, i32 0, i32 4
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %4, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VCHR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VBLK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %13
  %22 = load i64, i64* @use_buf_pager, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
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
  %38 = load i32, i32* @cd9660_gbp_getblkno, align 4
  %39 = load i32, i32* @cd9660_gbp_getblksz, align 4
  %40 = call i32 @vfs_bio_getpages(%struct.vnode* %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %21
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %50 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vop_getpages_args*, %struct.vop_getpages_args** %3, align 8
  %53 = getelementptr inbounds %struct.vop_getpages_args, %struct.vop_getpages_args* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @vnode_pager_generic_getpages(%struct.vnode* %42, i32 %45, i32 %48, i32 %51, i32 %54, i32* null, i32* null)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %41, %24, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @vfs_bio_getpages(%struct.vnode*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnode_pager_generic_getpages(%struct.vnode*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
