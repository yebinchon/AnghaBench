; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_getextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_getextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getextattr_args = type { i64*, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.inode = type { i64, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }

@EXT2F_COMPAT_EXT_ATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@VREAD = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getextattr_args*)* @ext2_getextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_getextattr(%struct.vop_getextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getextattr_args*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_getextattr_args* %0, %struct.vop_getextattr_args** %3, align 8
  %7 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %7, i32 0, i32 6
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
  br label %117

22:                                               ; preds = %1
  %23 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %23, i32 0, i32 6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VCHR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %31, i32 0, i32 6
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VBLK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %22
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %39, i32* %2, align 4
  br label %117

40:                                               ; preds = %30
  %41 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %41, i32 0, i32 6
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %51 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VREAD, align 4
  %54 = call i32 @extattr_check_cred(%struct.TYPE_3__* %43, i32 %46, i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %117

59:                                               ; preds = %40
  %60 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %61 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %66 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @ENOATTR, align 4
  store i32 %69, i32* %6, align 4
  %70 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %71 = call i64 @EXT2_INODE_SIZE(%struct.m_ext2fs* %70)
  %72 = load i64, i64* @E2FS_REV0_INODE_SIZE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %77 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %80 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %83 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %86 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 @ext2_extattr_inode_get(%struct.inode* %75, i32 %78, i32 %81, i32 %84, i64* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @ENOATTR, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %117

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %94, %68
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %103 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %106 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %109 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %112 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = call i32 @ext2_extattr_block_get(%struct.inode* %101, i32 %104, i32 %107, i32 %110, i64* %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %100, %95
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %92, %57, %38, %20
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.inode* @VTOI(%struct.TYPE_3__*) #1

declare dso_local i32 @EXT2_HAS_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @extattr_check_cred(%struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local i64 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ext2_extattr_inode_get(%struct.inode*, i32, i32, i32, i64*) #1

declare dso_local i32 @ext2_extattr_block_get(%struct.inode*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
