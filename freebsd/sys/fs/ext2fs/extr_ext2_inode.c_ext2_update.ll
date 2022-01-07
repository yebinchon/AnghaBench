; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.m_ext2fs = type { i64, i64 }
%struct.buf = type { i64 }
%struct.inode = type { i32, i32, i32, %struct.m_ext2fs* }
%struct.ext2fs_dinode = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ext2_update\00", align 1
@IN_MODIFIED = common dso_local global i32 0, align 4
@IN_LAZYACCESS = common dso_local global i32 0, align 4
@IN_LAZYMOD = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_update(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_ext2fs*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = call i32 @ext2_itimes(%struct.vnode* %12)
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = call %struct.inode* @VTOI(%struct.vnode* %14)
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IN_MODIFIED, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %104

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @IN_LAZYACCESS, align 4
  %28 = load i32, i32* @IN_LAZYMOD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IN_MODIFIED, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 3
  %39 = load %struct.m_ext2fs*, %struct.m_ext2fs** %38, align 8
  store %struct.m_ext2fs* %39, %struct.m_ext2fs** %6, align 8
  %40 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %41 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %104

45:                                               ; preds = %26
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %50 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ino_to_fsba(%struct.m_ext2fs* %50, i32 %53)
  %55 = call i32 @fsbtodb(%struct.m_ext2fs* %49, i32 %54)
  %56 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %57 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @NOCRED, align 4
  %61 = call i32 @bread(i32 %48, i32 %55, i32 %59, i32 %60, %struct.buf** %7)
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load %struct.buf*, %struct.buf** %7, align 8
  %65 = call i32 @brelse(%struct.buf* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %104

67:                                               ; preds = %45
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load %struct.buf*, %struct.buf** %7, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %74 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %73)
  %75 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ino_to_fsbo(%struct.m_ext2fs* %75, i32 %78)
  %80 = mul nsw i32 %74, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %72, i64 %81
  %83 = bitcast i8* %82 to %struct.ext2fs_dinode*
  %84 = call i32 @ext2_i2ei(%struct.inode* %68, %struct.ext2fs_dinode* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %67
  %88 = load %struct.buf*, %struct.buf** %7, align 8
  %89 = call i32 @brelse(%struct.buf* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %104

91:                                               ; preds = %67
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = call i32 @DOINGASYNC(%struct.vnode* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load %struct.buf*, %struct.buf** %7, align 8
  %100 = call i32 @bwrite(%struct.buf* %99)
  store i32 %100, i32* %3, align 4
  br label %104

101:                                              ; preds = %94, %91
  %102 = load %struct.buf*, %struct.buf** %7, align 8
  %103 = call i32 @bdwrite(%struct.buf* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %101, %98, %87, %63, %44, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @ext2_itimes(%struct.vnode*) #1

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext2_i2ei(%struct.inode*, %struct.ext2fs_dinode*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @ino_to_fsbo(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
