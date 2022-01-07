; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pccard_ivar = type { i32 }
%struct.resource_list_entry = type { %struct.resource* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"WARNING: Resource not reserved by pccard\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64, i32, i32*, i32, i32, i32, i32)* @pccard_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @pccard_alloc_resource(i64 %0, i64 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pccard_ivar*, align 8
  %19 = alloca %struct.resource_list_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.resource*, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %19, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i64 @device_get_parent(i64 %23)
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i64 @RMAN_IS_DEFAULT_RANGE(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load i32, i32* %16, align 4
  %34 = icmp eq i32 %33, 1
  br label %35

35:                                               ; preds = %32, %8
  %36 = phi i1 [ false, %8 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %21, align 4
  store %struct.resource* null, %struct.resource** %22, align 8
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @device_get_parent(i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call %struct.resource* @BUS_ALLOC_RESOURCE(i64 %42, i64 %43, i32 %44, i32* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store %struct.resource* %50, %struct.resource** %9, align 8
  br label %146

51:                                               ; preds = %35
  %52 = load i64, i64* %11, align 8
  %53 = call %struct.pccard_ivar* @device_get_ivars(i64 %52)
  store %struct.pccard_ivar* %53, %struct.pccard_ivar** %18, align 8
  %54 = load %struct.pccard_ivar*, %struct.pccard_ivar** %18, align 8
  %55 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %54, i32 0, i32 0
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.resource_list_entry* @resource_list_find(i32* %55, i32 %56, i32 %58)
  store %struct.resource_list_entry* %59, %struct.resource_list_entry** %19, align 8
  %60 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %61 = icmp eq %struct.resource_list_entry* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load i32, i32* %21, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %146

66:                                               ; preds = %62, %51
  %67 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %68 = icmp eq %struct.resource_list_entry* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %71 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %70, i32 0, i32 0
  %72 = load %struct.resource*, %struct.resource** %71, align 8
  %73 = icmp eq %struct.resource* %72, null
  br i1 %73, label %74, label %111

74:                                               ; preds = %69, %66
  %75 = load i64, i64* %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call %struct.resource* @bus_alloc_resource(i64 %75, i32 %76, i32* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store %struct.resource* %82, %struct.resource** %22, align 8
  %83 = load %struct.resource*, %struct.resource** %22, align 8
  %84 = icmp eq %struct.resource* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %143

86:                                               ; preds = %74
  %87 = load %struct.pccard_ivar*, %struct.pccard_ivar** %18, align 8
  %88 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %87, i32 0, i32 0
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.resource*, %struct.resource** %22, align 8
  %93 = call i32 @rman_get_start(%struct.resource* %92)
  %94 = load %struct.resource*, %struct.resource** %22, align 8
  %95 = call i32 @rman_get_end(%struct.resource* %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @resource_list_add(i32* %88, i32 %89, i32 %91, i32 %93, i32 %95, i32 %96)
  %98 = load %struct.pccard_ivar*, %struct.pccard_ivar** %18, align 8
  %99 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %98, i32 0, i32 0
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.resource_list_entry* @resource_list_find(i32* %99, i32 %100, i32 %102)
  store %struct.resource_list_entry* %103, %struct.resource_list_entry** %19, align 8
  %104 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %105 = icmp ne %struct.resource_list_entry* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %86
  br label %143

107:                                              ; preds = %86
  %108 = load %struct.resource*, %struct.resource** %22, align 8
  %109 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %110 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %109, i32 0, i32 0
  store %struct.resource* %108, %struct.resource** %110, align 8
  br label %111

111:                                              ; preds = %107, %69
  %112 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %113 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %112, i32 0, i32 0
  %114 = load %struct.resource*, %struct.resource** %113, align 8
  %115 = call i64 @rman_get_device(%struct.resource* %114)
  %116 = load i64, i64* %10, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %146

119:                                              ; preds = %111
  %120 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %121 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %120, i32 0, i32 0
  %122 = load %struct.resource*, %struct.resource** %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @rman_set_device(%struct.resource* %122, i64 %123)
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @RF_ACTIVE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %119
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %136 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %135, i32 0, i32 0
  %137 = load %struct.resource*, %struct.resource** %136, align 8
  %138 = call i32 @BUS_ACTIVATE_RESOURCE(i64 %130, i64 %131, i32 %132, i32 %134, %struct.resource* %137)
  br label %139

139:                                              ; preds = %129, %119
  %140 = load %struct.resource_list_entry*, %struct.resource_list_entry** %19, align 8
  %141 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %140, i32 0, i32 0
  %142 = load %struct.resource*, %struct.resource** %141, align 8
  store %struct.resource* %142, %struct.resource** %9, align 8
  br label %146

143:                                              ; preds = %106, %85
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @device_printf(i64 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %146

146:                                              ; preds = %143, %139, %118, %65, %40
  %147 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %147
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i64, i64, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.pccard_ivar* @device_get_ivars(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local %struct.resource* @bus_alloc_resource(i64, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i64 @rman_get_device(%struct.resource*) #1

declare dso_local i32 @rman_set_device(%struct.resource*, i64) #1

declare dso_local i32 @BUS_ACTIVATE_RESOURCE(i64, i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_printf(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
