; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_map_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_map_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_map_request = type { i64, i64, i32, i32 }
%struct.resource_map = type { i32*, i64, i64, i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@X86_BUS_SPACE_IO = common dso_local global i32 0, align 4
@X86_BUS_SPACE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*, %struct.resource_map_request*, %struct.resource_map*)* @nexus_map_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_map_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, %struct.resource_map_request* %4, %struct.resource_map* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.resource_map_request*, align 8
  %13 = alloca %struct.resource_map*, align 8
  %14 = alloca %struct.resource_map_request, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store %struct.resource_map_request* %4, %struct.resource_map_request** %12, align 8
  store %struct.resource_map* %5, %struct.resource_map** %13, align 8
  %18 = load %struct.resource*, %struct.resource** %11, align 8
  %19 = call i32 @rman_get_flags(%struct.resource* %18)
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %7, align 4
  br label %120

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %28 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %25, %25
  br label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %7, align 4
  br label %120

30:                                               ; preds = %27
  %31 = call i32 @resource_init_map_request(%struct.resource_map_request* %14)
  %32 = load %struct.resource_map_request*, %struct.resource_map_request** %12, align 8
  %33 = icmp ne %struct.resource_map_request* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.resource_map_request*, %struct.resource_map_request** %12, align 8
  %36 = load %struct.resource_map_request*, %struct.resource_map_request** %12, align 8
  %37 = getelementptr inbounds %struct.resource_map_request, %struct.resource_map_request* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.resource_map_request, %struct.resource_map_request* %14, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @imin(i32 %38, i32 %40)
  %42 = call i32 @bcopy(%struct.resource_map_request* %35, %struct.resource_map_request* %14, i32 %41)
  br label %43

43:                                               ; preds = %34, %30
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = call i64 @rman_get_start(%struct.resource* %44)
  %46 = getelementptr inbounds %struct.resource_map_request, %struct.resource_map_request* %14, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %45, %47
  store i64 %48, i64* %17, align 8
  %49 = getelementptr inbounds %struct.resource_map_request, %struct.resource_map_request* %14, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.resource*, %struct.resource** %11, align 8
  %54 = call i64 @rman_get_size(%struct.resource* %53)
  store i64 %54, i64* %16, align 8
  br label %58

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.resource_map_request, %struct.resource_map_request* %14, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %16, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %16, align 8
  %61 = add nsw i64 %59, %60
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load %struct.resource*, %struct.resource** %11, align 8
  %65 = call i64 @rman_get_end(%struct.resource* %64)
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %17, align 8
  %69 = load %struct.resource*, %struct.resource** %11, align 8
  %70 = call i64 @rman_get_start(%struct.resource* %69)
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %58
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %7, align 4
  br label %120

74:                                               ; preds = %67
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.resource*, %struct.resource** %11, align 8
  %77 = call i64 @rman_get_end(%struct.resource* %76)
  %78 = icmp sgt i64 %75, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %17, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %74
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %7, align 4
  br label %120

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  switch i32 %86, label %119 [
    i32 129, label %87
    i32 128, label %99
  ]

87:                                               ; preds = %85
  %88 = load i64, i64* %17, align 8
  %89 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %90 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @X86_BUS_SPACE_IO, align 4
  %92 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %93 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %96 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %98 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %119

99:                                               ; preds = %85
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr inbounds %struct.resource_map_request, %struct.resource_map_request* %14, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32* @pmap_mapdev_attr(i64 %100, i64 %101, i32 %103)
  %105 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %106 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %105, i32 0, i32 0
  store i32* %104, i32** %106, align 8
  %107 = load i32, i32* @X86_BUS_SPACE_MEM, align 4
  %108 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %109 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %112 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %114 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = ptrtoint i32* %115 to i64
  %117 = load %struct.resource_map*, %struct.resource_map** %13, align 8
  %118 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %85, %99, %87
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %83, %72, %28, %23
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @resource_init_map_request(%struct.resource_map_request*) #1

declare dso_local i32 @bcopy(%struct.resource_map_request*, %struct.resource_map_request*, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i64 @rman_get_end(%struct.resource*) #1

declare dso_local i32* @pmap_mapdev_attr(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
