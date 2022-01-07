; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_zero_inode_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_zero_inode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.buf = type { i32 }

@EXT2_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ext2_zero_inode_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_zero_inode_table(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_ext2fs*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  store %struct.m_ext2fs* %13, %struct.m_ext2fs** %6, align 8
  %14 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %15 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EXT2_BG_INODE_ZEROED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

26:                                               ; preds = %2
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %28 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %33 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %31, %36
  %38 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %39 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %43 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %49 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = call i64 @e2fs_gd_get_i_unused(%struct.TYPE_5__* %53)
  %55 = sub nsw i64 %47, %54
  %56 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %57 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %60 = call i32 @EXT2_INODE_SIZE(%struct.m_ext2fs* %59)
  %61 = sdiv i32 %58, %60
  %62 = call i32 @howmany(i64 %55, i32 %61)
  store i32 %62, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %104, %26
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %63
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %74 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %75 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = call i64 @e2fs_gd_get_i_tables(%struct.TYPE_5__* %79)
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i32 @fsbtodb(%struct.m_ext2fs* %73, i64 %86)
  %88 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %89 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.buf* @getblk(i32 %72, i32 %87, i32 %90, i32 0, i32 0, i32 0)
  store %struct.buf* %91, %struct.buf** %7, align 8
  %92 = load %struct.buf*, %struct.buf** %7, align 8
  %93 = icmp ne %struct.buf* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %69
  %95 = load i32, i32* @EIO, align 4
  store i32 %95, i32* %3, align 4
  br label %118

96:                                               ; preds = %69
  %97 = load %struct.buf*, %struct.buf** %7, align 8
  %98 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %99 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @vfs_bio_bzero_buf(%struct.buf* %97, i32 0, i32 %100)
  %102 = load %struct.buf*, %struct.buf** %7, align 8
  %103 = call i32 @bawrite(%struct.buf* %102)
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %63

107:                                              ; preds = %63
  %108 = load i32, i32* @EXT2_BG_INODE_ZEROED, align 4
  %109 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %110 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %108
  store i32 %117, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %107, %94, %25
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @howmany(i64, i32) #1

declare dso_local i64 @e2fs_gd_get_i_unused(%struct.TYPE_5__*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.m_ext2fs*) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i64) #1

declare dso_local i64 @e2fs_gd_get_i_tables(%struct.TYPE_5__*) #1

declare dso_local i32 @vfs_bio_bzero_buf(%struct.buf*, i32, i32) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
