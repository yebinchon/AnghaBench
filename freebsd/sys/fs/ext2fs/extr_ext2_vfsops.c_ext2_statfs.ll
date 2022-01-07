; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vfsops.c_ext2_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statfs = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.ext2mount = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32, i32, i32, i64 }

@E2FS_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"ext2_statfs\00", align 1
@E2FS_REV0 = common dso_local global i64 0, align 8
@EXT2F_ROCOMPAT_SPARSESUPER = common dso_local global i32 0, align 4
@EXT2F_COMPAT_RESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca %struct.ext2mount*, align 8
  %6 = alloca %struct.m_ext2fs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %12 = load %struct.mount*, %struct.mount** %3, align 8
  %13 = call %struct.ext2mount* @VFSTOEXT2(%struct.mount* %12)
  store %struct.ext2mount* %13, %struct.ext2mount** %5, align 8
  %14 = load %struct.ext2mount*, %struct.ext2mount** %5, align 8
  %15 = getelementptr inbounds %struct.ext2mount, %struct.ext2mount* %14, i32 0, i32 0
  %16 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  store %struct.m_ext2fs* %16, %struct.m_ext2fs** %6, align 8
  %17 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %18 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @E2FS_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %28 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 2, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %32 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %37 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %35, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %43 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @E2FS_REV0, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %26
  %50 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %51 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @EXT2F_ROCOMPAT_SPARSESUPER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %62 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @ext2_cg_has_sb(%struct.m_ext2fs* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %59

77:                                               ; preds = %59
  br label %82

78:                                               ; preds = %49, %26
  %79 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %80 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %77
  %83 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %84 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %9, align 4
  %86 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %87 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @E2FS_REV0, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %82
  %94 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %95 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EXT2F_COMPAT_RESIZE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %93
  %103 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %104 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %103, i32 0, i32 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %102, %93, %82
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 1, %114
  %116 = mul nsw i32 %113, %115
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %120 = call i32 @EXT2_FRAG_SIZE(%struct.m_ext2fs* %119)
  %121 = load %struct.statfs*, %struct.statfs** %4, align 8
  %122 = getelementptr inbounds %struct.statfs, %struct.statfs* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %124 = call i32 @EXT2_BLOCK_SIZE(%struct.m_ext2fs* %123)
  %125 = load %struct.statfs*, %struct.statfs** %4, align 8
  %126 = getelementptr inbounds %struct.statfs, %struct.statfs* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 8
  %127 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %128 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load %struct.statfs*, %struct.statfs** %4, align 8
  %133 = getelementptr inbounds %struct.statfs, %struct.statfs* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %135 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.statfs*, %struct.statfs** %4, align 8
  %138 = getelementptr inbounds %struct.statfs, %struct.statfs* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  %139 = load %struct.statfs*, %struct.statfs** %4, align 8
  %140 = getelementptr inbounds %struct.statfs, %struct.statfs* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %143 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = load %struct.statfs*, %struct.statfs** %4, align 8
  %147 = getelementptr inbounds %struct.statfs, %struct.statfs* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  %148 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %149 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %148, i32 0, i32 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.statfs*, %struct.statfs** %4, align 8
  %154 = getelementptr inbounds %struct.statfs, %struct.statfs* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %156 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %155, i32 0, i32 4
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.statfs*, %struct.statfs** %4, align 8
  %161 = getelementptr inbounds %struct.statfs, %struct.statfs* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  ret i32 0
}

declare dso_local %struct.ext2mount* @VFSTOEXT2(%struct.mount*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ext2_cg_has_sb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @EXT2_FRAG_SIZE(%struct.m_ext2fs*) #1

declare dso_local i32 @EXT2_BLOCK_SIZE(%struct.m_ext2fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
