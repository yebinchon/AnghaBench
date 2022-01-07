; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_sbupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_sbupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2mount = type { i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32, i32, i32, %struct.ext2fs* }
%struct.ext2fs = type { i32, i32, i32, i32, i32, i32 }
%struct.buf = type { i32 }

@EXT2F_INCOMPAT_64BIT = common dso_local global i32 0, align 4
@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@SBLOCK = common dso_local global i32 0, align 4
@SBSIZE = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2mount*, i32)* @ext2_sbupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_sbupdate(%struct.ext2mount* %0, i32 %1) #0 {
  %3 = alloca %struct.ext2mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca %struct.ext2fs*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  store %struct.ext2mount* %0, %struct.ext2mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ext2mount*, %struct.ext2mount** %3, align 8
  %10 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %9, i32 0, i32 1
  %11 = load %struct.m_ext2fs*, %struct.m_ext2fs** %10, align 8
  store %struct.m_ext2fs* %11, %struct.m_ext2fs** %5, align 8
  %12 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %13 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %12, i32 0, i32 3
  %14 = load %struct.ext2fs*, %struct.ext2fs** %13, align 8
  store %struct.ext2fs* %14, %struct.ext2fs** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %16 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %19 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %21 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %24 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %26 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %29 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %31 = load i32, i32* @EXT2F_INCOMPAT_64BIT, align 4
  %32 = call i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %36 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 32
  %39 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %40 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %42 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 32
  %45 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %46 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %48 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 32
  %51 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %52 = getelementptr inbounds %struct.ext2fs, %struct.ext2fs* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %34, %2
  %54 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %55 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %56 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %60 = call i32 @ext2_sb_csum_set(%struct.m_ext2fs* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.ext2mount*, %struct.ext2mount** %3, align 8
  %63 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SBLOCK, align 4
  %66 = load i32, i32* @SBSIZE, align 4
  %67 = call %struct.buf* @getblk(i32 %64, i32 %65, i32 %66, i32 0, i32 0, i32 0)
  store %struct.buf* %67, %struct.buf** %7, align 8
  %68 = load %struct.ext2fs*, %struct.ext2fs** %6, align 8
  %69 = ptrtoint %struct.ext2fs* %68 to i32
  %70 = load %struct.buf*, %struct.buf** %7, align 8
  %71 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bcopy(i32 %69, i32 %72, i32 24)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @MNT_WAIT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %61
  %78 = load %struct.buf*, %struct.buf** %7, align 8
  %79 = call i32 @bwrite(%struct.buf* %78)
  store i32 %79, i32* %8, align 4
  br label %83

80:                                               ; preds = %61
  %81 = load %struct.buf*, %struct.buf** %7, align 8
  %82 = call i32 @bawrite(%struct.buf* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_sb_csum_set(%struct.m_ext2fs*) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
