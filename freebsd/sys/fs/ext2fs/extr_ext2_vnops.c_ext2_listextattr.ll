; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_listextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_listextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_listextattr_args = type { i64*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.inode = type { i64, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }

@EXT2F_COMPAT_EXT_ATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@VREAD = common dso_local global i32 0, align 4
@E2FS_REV0_INODE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_listextattr_args*)* @ext2_listextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_listextattr(%struct.vop_listextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_listextattr_args*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_listextattr_args* %0, %struct.vop_listextattr_args** %3, align 8
  %7 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %7, i32 0, i32 5
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
  br label %109

22:                                               ; preds = %1
  %23 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VCHR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %31, i32 0, i32 5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VBLK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %22
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %39, i32* %2, align 4
  br label %109

40:                                               ; preds = %30
  %41 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %41, i32 0, i32 5
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %51 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VREAD, align 4
  %54 = call i32 @extattr_check_cred(%struct.TYPE_3__* %43, i32 %46, i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %109

59:                                               ; preds = %40
  %60 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %61 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %66 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %70 = call i64 @EXT2_INODE_SIZE(%struct.m_ext2fs* %69)
  %71 = load i64, i64* @E2FS_REV0_INODE_SIZE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %76 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %79 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %82 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @ext2_extattr_inode_list(%struct.inode* %74, i32 %77, i32 %80, i64* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %109

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %98 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %101 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vop_listextattr_args*, %struct.vop_listextattr_args** %3, align 8
  %104 = getelementptr inbounds %struct.vop_listextattr_args, %struct.vop_listextattr_args* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @ext2_extattr_block_list(%struct.inode* %96, i32 %99, i32 %102, i64* %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %95, %90
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %87, %57, %38, %20
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.inode* @VTOI(%struct.TYPE_3__*) #1

declare dso_local i32 @EXT2_HAS_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @extattr_check_cred(%struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local i64 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ext2_extattr_inode_list(%struct.inode*, i32, i32, i64*) #1

declare dso_local i32 @ext2_extattr_block_list(%struct.inode*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
