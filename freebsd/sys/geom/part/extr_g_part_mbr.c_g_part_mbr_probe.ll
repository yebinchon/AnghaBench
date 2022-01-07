; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.g_part_table = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }

@MBRSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PART::scheme\00", align 1
@g_part_mbr_scheme = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ELOOP = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i64 0, align 8
@NDOSPART = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@G_PART_PROBE_PRI_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_mbr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_mbr_probe(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %15 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.g_provider*, %struct.g_provider** %16, align 8
  store %struct.g_provider* %17, %struct.g_provider** %7, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MBRSIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23, %2
  %32 = load i32, i32* @ENOSPC, align 4
  store i32 %32, i32* %3, align 4
  br label %138

33:                                               ; preds = %23
  %34 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 4096
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %3, align 4
  br label %138

40:                                               ; preds = %33
  %41 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %42 = bitcast [8 x i8]* %6 to i8**
  %43 = call i32 @g_getattr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %41, i8** %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_part_mbr_scheme, i32 0, i32 0), align 4
  %49 = call i64 @strcmp(i8* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @ELOOP, align 4
  store i32 %52, i32* %3, align 4
  br label %138

53:                                               ; preds = %46, %40
  %54 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %55 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %56 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @g_read_data(%struct.g_consumer* %54, i64 0, i32 %57, i32* %10)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %138

63:                                               ; preds = %53
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @DOSMAGICOFFSET, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i64 @le16dec(i32* %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* @DOSMAGIC, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %134

74:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %100, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @NDOSPART, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* @DOSPARTOFF, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @DOSPARTSIZE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 128
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %134

99:                                               ; preds = %93, %79
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %75

103:                                              ; preds = %75
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %120, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @NDOSPART, align 4
  %107 = load i32, i32* @DOSPARTSIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* @DOSPARTOFF, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %104

123:                                              ; preds = %104
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 11
  %129 = call i32 @mbr_probe_bpb(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126, %123
  %132 = load i32, i32* @G_PART_PROBE_PRI_NORM, align 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %131, %126
  br label %134

134:                                              ; preds = %133, %98, %73
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @g_free(i32* %135)
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %61, %51, %38, %31
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @g_getattr(i8*, %struct.g_consumer*, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i32, i32*) #1

declare dso_local i64 @le16dec(i32*) #1

declare dso_local i32 @mbr_probe_bpb(i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
