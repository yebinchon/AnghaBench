; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_setup_sram_armada.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_setup_sram_armada.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_softc = type { i32, i64, i64, i32, i32 }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i64, i64, i32 }
%struct.simplebus_softc = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"marvell,crypto-srams\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cesa_softc*)* @cesa_setup_sram_armada to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_setup_sram_armada(%struct.cesa_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cesa_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource_list, align 4
  %11 = alloca %struct.resource_list_entry*, align 8
  %12 = alloca %struct.simplebus_softc*, align 8
  %13 = alloca i32, align 4
  store %struct.cesa_softc* %0, %struct.cesa_softc** %3, align 8
  %14 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %19 = bitcast i64* %18 to i8*
  %20 = call i32 @OF_getencprop(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %19, i32 16)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %189

25:                                               ; preds = %1
  %26 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %27 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %189

32:                                               ; preds = %25
  %33 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %34 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @OF_instance_to_package(i64 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @OF_parent(i32 %41)
  %43 = call i32 @device_from_node(i32* null, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %189

48:                                               ; preds = %32
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.simplebus_softc* @device_get_softc(i32 %49)
  store %struct.simplebus_softc* %50, %struct.simplebus_softc** %12, align 8
  %51 = call i32 @resource_list_init(%struct.resource_list* %10)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %55 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %58 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ofw_bus_reg_to_rl(i32 %52, i32 %53, i32 %56, i32 %59, %struct.resource_list* %10)
  %61 = load i32, i32* @SYS_RES_MEMORY, align 4
  %62 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %10, i32 %61, i32 0)
  store %struct.resource_list_entry* %62, %struct.resource_list_entry** %11, align 8
  %63 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %64 = icmp eq %struct.resource_list_entry* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %189

67:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %159, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %71 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %162

74:                                               ; preds = %68
  %75 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %76 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %79 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %77, %85
  br i1 %86, label %87, label %158

87:                                               ; preds = %74
  %88 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %89 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %92 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %100 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %98, %106
  %108 = icmp slt i64 %90, %107
  br i1 %108, label %109, label %158

109:                                              ; preds = %87
  %110 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %111 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %119 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %123 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %131 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %135 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %143 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load %struct.simplebus_softc*, %struct.simplebus_softc** %12, align 8
  %147 = getelementptr inbounds %struct.simplebus_softc, %struct.simplebus_softc* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %155 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %153
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %109, %87, %74
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %68

162:                                              ; preds = %68
  %163 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %164 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %167 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load %struct.resource_list_entry*, %struct.resource_list_entry** %11, align 8
  %169 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %172 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %174 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %177 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @pmap_mapdev(i64 %175, i32 %178)
  store i8* %179, i8** %7, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %162
  %183 = load i32, i32* @ENOMEM, align 4
  store i32 %183, i32* %2, align 4
  br label %189

184:                                              ; preds = %162
  %185 = load i8*, i8** %7, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.cesa_softc*, %struct.cesa_softc** %3, align 8
  %188 = getelementptr inbounds %struct.cesa_softc, %struct.cesa_softc* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %184, %182, %65, %46, %30, %23
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @OF_getencprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_instance_to_package(i64) #1

declare dso_local i32 @device_from_node(i32*, i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local %struct.simplebus_softc* @device_get_softc(i32) #1

declare dso_local i32 @resource_list_init(%struct.resource_list*) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32, i32, i32, i32, %struct.resource_list*) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i8* @pmap_mapdev(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
