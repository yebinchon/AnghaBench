; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }

@EBRSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PART::scheme\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MBR\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PART::type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ebr\00", align 1
@DOSMAGICOFFSET = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i64 0, align 8
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@G_PART_PROBE_PRI_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_ebr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ebr_probe(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %14 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %15 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %14, i32 0, i32 0
  %16 = load %struct.g_provider*, %struct.g_provider** %15, align 8
  store %struct.g_provider* %16, %struct.g_provider** %7, align 8
  %17 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EBRSIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %2
  %31 = load i32, i32* @ENOSPC, align 4
  store i32 %31, i32* %3, align 4
  br label %129

32:                                               ; preds = %22
  %33 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 4096
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %3, align 4
  br label %129

39:                                               ; preds = %32
  %40 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %41 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %3, align 4
  br label %129

46:                                               ; preds = %39
  %47 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %48 = bitcast [64 x i8]* %6 to i8**
  %49 = call i32 @g_getattr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %47, i8** %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %129

54:                                               ; preds = %46
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %3, align 4
  br label %129

60:                                               ; preds = %54
  %61 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %62 = bitcast [64 x i8]* %6 to i8**
  %63 = call i32 @g_getattr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.g_consumer* %61, i8** %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %129

68:                                               ; preds = %60
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %3, align 4
  br label %129

74:                                               ; preds = %68
  %75 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %76 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %77 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @g_read_data(%struct.g_consumer* %75, i64 0, i32 %78, i32* %10)
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %129

84:                                               ; preds = %74
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @DOSMAGICOFFSET, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i64 @le16dec(i32* %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @DOSMAGIC, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %125

95:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @DOSPARTOFF, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @DOSPARTSIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32* %108, i32** %9, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %99
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 128
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %125

119:                                              ; preds = %113, %99
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %96

123:                                              ; preds = %96
  %124 = load i32, i32* @G_PART_PROBE_PRI_NORM, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %123, %118, %94
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @g_free(i32* %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %82, %72, %66, %58, %52, %44, %37, %30
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @g_getattr(i8*, %struct.g_consumer*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i32, i32*) #1

declare dso_local i64 @le16dec(i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
