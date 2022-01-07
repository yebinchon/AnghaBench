; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwbus.c_ofwbus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwbus.c_ofwbus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ofwbus_softc = type { %struct.rman, %struct.rman }
%struct.rman = type { i32 }
%struct.resource_list_entry = type { i64, i64, i64, %struct.resource* }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"no default resources for rid = %d, type = %d\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64, i32, i32*, i64, i64, i64, i32)* @ofwbus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @ofwbus_alloc_resource(i64 %0, i64 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ofwbus_softc*, align 8
  %19 = alloca %struct.rman*, align 8
  %20 = alloca %struct.resource*, align 8
  %21 = alloca %struct.resource_list_entry*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @RMAN_IS_DEFAULT_RANGE(i64 %24, i64 %25)
  store i32 %26, i32* %22, align 4
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @device_get_parent(i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %23, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call %struct.ofwbus_softc* @device_get_softc(i64 %32)
  store %struct.ofwbus_softc* %33, %struct.ofwbus_softc** %18, align 8
  store %struct.resource_list_entry* null, %struct.resource_list_entry** %21, align 8
  %34 = load i32, i32* %23, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %8
  %37 = load i32, i32* %22, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @BUS_GET_RESOURCE_LIST(i64 %40, i64 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.resource_list_entry* @resource_list_find(i32 %42, i32 %43, i32 %45)
  store %struct.resource_list_entry* %46, %struct.resource_list_entry** %21, align 8
  %47 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %48 = icmp eq %struct.resource_list_entry* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @device_printf(i64 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %149

59:                                               ; preds = %39
  %60 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %61 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %65 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ummax(i64 %63, i64 %66)
  store i64 %67, i64* %16, align 8
  %68 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %69 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add nsw i64 %71, %72
  %74 = sub nsw i64 %73, 1
  %75 = call i64 @ummax(i64 %70, i64 %74)
  store i64 %75, i64* %15, align 8
  br label %76

76:                                               ; preds = %59, %36, %8
  %77 = load i32, i32* %12, align 4
  switch i32 %77, label %84 [
    i32 129, label %78
    i32 128, label %81
  ]

78:                                               ; preds = %76
  %79 = load %struct.ofwbus_softc*, %struct.ofwbus_softc** %18, align 8
  %80 = getelementptr inbounds %struct.ofwbus_softc, %struct.ofwbus_softc* %79, i32 0, i32 1
  store %struct.rman* %80, %struct.rman** %19, align 8
  br label %85

81:                                               ; preds = %76
  %82 = load %struct.ofwbus_softc*, %struct.ofwbus_softc** %18, align 8
  %83 = getelementptr inbounds %struct.ofwbus_softc, %struct.ofwbus_softc* %82, i32 0, i32 0
  store %struct.rman* %83, %struct.rman** %19, align 8
  br label %85

84:                                               ; preds = %76
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %149

85:                                               ; preds = %81, %78
  %86 = load %struct.rman*, %struct.rman** %19, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @RF_ACTIVE, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i64, i64* %11, align 8
  %95 = call %struct.resource* @rman_reserve_resource(%struct.rman* %86, i64 %87, i64 %88, i64 %89, i32 %93, i64 %94)
  store %struct.resource* %95, %struct.resource** %20, align 8
  %96 = load %struct.resource*, %struct.resource** %20, align 8
  %97 = icmp eq %struct.resource* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %149

99:                                               ; preds = %85
  %100 = load %struct.resource*, %struct.resource** %20, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @rman_set_rid(%struct.resource* %100, i32 %102)
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @RF_ACTIVE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.resource*, %struct.resource** %20, align 8
  %114 = call i64 @bus_activate_resource(i64 %109, i32 %110, i32 %112, %struct.resource* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.resource*, %struct.resource** %20, align 8
  %118 = call i32 @rman_release_resource(%struct.resource* %117)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %149

119:                                              ; preds = %108, %99
  %120 = load i32, i32* %23, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %147, label %122

122:                                              ; preds = %119
  %123 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %124 = icmp ne %struct.resource_list_entry* %123, null
  br i1 %124, label %125, label %147

125:                                              ; preds = %122
  %126 = load %struct.resource*, %struct.resource** %20, align 8
  %127 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %128 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %127, i32 0, i32 3
  store %struct.resource* %126, %struct.resource** %128, align 8
  %129 = load %struct.resource*, %struct.resource** %20, align 8
  %130 = call i64 @rman_get_start(%struct.resource* %129)
  %131 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %132 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.resource*, %struct.resource** %20, align 8
  %134 = call i64 @rman_get_end(%struct.resource* %133)
  %135 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %136 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %138 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %141 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = add nsw i64 %143, 1
  %145 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %146 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %125, %122, %119
  %148 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %148, %struct.resource** %9, align 8
  br label %149

149:                                              ; preds = %147, %116, %98, %84, %58
  %150 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %150
}

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.ofwbus_softc* @device_get_softc(i64) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32, i32, i32) #1

declare dso_local i32 @BUS_GET_RESOURCE_LIST(i64, i64) #1

declare dso_local i32 @device_printf(i64, i8*, i32, i32) #1

declare dso_local i64 @ummax(i64, i64) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i64, i64, i64, i32, i64) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i64, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_end(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
