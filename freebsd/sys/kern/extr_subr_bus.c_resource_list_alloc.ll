; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32, %struct.resource*, i64, i64, i64 }

@RLE_RESERVED = common dso_local global i32 0, align 4
@RLE_ALLOCATED = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"resource entry %#x type %d for child %s is busy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @resource_list_alloc(%struct.resource_list* %0, i64 %1, i64 %2, i32 %3, i32* %4, i64 %5, i64 %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.resource_list*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.resource_list_entry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.resource_list* %0, %struct.resource_list** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %20, align 8
  %23 = load i64, i64* %13, align 8
  %24 = call i64 @device_get_parent(i64 %23)
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %21, align 4
  %28 = load i64, i64* %16, align 8
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @RMAN_IS_DEFAULT_RANGE(i64 %28, i64 %29)
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %21, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %9
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @device_get_parent(i64 %34)
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* %18, align 8
  %42 = load i32, i32* %19, align 4
  %43 = call %struct.resource* @BUS_ALLOC_RESOURCE(i64 %35, i64 %36, i32 %37, i32* %38, i64 %39, i64 %40, i64 %41, i32 %42)
  store %struct.resource* %43, %struct.resource** %10, align 8
  br label %163

44:                                               ; preds = %9
  %45 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %45, i32 %46, i32 %48)
  store %struct.resource_list_entry* %49, %struct.resource_list_entry** %20, align 8
  %50 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %51 = icmp ne %struct.resource_list_entry* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store %struct.resource* null, %struct.resource** %10, align 8
  br label %163

53:                                               ; preds = %44
  %54 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %55 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %54, i32 0, i32 1
  %56 = load %struct.resource*, %struct.resource** %55, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %58, label %106

58:                                               ; preds = %53
  %59 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %60 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @RLE_RESERVED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %58
  %66 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %67 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RLE_ALLOCATED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store %struct.resource* null, %struct.resource** %10, align 8
  br label %163

73:                                               ; preds = %65
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @RF_ACTIVE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %84 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %83, i32 0, i32 1
  %85 = load %struct.resource*, %struct.resource** %84, align 8
  %86 = call i64 @bus_activate_resource(i64 %79, i32 %80, i32 %82, %struct.resource* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store %struct.resource* null, %struct.resource** %10, align 8
  br label %163

89:                                               ; preds = %78, %73
  %90 = load i32, i32* @RLE_ALLOCATED, align 4
  %91 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %92 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %96 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %95, i32 0, i32 1
  %97 = load %struct.resource*, %struct.resource** %96, align 8
  store %struct.resource* %97, %struct.resource** %10, align 8
  br label %163

98:                                               ; preds = %58
  %99 = load i64, i64* %12, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @device_get_nameunit(i64 %103)
  %105 = call i32 @device_printf(i64 %99, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i32 %104)
  store %struct.resource* null, %struct.resource** %10, align 8
  br label %163

106:                                              ; preds = %53
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %111 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %16, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %115 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @ulmax(i64 %113, i64 %116)
  store i64 %117, i64* %18, align 8
  %118 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %119 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %16, align 8
  %122 = load i64, i64* %18, align 8
  %123 = add nsw i64 %121, %122
  %124 = sub nsw i64 %123, 1
  %125 = call i64 @ulmax(i64 %120, i64 %124)
  store i64 %125, i64* %17, align 8
  br label %126

126:                                              ; preds = %109, %106
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @device_get_parent(i64 %127)
  %129 = load i64, i64* %13, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* %17, align 8
  %134 = load i64, i64* %18, align 8
  %135 = load i32, i32* %19, align 4
  %136 = call %struct.resource* @BUS_ALLOC_RESOURCE(i64 %128, i64 %129, i32 %130, i32* %131, i64 %132, i64 %133, i64 %134, i32 %135)
  %137 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %138 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %137, i32 0, i32 1
  store %struct.resource* %136, %struct.resource** %138, align 8
  %139 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %140 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %139, i32 0, i32 1
  %141 = load %struct.resource*, %struct.resource** %140, align 8
  %142 = icmp ne %struct.resource* %141, null
  br i1 %142, label %143, label %159

143:                                              ; preds = %126
  %144 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %145 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %144, i32 0, i32 1
  %146 = load %struct.resource*, %struct.resource** %145, align 8
  %147 = call i64 @rman_get_start(%struct.resource* %146)
  %148 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %149 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  %150 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %151 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %150, i32 0, i32 1
  %152 = load %struct.resource*, %struct.resource** %151, align 8
  %153 = call i64 @rman_get_end(%struct.resource* %152)
  %154 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %155 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %18, align 8
  %157 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %158 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %143, %126
  %160 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %161 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %160, i32 0, i32 1
  %162 = load %struct.resource*, %struct.resource** %161, align 8
  store %struct.resource* %162, %struct.resource** %10, align 8
  br label %163

163:                                              ; preds = %159, %98, %89, %88, %72, %52, %33
  %164 = load %struct.resource*, %struct.resource** %10, align 8
  ret %struct.resource* %164
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i64, i64, i32, i32*, i64, i64, i64, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i64 @bus_activate_resource(i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_printf(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i64 @ulmax(i64, i64) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_end(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
