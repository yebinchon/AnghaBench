; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_gd_i_bitmap_csum_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_gd_i_bitmap_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.buf = type { i32 }

@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@EXT2_BG_INODE_BITMAP_CSUM_HI_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_gd_i_bitmap_csum_set(%struct.m_ext2fs* %0, i32 %1, %struct.buf* %2) #0 {
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buf* %2, %struct.buf** %6, align 8
  %8 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %9 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %10 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %53

13:                                               ; preds = %3
  %14 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %15 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.buf*, %struct.buf** %6, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %21 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 8
  %26 = call i32 @calculate_crc32c(i32 %16, i32 %19, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 65535
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %30 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 4
  %36 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %37 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXT2_BG_INODE_BITMAP_CSUM_HI_END, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %13
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 16
  %46 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %47 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %12, %43, %13
  ret void
}

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @calculate_crc32c(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
