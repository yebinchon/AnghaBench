; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_ufs.c_g_label_ufs_taste_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_ufs.c_g_label_ufs_taste_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.fs = type { i64, i64, i8*, i32*, %struct.fs* }

@SBLOCKSIZE = common dso_local global i32 0, align 4
@STDSB_NOHASHFAIL = common dso_local global i32 0, align 4
@M_GEOM = common dso_local global i32 0, align 4
@g_use_g_read_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"g_label_ufs_taste_common: non-NULL fs %p\0A\00", align 1
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@fs_old_size = common dso_local global i32 0, align 4
@fs_providersize = common dso_local global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@fs_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s file system detected on %s.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"UFS1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UFS2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*, i8*, i64, i32)* @g_label_ufs_taste_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_label_ufs_taste_common(%struct.g_consumer* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.g_provider*, align 8
  %10 = alloca %struct.fs*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @g_topology_assert_not()
  %12 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %13 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %12, i32 0, i32 0
  %14 = load %struct.g_provider*, %struct.g_provider** %13, align 8
  store %struct.g_provider* %14, %struct.g_provider** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  store %struct.fs* null, %struct.fs** %10, align 8
  %17 = load i32, i32* @SBLOCKSIZE, align 4
  %18 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %25 = load i32, i32* @STDSB_NOHASHFAIL, align 4
  %26 = load i32, i32* @M_GEOM, align 4
  %27 = load i32, i32* @g_use_g_read_data, align 4
  %28 = call i64 @ffs_sbget(%struct.g_consumer* %24, %struct.fs** %10, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23, %4
  %31 = load %struct.fs*, %struct.fs** %10, align 8
  %32 = icmp eq %struct.fs* %31, null
  %33 = zext i1 %32 to i32
  %34 = load %struct.fs*, %struct.fs** %10, align 8
  %35 = bitcast %struct.fs* %34 to i8*
  %36 = call i32 @KASSERT(i32 %33, i8* %35)
  br label %153

37:                                               ; preds = %23
  %38 = load %struct.fs*, %struct.fs** %10, align 8
  %39 = getelementptr inbounds %struct.fs, %struct.fs* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.fs*, %struct.fs** %10, align 8
  %45 = getelementptr inbounds %struct.fs, %struct.fs* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %50 = load %struct.fs*, %struct.fs** %10, align 8
  %51 = load i32, i32* @fs_old_size, align 4
  %52 = call i64 @G_LABEL_UFS_CMP(%struct.g_provider* %49, %struct.fs* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %56 = load %struct.fs*, %struct.fs** %10, align 8
  %57 = load i32, i32* @fs_providersize, align 4
  %58 = call i64 @G_LABEL_UFS_CMP(%struct.g_provider* %55, %struct.fs* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %48
  br label %87

61:                                               ; preds = %54, %43, %37
  %62 = load %struct.fs*, %struct.fs** %10, align 8
  %63 = getelementptr inbounds %struct.fs, %struct.fs* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.fs*, %struct.fs** %10, align 8
  %69 = getelementptr inbounds %struct.fs, %struct.fs* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %74 = load %struct.fs*, %struct.fs** %10, align 8
  %75 = load i32, i32* @fs_size, align 4
  %76 = call i64 @G_LABEL_UFS_CMP(%struct.g_provider* %73, %struct.fs* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %80 = load %struct.fs*, %struct.fs** %10, align 8
  %81 = load i32, i32* @fs_providersize, align 4
  %82 = call i64 @G_LABEL_UFS_CMP(%struct.g_provider* %79, %struct.fs* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %72
  br label %86

85:                                               ; preds = %78, %67, %61
  br label %146

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86, %60
  %88 = load %struct.fs*, %struct.fs** %10, align 8
  %89 = getelementptr inbounds %struct.fs, %struct.fs* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %95 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %96 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %94, i32 %97)
  %99 = load i32, i32* %8, align 4
  switch i32 %99, label %145 [
    i32 128, label %100
    i32 129, label %116
  ]

100:                                              ; preds = %87
  %101 = load %struct.fs*, %struct.fs** %10, align 8
  %102 = getelementptr inbounds %struct.fs, %struct.fs* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.fs*, %struct.fs** %10, align 8
  %111 = getelementptr inbounds %struct.fs, %struct.fs* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @strlcpy(i8* %109, i8* %112, i64 %113)
  br label %115

115:                                              ; preds = %108, %100
  br label %145

116:                                              ; preds = %87
  %117 = load %struct.fs*, %struct.fs** %10, align 8
  %118 = getelementptr inbounds %struct.fs, %struct.fs* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load %struct.fs*, %struct.fs** %10, align 8
  %125 = getelementptr inbounds %struct.fs, %struct.fs* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123, %116
  %131 = load i8*, i8** %6, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.fs*, %struct.fs** %10, align 8
  %134 = getelementptr inbounds %struct.fs, %struct.fs* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fs*, %struct.fs** %10, align 8
  %139 = getelementptr inbounds %struct.fs, %struct.fs* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @snprintf(i8* %131, i64 %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %142)
  br label %144

144:                                              ; preds = %130, %123
  br label %145

145:                                              ; preds = %87, %144, %115
  br label %146

146:                                              ; preds = %145, %85
  %147 = load %struct.fs*, %struct.fs** %10, align 8
  %148 = getelementptr inbounds %struct.fs, %struct.fs* %147, i32 0, i32 4
  %149 = load %struct.fs*, %struct.fs** %148, align 8
  %150 = call i32 @g_free(%struct.fs* %149)
  %151 = load %struct.fs*, %struct.fs** %10, align 8
  %152 = call i32 @g_free(%struct.fs* %151)
  br label %153

153:                                              ; preds = %146, %30
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i64 @ffs_sbget(%struct.g_consumer*, %struct.fs**, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @G_LABEL_UFS_CMP(%struct.g_provider*, %struct.fs*, i32) #1

declare dso_local i32 @G_LABEL_DEBUG(i32, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @g_free(%struct.fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
