; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_deleteextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_deleteextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_deleteextattr_args = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.inode = type { i64, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }

@EXT2F_COMPAT_EXT_ATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@VWRITE = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_deleteextattr_args*)* @ext2_deleteextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_deleteextattr(%struct.vop_deleteextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_deleteextattr_args*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_deleteextattr_args* %0, %struct.vop_deleteextattr_args** %3, align 8
  %7 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = call %struct.inode* @VTOI(%struct.TYPE_3__* %9)
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  store %struct.m_ext2fs* %13, %struct.m_ext2fs** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %17 = load i32, i32* @EXT2F_COMPAT_EXT_ATTR, align 4
  %18 = call i32 @EXT2_HAS_COMPAT_FEATURE(%struct.m_ext2fs* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VCHR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VBLK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %22
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %39, i32* %2, align 4
  br label %96

40:                                               ; preds = %30
  %41 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %51 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VWRITE, align 4
  %54 = call i32 @extattr_check_cred(%struct.TYPE_3__* %43, i32 %46, i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %96

59:                                               ; preds = %40
  %60 = load i32, i32* @ENOATTR, align 4
  store i32 %60, i32* %6, align 4
  %61 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %62 = call i64 @EXT2_INODE_SIZE(%struct.m_ext2fs* %61)
  %63 = load i64, i64* @E2FS_REV0_INODE_SIZE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %68 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %71 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ext2_extattr_inode_delete(%struct.inode* %66, i32 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ENOATTR, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %96

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %88 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %91 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ext2_extattr_block_delete(%struct.inode* %86, i32 %89, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %85, %80
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %77, %57, %38, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.inode* @VTOI(%struct.TYPE_3__*) #1

declare dso_local i32 @EXT2_HAS_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @extattr_check_cred(%struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local i64 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ext2_extattr_inode_delete(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext2_extattr_block_delete(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
