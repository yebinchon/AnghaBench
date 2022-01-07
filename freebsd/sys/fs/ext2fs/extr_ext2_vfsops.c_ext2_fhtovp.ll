; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_fhtovp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_fhtovp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.fid = type { i32 }
%struct.inode = type { i64, i64, i64 }
%struct.ufid = type { i32, i64 }
%struct.m_ext2fs = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.m_ext2fs* }

@EXT2_ROOTINO = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.fid*, i32, %struct.vnode**)* @ext2_fhtovp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_fhtovp(%struct.mount* %0, %struct.fid* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ufid*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.m_ext2fs*, align 8
  %14 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vnode** %3, %struct.vnode*** %9, align 8
  %15 = load %struct.fid*, %struct.fid** %7, align 8
  %16 = bitcast %struct.fid* %15 to %struct.ufid*
  store %struct.ufid* %16, %struct.ufid** %11, align 8
  %17 = load %struct.mount*, %struct.mount** %6, align 8
  %18 = call %struct.TYPE_4__* @VFSTOEXT2(%struct.mount* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %19, align 8
  store %struct.m_ext2fs* %20, %struct.m_ext2fs** %13, align 8
  %21 = load %struct.ufid*, %struct.ufid** %11, align 8
  %22 = getelementptr inbounds %struct.ufid, %struct.ufid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EXT2_ROOTINO, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %40, label %26

26:                                               ; preds = %4
  %27 = load %struct.ufid*, %struct.ufid** %11, align 8
  %28 = getelementptr inbounds %struct.ufid, %struct.ufid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.m_ext2fs*, %struct.m_ext2fs** %13, align 8
  %31 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %13, align 8
  %34 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %32, %37
  %39 = icmp sgt i32 %29, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26, %4
  %41 = load i32, i32* @ESTALE, align 4
  store i32 %41, i32* %5, align 4
  br label %88

42:                                               ; preds = %26
  %43 = load %struct.mount*, %struct.mount** %6, align 8
  %44 = load %struct.ufid*, %struct.ufid** %11, align 8
  %45 = getelementptr inbounds %struct.ufid, %struct.ufid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LK_EXCLUSIVE, align 4
  %48 = call i32 @VFS_VGET(%struct.mount* %43, i32 %46, i32 %47, %struct.vnode** %12)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %53 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %52, %struct.vnode** %53, align 8
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %88

55:                                               ; preds = %42
  %56 = load %struct.vnode*, %struct.vnode** %12, align 8
  %57 = call %struct.inode* @VTOI(%struct.vnode* %56)
  store %struct.inode* %57, %struct.inode** %10, align 8
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %55
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ufid*, %struct.ufid** %11, align 8
  %67 = getelementptr inbounds %struct.ufid, %struct.ufid* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %62
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70, %62, %55
  %76 = load %struct.vnode*, %struct.vnode** %12, align 8
  %77 = call i32 @vput(%struct.vnode* %76)
  %78 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %79 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %78, %struct.vnode** %79, align 8
  %80 = load i32, i32* @ESTALE, align 4
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %70
  %82 = load %struct.vnode*, %struct.vnode** %12, align 8
  %83 = load %struct.vnode**, %struct.vnode*** %9, align 8
  store %struct.vnode* %82, %struct.vnode** %83, align 8
  %84 = load %struct.vnode**, %struct.vnode*** %9, align 8
  %85 = load %struct.vnode*, %struct.vnode** %84, align 8
  %86 = load i32, i32* @curthread, align 4
  %87 = call i32 @vnode_create_vobject(%struct.vnode* %85, i32 0, i32 %86)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %81, %75, %51, %40
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_4__* @VFSTOEXT2(%struct.mount*) #1

declare dso_local i32 @VFS_VGET(%struct.mount*, i32, i32, %struct.vnode**) #1

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
