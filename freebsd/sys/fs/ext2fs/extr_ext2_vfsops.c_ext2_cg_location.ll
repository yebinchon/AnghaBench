; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_cg_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_cg_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SBSIZE = common dso_local global i32 0, align 4
@EXT2F_INCOMPAT_META_BG = common dso_local global i32 0, align 4
@EXT2F_INCOMPAT_64BIT = common dso_local global i32 0, align 4
@E2FS_REV0_GD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_ext2fs*, i32)* @ext2_cg_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_cg_location(%struct.m_ext2fs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %11 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SBSIZE, align 4
  %14 = icmp sgt i32 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  store i32 %16, i32* %8, align 4
  %17 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %18 = load i32, i32* @EXT2F_INCOMPAT_META_BG, align 4
  %19 = call i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %24 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21, %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %75

34:                                               ; preds = %21
  %35 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %36 = load i32, i32* @EXT2F_INCOMPAT_64BIT, align 4
  %37 = call i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %41 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  br label %52

46:                                               ; preds = %34
  %47 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %48 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @E2FS_REV0_GD_SIZE, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46, %39
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @ext2_cg_has_sb(%struct.m_ext2fs* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %65 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.m_ext2fs* %64)
  %66 = trunc i64 %65 to i32
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %62, %67
  %69 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %70 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %68, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %61, %29
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @ext2_cg_has_sb(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @EXT2_BLOCKS_PER_GROUP(%struct.m_ext2fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
