; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_platform.c_numa_mem_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_platform.c_numa_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.numa_mem_region = type { i32, i64, i64 }
%struct.mem_affinity = type { i32, i64, i64 }

@nnumapregions = common dso_local global i32 0, align 4
@plat_obj = common dso_local global i32 0, align 4
@numa_pregions = common dso_local global %struct.numa_mem_region* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"unset value\0A\00", align 1
@mem_info = common dso_local global %struct.mem_affinity* null, align 8
@vm_locality_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @numa_mem_regions(%struct.numa_mem_region** %0, i32* %1) #0 {
  %3 = alloca %struct.numa_mem_region**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mem_affinity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.numa_mem_region** %0, %struct.numa_mem_region*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* @nnumapregions, align 4
  %11 = load i32, i32* @plat_obj, align 4
  %12 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %13 = call i32 @PLATFORM_NUMA_MEM_REGIONS(i32 %11, %struct.numa_mem_region* %12, i32* @nnumapregions)
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @nnumapregions, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.numa_mem_region**, %struct.numa_mem_region*** %3, align 8
  %21 = icmp ne %struct.numa_mem_region** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %24 = load %struct.numa_mem_region**, %struct.numa_mem_region*** %3, align 8
  store %struct.numa_mem_region* %23, %struct.numa_mem_region** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.numa_mem_region**, %struct.numa_mem_region*** %3, align 8
  %30 = icmp eq %struct.numa_mem_region** %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %150

33:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @nnumapregions, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %39, i64 %41
  %43 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %48, i64 %50
  %52 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %47, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load %struct.mem_affinity*, %struct.mem_affinity** @mem_info, align 8
  store %struct.mem_affinity* %59, %struct.mem_affinity** %5, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %96, %58
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @nnumapregions, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %60
  %65 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %65, i64 %67
  %69 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mem_affinity*, %struct.mem_affinity** %5, align 8
  %72 = getelementptr inbounds %struct.mem_affinity, %struct.mem_affinity* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %73, i64 %75
  %77 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %79, i64 %81
  %83 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %78, %84
  %86 = load %struct.mem_affinity*, %struct.mem_affinity** %5, align 8
  %87 = getelementptr inbounds %struct.mem_affinity, %struct.mem_affinity* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.numa_mem_region*, %struct.numa_mem_region** @numa_pregions, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %88, i64 %90
  %92 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mem_affinity*, %struct.mem_affinity** %5, align 8
  %95 = getelementptr inbounds %struct.mem_affinity, %struct.mem_affinity* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %64
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = load %struct.mem_affinity*, %struct.mem_affinity** %5, align 8
  %100 = getelementptr inbounds %struct.mem_affinity, %struct.mem_affinity* %99, i32 1
  store %struct.mem_affinity* %100, %struct.mem_affinity** %5, align 8
  br label %60

101:                                              ; preds = %60
  store i32 0, i32* %10, align 4
  %102 = load i32*, i32** @vm_locality_table, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 10, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %145

110:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %141, %110
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %137, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32*, i32** @vm_locality_table, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 10, i32* %128, align 4
  br label %134

129:                                              ; preds = %120
  %130 = load i32*, i32** @vm_locality_table, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 21, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %116

140:                                              ; preds = %116
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %111

144:                                              ; preds = %111
  br label %145

145:                                              ; preds = %144, %101
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.mem_affinity*, %struct.mem_affinity** @mem_info, align 8
  %148 = load i32*, i32** @vm_locality_table, align 8
  %149 = call i32 @vm_phys_register_domains(i32 %146, %struct.mem_affinity* %147, i32* %148)
  br label %150

150:                                              ; preds = %145, %31
  ret void
}

declare dso_local i32 @PLATFORM_NUMA_MEM_REGIONS(i32, %struct.numa_mem_region*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @vm_phys_register_domains(i32, %struct.mem_affinity*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
