; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_blkpref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_blkpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2_blkpref(%struct.inode* %0, i64 %1, i32 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.m_ext2fs*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 4
  %16 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  store %struct.m_ext2fs* %16, %struct.m_ext2fs** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @EXT2_MTX(i32 %19)
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @mtx_assert(i32 %20, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %85

37:                                               ; preds = %28, %5
  %38 = load i64*, i64** %10, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %60, %40
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i64*, i64** %10, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i64*, i64** %10, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  br label %85

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %13, align 4
  br label %43

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64, i64* %11, align 8
  br label %83

69:                                               ; preds = %64
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %74 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.m_ext2fs* %73)
  %75 = mul nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  %78 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %76, %81
  br label %83

83:                                               ; preds = %69, %67
  %84 = phi i64 [ %68, %67 ], [ %82, %69 ]
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %83, %53, %33
  %86 = load i64, i64* %6, align 8
  ret i64 %86
}

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @EXT2_MTX(i32) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(%struct.m_ext2fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
