; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_platform_ps3.c_ps3_mem_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_platform_ps3.c_ps3_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bi\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rgntotal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps3_mem_regions(i32 %0, %struct.mem_region* %1, i32* %2, %struct.mem_region* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_region*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mem_region*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.mem_region* %1, %struct.mem_region** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mem_region* %3, %struct.mem_region** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @ofw_mem_regions(%struct.mem_region* %17, i32* %18, %struct.mem_region* %19, i32* %20)
  br label %39

22:                                               ; preds = %5
  %23 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %24 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %23, i64 0
  %25 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ps3_real_maxaddr(i32 %26)
  %28 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %29 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %28, i64 0
  %30 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32*, i32** %10, align 8
  store i32 1, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 1, i32* %32, align 4
  %33 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %34 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %33, i64 0
  %35 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %36 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %35, i64 0
  %37 = bitcast %struct.mem_region* %34 to i8*
  %38 = bitcast %struct.mem_region* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  br label %39

39:                                               ; preds = %22, %16
  %40 = call i32 @lv1_get_logical_partition_id(i32* %11)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = ashr i32 %42, 32
  %44 = call i32 @lv1_repository_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %45, i64 %48
  %50 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %49, i32 0, i32 0
  %51 = call i32 @lv1_get_repository_node_value(i32 %41, i32 %43, i32 %44, i32 0, i32 0, i32* %50, i32* %12)
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %72, %39
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %58, i64 %60
  %62 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %64, i64 %67
  %69 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, %63
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %52

75:                                               ; preds = %52
  %76 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %76, i64 %79
  %81 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = srem i32 %82, 16777216
  %84 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %84, i64 %87
  %89 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, %83
  store i32 %91, i32* %89, align 8
  %92 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %92, i64 %95
  %97 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %99, i64 %102
  %104 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %103, i32 0, i32 1
  %105 = call i32 @lv1_allocate_memory(i32 %98, i32 24, i32 0, i32 4, i64* %104, i32* %12)
  %106 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %106, i64 %109
  %111 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %111, i64 %114
  %116 = bitcast %struct.mem_region* %110 to i8*
  %117 = bitcast %struct.mem_region* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 16, i1 false)
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  ret void
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @ofw_mem_regions(%struct.mem_region*, i32*, %struct.mem_region*, i32*) #1

declare dso_local i32 @ps3_real_maxaddr(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lv1_get_logical_partition_id(i32*) #1

declare dso_local i32 @lv1_get_repository_node_value(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lv1_repository_string(i8*) #1

declare dso_local i32 @lv1_allocate_memory(i32, i32, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
