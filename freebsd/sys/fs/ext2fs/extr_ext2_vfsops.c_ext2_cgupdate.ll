; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_cgupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_cgupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2mount = type { i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32, i32, i32, i32* }
%struct.buf = type { i64 }

@EXT2F_ROCOMPAT_GDT_CSUM = common dso_local global i32 0, align 4
@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@EXT2F_INCOMPAT_64BIT = common dso_local global i32 0, align 4
@E2FS_REV0_GD_SIZE = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_cgupdate(%struct.ext2mount* %0, i32 %1) #0 {
  %3 = alloca %struct.ext2mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ext2mount* %0, %struct.ext2mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ext2mount*, %struct.ext2mount** %3, align 8
  %13 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %12, i32 0, i32 1
  %14 = load %struct.m_ext2fs*, %struct.m_ext2fs** %13, align 8
  store %struct.m_ext2fs* %14, %struct.m_ext2fs** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.ext2mount*, %struct.ext2mount** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ext2_sbupdate(%struct.ext2mount* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %19 = load i32, i32* @EXT2F_ROCOMPAT_GDT_CSUM, align 4
  %20 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %24 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %25 = call i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %2
  %28 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %29 = call i32 @ext2_gd_csum_set(%struct.m_ext2fs* %28)
  br label %30

30:                                               ; preds = %27, %22
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %124, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %34 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %127

37:                                               ; preds = %31
  %38 = load %struct.ext2mount*, %struct.ext2mount** %3, align 8
  %39 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %42 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ext2_cg_location(%struct.m_ext2fs* %42, i32 %43)
  %45 = call i32 @fsbtodb(%struct.m_ext2fs* %41, i32 %44)
  %46 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %47 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.buf* @getblk(i32 %40, i32 %45, i32 %48, i32 0, i32 0, i32 0)
  store %struct.buf* %49, %struct.buf** %6, align 8
  %50 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %51 = load i32, i32* @EXT2F_INCOMPAT_64BIT, align 4
  %52 = call i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %37
  %55 = load %struct.buf*, %struct.buf** %6, align 8
  %56 = getelementptr inbounds %struct.buf, %struct.buf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %59 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %63 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 4
  %68 = getelementptr inbounds i32, i32* %60, i64 %67
  %69 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %70 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i64 %57, i32* %68, i32 %71)
  br label %113

73:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %107, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %77 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @E2FS_REV0_GD_SIZE, align 4
  %80 = sdiv i32 %78, %79
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %85 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br label %88

88:                                               ; preds = %82, %74
  %89 = phi i1 [ false, %74 ], [ %87, %82 ]
  br i1 %89, label %90, label %112

90:                                               ; preds = %88
  %91 = load %struct.buf*, %struct.buf** %6, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @E2FS_REV0_GD_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %93, %97
  %99 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %100 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* @E2FS_REV0_GD_SIZE, align 4
  %106 = call i32 @memcpy(i64 %98, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %90
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %74

112:                                              ; preds = %88
  br label %113

113:                                              ; preds = %112, %54
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @MNT_WAIT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.buf*, %struct.buf** %6, align 8
  %119 = call i32 @bwrite(%struct.buf* %118)
  store i32 %119, i32* %10, align 4
  br label %123

120:                                              ; preds = %113
  %121 = load %struct.buf*, %struct.buf** %6, align 8
  %122 = call i32 @bawrite(%struct.buf* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %31

127:                                              ; preds = %31
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %133, %130, %127
  %136 = load i32, i32* %11, align 4
  ret i32 %136
}

declare dso_local i32 @ext2_sbupdate(%struct.ext2mount*, i32) #1

declare dso_local i64 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_gd_csum_set(%struct.m_ext2fs*) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_cg_location(%struct.m_ext2fs*, i32) #1

declare dso_local i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
