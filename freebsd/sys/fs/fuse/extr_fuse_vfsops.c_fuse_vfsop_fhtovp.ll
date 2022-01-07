; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_vfsop_fhtovp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_vfsop_fhtovp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.fid = type { i32 }
%struct.fuse_fid = type { i64, i32 }
%struct.fuse_vnode_data = type { i64 }
%struct.TYPE_2__ = type { i32 }

@FSESS_EXPORT_SUPPORT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@ESTALE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)* @fuse_vfsop_fhtovp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vfsop_fhtovp(%struct.mount* %0, %struct.fid* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.fuse_fid*, align 8
  %11 = alloca %struct.fuse_vnode_data*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %14 = load %struct.fid*, %struct.fid** %7, align 8
  %15 = bitcast %struct.fid* %14 to %struct.fuse_fid*
  store %struct.fuse_fid* %15, %struct.fuse_fid** %10, align 8
  %16 = load %struct.mount*, %struct.mount** %6, align 8
  %17 = call %struct.TYPE_2__* @fuse_get_mpdata(%struct.mount* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FSESS_EXPORT_SUPPORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load %struct.mount*, %struct.mount** %6, align 8
  %27 = load %struct.fuse_fid*, %struct.fuse_fid** %10, align 8
  %28 = getelementptr inbounds %struct.fuse_fid, %struct.fuse_fid* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LK_EXCLUSIVE, align 4
  %31 = call i32 @VFS_VGET(%struct.mount* %26, i32 %29, i32 %30, %struct.vnode** %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %36 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %35, %struct.vnode** %36, align 8
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %61

38:                                               ; preds = %25
  %39 = load %struct.vnode*, %struct.vnode** %12, align 8
  %40 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %39)
  store %struct.fuse_vnode_data* %40, %struct.fuse_vnode_data** %11, align 8
  %41 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %11, align 8
  %42 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fuse_fid*, %struct.fuse_fid** %10, align 8
  %45 = getelementptr inbounds %struct.fuse_fid, %struct.fuse_fid* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.vnode*, %struct.vnode** %12, align 8
  %50 = call i32 @vput(%struct.vnode* %49)
  %51 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %52 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %51, %struct.vnode** %52, align 8
  %53 = load i32, i32* @ESTALE, align 4
  store i32 %53, i32* %5, align 4
  br label %61

54:                                               ; preds = %38
  %55 = load %struct.vnode*, %struct.vnode** %12, align 8
  %56 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %55, %struct.vnode** %56, align 8
  %57 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %58 = load %struct.vnode*, %struct.vnode** %57, align 8
  %59 = load i32, i32* @curthread, align 4
  %60 = call i32 @vnode_create_vobject(%struct.vnode* %58, i32 0, i32 %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %48, %34, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i32 @VFS_VGET(%struct.mount*, i32, i32, %struct.vnode**) #1

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
