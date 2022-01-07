; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_g_part_ldm_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_g_part_ldm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PART::scheme\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GPT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PART::type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ms-ldm-data\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i64 0, align 8
@NDOSPART = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@DOSPTYP_LDM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: LDM data partitions found in MBR\00", align 1
@ldm_ph_off = common dso_local global i32* null, align 8
@LDM_PH_MBRINDEX = common dso_local global i64 0, align 8
@G_PART_PROBE_PRI_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_ldm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ldm_probe(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [64 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %6, align 8
  %14 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 512
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %141

20:                                               ; preds = %2
  %21 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %22 = bitcast [64 x i64]* %8 to i64**
  %23 = call i32 @g_getattr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %21, i64** %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = getelementptr inbounds [64 x i64], [64 x i64]* %8, i64 0, i64 0
  %28 = call i64 @strcmp(i64* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %32 = bitcast [64 x i64]* %8 to i64**
  %33 = call i32 @g_getattr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.g_consumer* %31, i64** %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds [64 x i64], [64 x i64]* %8, i64 0, i64 0
  %37 = call i64 @strcmp(i64* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %30
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %3, align 4
  br label %141

41:                                               ; preds = %35
  %42 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %43 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %44 = call i32 @ldm_gpt_probe(%struct.g_part_table* %42, %struct.g_consumer* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %141

46:                                               ; preds = %26, %20
  %47 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %48 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %3, align 4
  br label %141

53:                                               ; preds = %46
  %54 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %55 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sle i32 %56, 1048576
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOSPC, align 4
  store i32 %59, i32* %3, align 4
  br label %141

60:                                               ; preds = %53
  %61 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %62 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %63 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64* @g_read_data(%struct.g_consumer* %61, i32 0, i32 %64, i32* %9)
  store i64* %65, i64** %7, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = icmp eq i64* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %141

70:                                               ; preds = %60
  %71 = load i64*, i64** %7, align 8
  %72 = load i32, i32* @DOSMAGICOFFSET, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = call i64 @le16dec(i64* %74)
  %76 = load i64, i64* @DOSMAGIC, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i64*, i64** %7, align 8
  %80 = call i32 @g_free(i64* %79)
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %3, align 4
  br label %141

82:                                               ; preds = %70
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %108, %82
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @NDOSPART, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i1 [ false, %84 ], [ %90, %88 ]
  br i1 %92, label %93, label %111

93:                                               ; preds = %91
  %94 = load i64*, i64** %7, align 8
  %95 = load i32, i32* @DOSPARTOFF, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @DOSPARTSIZE, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  %100 = add nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %94, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DOSPTYP_LDM, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %84

111:                                              ; preds = %91
  %112 = load i64*, i64** %7, align 8
  %113 = call i32 @g_free(i64* %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %111
  %117 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %118 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @LDM_DEBUG(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %122 = load i32*, i32** @ldm_ph_off, align 8
  %123 = load i64, i64* @LDM_PH_MBRINDEX, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %127 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = call i64* @ldm_privhdr_read(%struct.g_consumer* %121, i32 %129, i32* %9)
  store i64* %130, i64** %7, align 8
  %131 = load i64*, i64** %7, align 8
  %132 = icmp eq i64* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %116
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %141

135:                                              ; preds = %116
  %136 = load i64*, i64** %7, align 8
  %137 = call i32 @g_free(i64* %136)
  %138 = load i32, i32* @G_PART_PROBE_PRI_HIGH, align 4
  store i32 %138, i32* %3, align 4
  br label %141

139:                                              ; preds = %111
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %135, %133, %78, %68, %58, %51, %41, %39, %18
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @g_getattr(i8*, %struct.g_consumer*, i64**) #1

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local i32 @ldm_gpt_probe(%struct.g_part_table*, %struct.g_consumer*) #1

declare dso_local i64* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i64 @le16dec(i64*) #1

declare dso_local i32 @g_free(i64*) #1

declare dso_local i32 @LDM_DEBUG(i32, i8*, i32) #1

declare dso_local i64* @ldm_privhdr_read(%struct.g_consumer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
