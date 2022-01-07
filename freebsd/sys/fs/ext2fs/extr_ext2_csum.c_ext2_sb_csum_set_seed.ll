; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_sb_csum_set_seed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_sb_csum_set_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@EXT2F_INCOMPAT_CSUM_SEED = common dso_local global i32 0, align 4
@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_sb_csum_set_seed(%struct.m_ext2fs* %0) #0 {
  %2 = alloca %struct.m_ext2fs*, align 8
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %2, align 8
  %3 = load %struct.m_ext2fs*, %struct.m_ext2fs** %2, align 8
  %4 = load i32, i32* @EXT2F_INCOMPAT_CSUM_SEED, align 4
  %5 = call i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.m_ext2fs*, %struct.m_ext2fs** %2, align 8
  %9 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %2, align 8
  %14 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.m_ext2fs*, %struct.m_ext2fs** %2, align 8
  %17 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %18 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.m_ext2fs*, %struct.m_ext2fs** %2, align 8
  %22 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @calculate_crc32c(i32 -1, i32 %25, i32 4)
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %2, align 8
  %28 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %32

29:                                               ; preds = %15
  %30 = load %struct.m_ext2fs*, %struct.m_ext2fs** %2, align 8
  %31 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %20
  br label %33

33:                                               ; preds = %32, %7
  ret void
}

declare dso_local i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @calculate_crc32c(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
