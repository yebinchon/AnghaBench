; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_platform.c_mem_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_platform.c_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64 }

@npregions = common dso_local global i32 0, align 4
@plat_obj = common dso_local global i32 0, align 4
@pregions = common dso_local global %struct.mem_region* null, align 8
@aregions = common dso_local global %struct.mem_region* null, align 8
@naregions = common dso_local global i32 0, align 4
@mr_cmp = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_regions(%struct.mem_region** %0, i32* %1, %struct.mem_region** %2, i32* %3) #0 {
  %5 = alloca %struct.mem_region**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mem_region**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_region** %0, %struct.mem_region*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mem_region** %2, %struct.mem_region*** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @npregions, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %138

14:                                               ; preds = %4
  %15 = load i32, i32* @plat_obj, align 4
  %16 = load %struct.mem_region*, %struct.mem_region** @pregions, align 8
  %17 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %18 = call i32 @PLATFORM_MEM_REGIONS(i32 %15, %struct.mem_region* %16, i32* @npregions, %struct.mem_region* %17, i32* @naregions)
  %19 = load %struct.mem_region*, %struct.mem_region** @pregions, align 8
  %20 = load i32, i32* @npregions, align 4
  %21 = load i32, i32* @mr_cmp, align 4
  %22 = call i32 @qsort(%struct.mem_region* %19, i32 %20, i32 8, i32 %21)
  %23 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %24 = load i32, i32* @naregions, align 4
  %25 = load i32, i32* @mr_cmp, align 4
  %26 = call i32 @qsort(%struct.mem_region* %23, i32 %24, i32 8, i32 %25)
  br label %27

27:                                               ; preds = %94, %14
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %90, %27
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @naregions, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  %34 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %34, i64 %36
  %38 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %90

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %86, %42
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @naregions, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  %50 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %50, i64 %52
  %54 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %86

58:                                               ; preds = %49
  %59 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %59, i64 %61
  %63 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %63, i64 %65
  %67 = call i32 @memr_overlap(%struct.mem_region* %62, %struct.mem_region* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %86

70:                                               ; preds = %58
  %71 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %71, i64 %73
  %75 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %75, i64 %77
  %79 = call i32 @memr_merge(%struct.mem_region* %74, %struct.mem_region* %78)
  %80 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %80, i64 %82
  %84 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %70, %69, %57
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %45

89:                                               ; preds = %45
  br label %90

90:                                               ; preds = %89, %41
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %29

93:                                               ; preds = %29
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %27, label %98

98:                                               ; preds = %94
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %134, %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @naregions, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %99
  %104 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %104, i64 %106
  %108 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %103
  %112 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %112, i64 %114
  %116 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %116, i64 %119
  %121 = load i32, i32* @naregions, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memcpy(%struct.mem_region* %115, %struct.mem_region* %120, i32 %127)
  %129 = load i32, i32* @naregions, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* @naregions, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %111, %103
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %99

137:                                              ; preds = %99
  br label %138

138:                                              ; preds = %137, %4
  %139 = load %struct.mem_region**, %struct.mem_region*** %5, align 8
  %140 = icmp ne %struct.mem_region** %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.mem_region*, %struct.mem_region** @pregions, align 8
  %143 = load %struct.mem_region**, %struct.mem_region*** %5, align 8
  store %struct.mem_region* %142, %struct.mem_region** %143, align 8
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.mem_region**, %struct.mem_region*** %7, align 8
  %146 = icmp ne %struct.mem_region** %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.mem_region*, %struct.mem_region** @aregions, align 8
  %149 = load %struct.mem_region**, %struct.mem_region*** %7, align 8
  store %struct.mem_region* %148, %struct.mem_region** %149, align 8
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32*, i32** %6, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @npregions, align 4
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32*, i32** %8, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @naregions, align 4
  %161 = load i32*, i32** %8, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %156
  ret void
}

declare dso_local i32 @PLATFORM_MEM_REGIONS(i32, %struct.mem_region*, i32*, %struct.mem_region*, i32*) #1

declare dso_local i32 @qsort(%struct.mem_region*, i32, i32, i32) #1

declare dso_local i32 @memr_overlap(%struct.mem_region*, %struct.mem_region*) #1

declare dso_local i32 @memr_merge(%struct.mem_region*, %struct.mem_region*) #1

declare dso_local i32 @memcpy(%struct.mem_region*, %struct.mem_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
