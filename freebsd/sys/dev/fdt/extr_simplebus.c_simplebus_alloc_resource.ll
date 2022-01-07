; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simplebus.c_simplebus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.simplebus_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.simplebus_devinfo = type { i32 }
%struct.resource_list_entry = type { i64, i64, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"no default resources for rid = %d, type = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not map resource %#jx-%#jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i64, i64, i64, i32)* @simplebus_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @simplebus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
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
  %19 = alloca %struct.simplebus_devinfo*, align 8
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
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.simplebus_softc* @device_get_softc(i32 %22)
  store %struct.simplebus_softc* %23, %struct.simplebus_softc** %18, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i64 @RMAN_IS_DEFAULT_RANGE(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.simplebus_devinfo* @device_get_ivars(i32 %29)
  store %struct.simplebus_devinfo* %30, %struct.simplebus_devinfo** %19, align 8
  %31 = icmp eq %struct.simplebus_devinfo* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %188

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @SYS_RES_IOPORT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load %struct.simplebus_devinfo*, %struct.simplebus_devinfo** %19, align 8
  %41 = getelementptr inbounds %struct.simplebus_devinfo, %struct.simplebus_devinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.resource_list_entry* @resource_list_find(i32* %41, i32 %42, i32 %44)
  store %struct.resource_list_entry* %45, %struct.resource_list_entry** %20, align 8
  %46 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %47 = icmp eq %struct.resource_list_entry* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load i64, i64* @bootverbose, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %57)
  br label %59

59:                                               ; preds = %51, %48
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %188

60:                                               ; preds = %39
  %61 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %62 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %14, align 8
  %64 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %65 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %15, align 8
  %67 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %68 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %16, align 8
  br label %70

70:                                               ; preds = %60, %8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @SYS_RES_MEMORY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %178

74:                                               ; preds = %70
  store i32 0, i32* %21, align 4
  br label %75

75:                                               ; preds = %154, %74
  %76 = load i32, i32* %21, align 4
  %77 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %78 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %157

81:                                               ; preds = %75
  %82 = load i64, i64* %14, align 8
  %83 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %84 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %82, %90
  br i1 %91, label %92, label %153

92:                                               ; preds = %81
  %93 = load i64, i64* %15, align 8
  %94 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %95 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %21, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %103 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %101, %109
  %111 = icmp slt i64 %93, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %92
  %113 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %114 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = sub nsw i64 %121, %120
  store i64 %122, i64* %14, align 8
  %123 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %124 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %14, align 8
  %133 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %134 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %21, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %15, align 8
  %142 = sub nsw i64 %141, %140
  store i64 %142, i64* %15, align 8
  %143 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %144 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %21, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %15, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %15, align 8
  br label %157

153:                                              ; preds = %92, %81
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %21, align 4
  br label %75

157:                                              ; preds = %112, %75
  %158 = load i32, i32* %21, align 4
  %159 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %160 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load %struct.simplebus_softc*, %struct.simplebus_softc** %18, align 8
  %165 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i64, i64* @bootverbose, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* %10, align 4
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @device_printf(i32 %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %173, i64 %174)
  br label %176

176:                                              ; preds = %171, %168
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %188

177:                                              ; preds = %163, %157
  br label %178

178:                                              ; preds = %177, %70
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i64, i64* %14, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %16, align 8
  %186 = load i32, i32* %17, align 4
  %187 = call %struct.resource* @bus_generic_alloc_resource(i32 %179, i32 %180, i32 %181, i32* %182, i64 %183, i64 %184, i64 %185, i32 %186)
  store %struct.resource* %187, %struct.resource** %9, align 8
  br label %188

188:                                              ; preds = %178, %176, %59, %32
  %189 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %189
}

declare dso_local %struct.simplebus_softc* @device_get_softc(i32) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.simplebus_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
