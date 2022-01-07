; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.m_ext2fs*, i32, i32 }
%struct.m_ext2fs = type { i32 }
%struct.buf = type { i64, i64 }
%struct.ext2fs_extattr_header = type { i64, i32, i32 }

@NOCRED = common dso_local global i32 0, align 4
@EXTATTR_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_extattr_free(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca %struct.ext2fs_extattr_header*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  %10 = load %struct.m_ext2fs*, %struct.m_ext2fs** %9, align 8
  store %struct.m_ext2fs* %10, %struct.m_ext2fs** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fsbtodb(%struct.m_ext2fs* %20, i32 %23)
  %25 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %26 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NOCRED, align 4
  %29 = call i32 @bread(i32 %19, i32 %24, i32 %27, i32 %28, %struct.buf** %5)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %112

34:                                               ; preds = %16
  %35 = load %struct.buf*, %struct.buf** %5, align 8
  %36 = call %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf* %35)
  store %struct.ext2fs_extattr_header* %36, %struct.ext2fs_extattr_header** %6, align 8
  %37 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %38 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EXTATTR_MAGIC, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %44 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %34
  %48 = load %struct.buf*, %struct.buf** %5, align 8
  %49 = call i32 @brelse(%struct.buf* %48)
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %2, align 4
  br label %112

51:                                               ; preds = %42
  %52 = load %struct.buf*, %struct.buf** %5, align 8
  %53 = call i32 @EXT2_FIRST_ENTRY(%struct.buf* %52)
  %54 = load %struct.buf*, %struct.buf** %5, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.buf*, %struct.buf** %5, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 @ext2_extattr_check(i32 %53, i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.buf*, %struct.buf** %5, align 8
  %66 = call i32 @brelse(%struct.buf* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %112

68:                                               ; preds = %51
  %69 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %70 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %6, align 8
  %75 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.buf*, %struct.buf** %5, align 8
  %79 = call i32 @bwrite(%struct.buf* %78)
  br label %93

80:                                               ; preds = %68
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  %87 = load %struct.m_ext2fs*, %struct.m_ext2fs** %86, align 8
  %88 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ext2_blkfree(%struct.inode* %81, i32 %84, i32 %89)
  %91 = load %struct.buf*, %struct.buf** %5, align 8
  %92 = call i32 @brelse(%struct.buf* %91)
  br label %93

93:                                               ; preds = %80, %73
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  %96 = load %struct.m_ext2fs*, %struct.m_ext2fs** %95, align 8
  %97 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @btodb(i32 %98)
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ext2_update(i32 %110, i32 1)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %93, %64, %47, %32, %15
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local %struct.ext2fs_extattr_header* @EXT2_HDR(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext2_extattr_check(i32, i64) #1

declare dso_local i32 @EXT2_FIRST_ENTRY(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @ext2_blkfree(%struct.inode*, i32, i32) #1

declare dso_local i64 @btodb(i32) #1

declare dso_local i32 @ext2_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
