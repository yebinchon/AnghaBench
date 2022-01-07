; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }

@allow_nesting = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MBRSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i32 0, align 4
@G_PART_PROBE_PRI_LOW = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i32 0, align 4
@NDOSPART = common dso_local global i32 0, align 4
@DOSPARTOFF = common dso_local global i32 0, align 4
@DOSPARTSIZE = common dso_local global i32 0, align 4
@G_PART_PROBE_PRI_HIGH = common dso_local global i32 0, align 4
@GPT_HDR_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_gpt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_gpt_probe(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %12 = load i32, i32* @allow_nesting, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %16 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %146

21:                                               ; preds = %14, %2
  %22 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 0
  %24 = load %struct.g_provider*, %struct.g_provider** %23, align 8
  store %struct.g_provider* %24, %struct.g_provider** %6, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MBRSIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %21
  %31 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %32 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 6, %36
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30, %21
  %40 = load i32, i32* @ENOSPC, align 4
  store i32 %40, i32* %3, align 4
  br label %146

41:                                               ; preds = %30
  %42 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %43 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %44 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @g_read_data(%struct.g_consumer* %42, i64 0, i32 %45, i32* %8)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %146

51:                                               ; preds = %41
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @DOSMAGICOFFSET, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @le16dec(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @G_PART_PROBE_PRI_LOW, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @DOSMAGIC, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %81, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @NDOSPART, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @DOSPARTOFF, align 4
  %69 = load i32, i32* @DOSPARTSIZE, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  %73 = add nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %67, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 238
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* @G_PART_PROBE_PRI_HIGH, align 4
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %78, %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %62

84:                                               ; preds = %62
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @g_free(i32* %85)
  %87 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %88 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %89 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %93 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @g_read_data(%struct.g_consumer* %87, i64 %91, i32 %94, i32* %8)
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %146

100:                                              ; preds = %84
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* @GPT_HDR_SIG, align 4
  %103 = call i32 @memcmp(i32* %101, i32 %102, i32 8)
  store i32 %103, i32* %11, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @g_free(i32* %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %146

110:                                              ; preds = %100
  br label %114

111:                                              ; preds = %51
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @g_free(i32* %112)
  br label %114

114:                                              ; preds = %111, %110
  %115 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %116 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %117 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %120 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %125 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32* @g_read_data(%struct.g_consumer* %115, i64 %123, i32 %126, i32* %8)
  store i32* %127, i32** %7, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %114
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %146

132:                                              ; preds = %114
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @GPT_HDR_SIG, align 4
  %135 = call i32 @memcmp(i32* %133, i32 %134, i32 8)
  store i32 %135, i32* %11, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @g_free(i32* %136)
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %10, align 4
  br label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @ENXIO, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %130, %108, %98, %49, %39, %19
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i32, i32*) #1

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
