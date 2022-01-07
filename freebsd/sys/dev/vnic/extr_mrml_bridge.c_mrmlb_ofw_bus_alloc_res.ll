; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_mrml_bridge.c_mrmlb_ofw_bus_alloc_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_mrml_bridge.c_mrmlb_ofw_bus_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.simplebus_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.mrmlb_ofw_devinfo = type { i32 }
%struct.resource_list_entry = type { i64, i64, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not map resource %#lx-%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i64, i64, i64, i32)* @mrmlb_ofw_bus_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @mrmlb_ofw_bus_alloc_res(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.simplebus_softc*, align 8
  %19 = alloca %struct.mrmlb_ofw_devinfo*, align 8
  %20 = alloca %struct.resource_list_entry*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %15, align 8
  %24 = call i64 @RMAN_IS_DEFAULT_RANGE(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.mrmlb_ofw_devinfo* @device_get_ivars(i32 %27)
  store %struct.mrmlb_ofw_devinfo* %28, %struct.mrmlb_ofw_devinfo** %19, align 8
  %29 = icmp eq %struct.mrmlb_ofw_devinfo* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %173

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SYS_RES_IOPORT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.mrmlb_ofw_devinfo*, %struct.mrmlb_ofw_devinfo** %19, align 8
  %39 = getelementptr inbounds %struct.mrmlb_ofw_devinfo, %struct.mrmlb_ofw_devinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.resource_list_entry* @resource_list_find(i32* %39, i32 %40, i32 %42)
  store %struct.resource_list_entry* %43, %struct.resource_list_entry** %20, align 8
  %44 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %45 = icmp eq %struct.resource_list_entry* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %173

47:                                               ; preds = %37
  %48 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %49 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %14, align 8
  %51 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %52 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %15, align 8
  %54 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %55 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %16, align 8
  br label %57

57:                                               ; preds = %47, %8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.simplebus_softc* @device_get_softc(i32 %58)
  store %struct.simplebus_softc* %59, %struct.simplebus_softc** %18, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @SYS_RES_MEMORY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %163

63:                                               ; preds = %57
  store i32 0, i32* %21, align 4
  br label %64

64:                                               ; preds = %143, %63
  %65 = load i32, i32* %21, align 4
  %66 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %67 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %146

70:                                               ; preds = %64
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %73 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %21, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %71, %79
  br i1 %80, label %81, label %142

81:                                               ; preds = %70
  %82 = load i64, i64* %15, align 8
  %83 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %84 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %92 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %90, %98
  %100 = icmp slt i64 %82, %99
  br i1 %100, label %101, label %142

101:                                              ; preds = %81
  %102 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %103 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %14, align 8
  %112 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %113 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %14, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %14, align 8
  %122 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %123 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %15, align 8
  %131 = sub nsw i64 %130, %129
  store i64 %131, i64* %15, align 8
  %132 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %133 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %15, align 8
  br label %146

142:                                              ; preds = %81, %70
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %21, align 4
  br label %64

146:                                              ; preds = %101, %64
  %147 = load i32, i32* %21, align 4
  %148 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %149 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %154 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load i32, i32* %10, align 4
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %159, i64 %160)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %173

162:                                              ; preds = %152, %146
  br label %163

163:                                              ; preds = %162, %57
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i32, i32* %17, align 4
  %172 = call %struct.resource* @bus_generic_alloc_resource(i32 %164, i32 %165, i32 %166, i32* %167, i64 %168, i64 %169, i64 %170, i32 %171)
  store %struct.resource* %172, %struct.resource** %9, align 8
  br label %173

173:                                              ; preds = %163, %157, %46, %30
  %174 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %174
}

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.mrmlb_ofw_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local %struct.simplebus_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
