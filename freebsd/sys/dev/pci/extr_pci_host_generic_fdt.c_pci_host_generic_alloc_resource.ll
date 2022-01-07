; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_pci_host_generic_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_pci_host_generic_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.generic_pcie_fdt_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.generic_pcie_ofw_devinfo = type { i32 }
%struct.resource_list_entry = type { i64, i64, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@MAX_RANGES_TUPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not map resource %#jx-%#jx\0A\00", align 1
@PCI_RES_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @pci_host_generic_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.generic_pcie_fdt_softc*, align 8
  %19 = alloca %struct.generic_pcie_ofw_devinfo*, align 8
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
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @ofw_bus_get_node(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call %struct.resource* @pci_host_generic_core_alloc_resource(i32 %27, i32 %28, i32 %29, i32* %30, i64 %31, i64 %32, i64 %33, i32 %34)
  store %struct.resource* %35, %struct.resource** %9, align 8
  br label %186

36:                                               ; preds = %8
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.generic_pcie_fdt_softc* @device_get_softc(i32 %37)
  store %struct.generic_pcie_fdt_softc* %38, %struct.generic_pcie_fdt_softc** %18, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = call i64 @RMAN_IS_DEFAULT_RANGE(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.generic_pcie_ofw_devinfo* @device_get_ivars(i32 %44)
  store %struct.generic_pcie_ofw_devinfo* %45, %struct.generic_pcie_ofw_devinfo** %19, align 8
  %46 = icmp eq %struct.generic_pcie_ofw_devinfo* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %186

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @SYS_RES_IOPORT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load %struct.generic_pcie_ofw_devinfo*, %struct.generic_pcie_ofw_devinfo** %19, align 8
  %56 = getelementptr inbounds %struct.generic_pcie_ofw_devinfo, %struct.generic_pcie_ofw_devinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.resource_list_entry* @resource_list_find(i32* %56, i32 %57, i32 %59)
  store %struct.resource_list_entry* %60, %struct.resource_list_entry** %20, align 8
  %61 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %62 = icmp eq %struct.resource_list_entry* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %186

64:                                               ; preds = %54
  %65 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %66 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %14, align 8
  %68 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %69 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %15, align 8
  %71 = load %struct.resource_list_entry*, %struct.resource_list_entry** %20, align 8
  %72 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %16, align 8
  br label %74

74:                                               ; preds = %64, %36
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %176

78:                                               ; preds = %74
  store i32 0, i32* %21, align 4
  br label %79

79:                                               ; preds = %163, %78
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %166

83:                                               ; preds = %79
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %18, align 8
  %86 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %84, %93
  br i1 %94, label %95, label %162

95:                                               ; preds = %83
  %96 = load i64, i64* %15, align 8
  %97 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %18, align 8
  %98 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %18, align 8
  %107 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %105, %114
  %116 = icmp slt i64 %96, %115
  br i1 %116, label %117, label %162

117:                                              ; preds = %95
  %118 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %18, align 8
  %119 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = sub nsw i64 %127, %126
  store i64 %128, i64* %14, align 8
  %129 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %18, align 8
  %130 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %14, align 8
  %140 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %18, align 8
  %141 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %15, align 8
  %150 = sub nsw i64 %149, %148
  store i64 %150, i64* %15, align 8
  %151 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %18, align 8
  %152 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* %21, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %15, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %15, align 8
  br label %166

162:                                              ; preds = %95, %83
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %21, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %21, align 4
  br label %79

166:                                              ; preds = %117, %79
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %15, align 8
  %174 = call i32 @device_printf(i32 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %172, i64 %173)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %186

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175, %74
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* %16, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call %struct.resource* @bus_generic_alloc_resource(i32 %177, i32 %178, i32 %179, i32* %180, i64 %181, i64 %182, i64 %183, i32 %184)
  store %struct.resource* %185, %struct.resource** %9, align 8
  br label %186

186:                                              ; preds = %176, %170, %63, %47, %26
  %187 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %187
}

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local %struct.resource* @pci_host_generic_core_alloc_resource(i32, i32, i32, i32*, i64, i64, i64, i32) #1

declare dso_local %struct.generic_pcie_fdt_softc* @device_get_softc(i32) #1

declare dso_local i64 @RMAN_IS_DEFAULT_RANGE(i64, i64) #1

declare dso_local %struct.generic_pcie_ofw_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local %struct.resource* @bus_generic_alloc_resource(i32, i32, i32, i32*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
